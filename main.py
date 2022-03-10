#! /usr/bin/python

# import dependencies
import mariadb
import sys
import requests
import json
from datetime import datetime
import pytz

# load api
url = 'http://api.openweathermap.org/data/2.5/weather?'
api_key = '<api key>'
city = 'Tokyo'

req_url = url + "appid=" + api_key + "&q=" + city

response = requests.get(req_url).json()
print(response)

# handle timezone conversion
IST = pytz.timezone('Asia/Tokyo')
datetime_ist = datetime.now(IST)

today = datetime_ist.strftime('%Y:%m:%d %H:%M:%S %Z %z')
date = "'" + today.split(' ')[0] + "'"
time = "'" + today.split(' ')[1] + "'"

if response["cod"] != "404":
    print(response.keys())
    main = response["main"]

    current_temp = str(main["temp"])
    current_pressure = str(main["pressure"])
    current_humidity = str(main["humidity"])

    pre_desc = response["weather"]
    current_description = str(pre_desc[0]["description"])

print(current_description)

# connect to database
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

cur.execute(
    "INSERT INTO weather_log(date, time, temperature, pressure, humidity, description) VALUES("
    + date + "," + time + "," + current_temp + "," + current_pressure + "," + current_humidity +
    ", '" + current_description + "' );")

print(f"{cur.rowcount} details inserted")
conn.commit()
conn.close()
