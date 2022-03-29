## Description

The ``main.py`` script is designed to run repetitively, and logs the hourly weather in Tokyo to a
local MariaDB database.
The ``predictor.py`` script, when run, reads in the hourly Temperature data
for the given month, compiles the hourly datasets into daily averages,
then uses linear regression to predict the future Temperature in Tokyo for a
specified number of days past the last day recorded.

Both scripts require a [MariaDB](https://mariadb.com/get-started-with-mariadb/) server to be running locally on the user's computer. 

## Usage

To schedule the main script to run hourly, run the following commands in the terminal:
```
chmod +x main.py
sudo crontab -e
```

Then, add the main script to the job editor:

```
0 * * * * <path to file>/main.py
```

When sufficient data has been collected, run the predictor to perform the
regression on the month's data.

```
python predictor.py
```

## Example Output:
<p align="center">
  <img src="https://github.com/rp-mullen/tokyo-weather/blob/main/output.png"/>
</p>

### Terminal Output: 

```
             Statistics                
---------------------------------------
* data range (days): [10] - [29]
* determination coefficient: 0.14006052323794294
* intercept: 290.73668581406156
* coefficient: [-0.29955424]

```
