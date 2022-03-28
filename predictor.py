import mariadb
import numpy as np
import matplotlib.pyplot as plt
import pytz
from datetime import datetime
from sklearn.linear_model import LinearRegression

# DB connection
try:
    conn = mariadb.connect(
        user = "<user>",
        password = "<password>",
        host = "localhost",
        port = 3306,
        database = "tokyo_weather"
    )
except mariadb.Error as e:
    print("Error connecting to MariaDB platform")
    sys.exit(1)

cur = conn.cursor()

# get date
IST = pytz.timezone('Asia/Tokyo')
datetime_ist = datetime.now(IST)

today = datetime_ist.strftime('%Y:%m:%d %H:%M:%S %Z %z')
date = "'" + today.split(' ')[0] + "'"

month = date.split(":")[1]

# query DB
cur.execute(
    "SELECT date, temperature FROM weather_log WHERE date LIKE " + " '%:" + month + ":%';")

#data formatting
time_data = []
temperature_data = []

for temp in cur:
    time_data.append(int(temp[0].split(":")[2]))
    temperature_data.append(temp[1])
time_data = np.array(time_data)
temperature_data = np.array(temperature_data)

#find average temperatures for each distinct day
t_curr = time_data[0]
index = 0
count = 1

avgs = []
avgs.append(temperature_data[0])

times = []
times.append(t_curr)

for i in range(1,len(time_data)):

    if time_data[i] == t_curr:
        avgs[index] += temperature_data[i]
        count += 1

    else:
        # calculate average for last day
        avgs[index] = avgs[index]/count
        index += 1

        # update/reset values for new day
        t_curr = time_data[i]
        times.append(t_curr)

        avgs.append(temperature_data[i])
        count = 1
avgs[index] = avgs[index]/count

# format for linear regression format

times = np.array(times).reshape((-1,1))
avgs = np.array(avgs)

# regression
model = LinearRegression()
model.fit(times,avgs)

r_sq = model.score(times, avgs)
b0 = model.intercept_
b1 = model.coef_

print('             Statistics                ')
print('---------------------------------------')
print('* data range (days): ' + str(times[0]) + ' - ' + str(times[-1]))
print('* determination coefficient:',r_sq)
print('* intercept:', b0)
print('* coefficient:',b1)

# extrapolate
last_day = times[-1]
n = 15
t = np.linspace(last_day + 1,last_day + n,n)

T_hat = b0 + t*b1

t = np.linspace(1,n,n)

span = str(times[-1] - times[0])

plt.subplot(2,1,1)
plt.title('Tokyo Weather Prediction: Last ' + span + ' Days')
plt.xlabel('t (days)')
plt.ylabel('T (K, Running Average)')
plt.scatter(times,avgs,s=20,color='red')

plt.subplot(2,1,2)
plt.ylabel('T (K, Days Since Last Rec. Day)')
plt.plot(t,T_hat,color='red')
plt.show()
