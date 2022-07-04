## Description

This app was written as an exercise for automating relational DB data entry and interfacing with python scripts to perform statistical analysis and inference on stored data.

The ``main.py`` script is designed to run repetitively, and logs the hourly weather in Tokyo to a
local MariaDB database.
The ``predictor.py`` script, when run, reads in the hourly Temperature data
for the given month, compiles the hourly datasets into daily averages,
then uses linear regression to predict the future Temperature in Tokyo for a
specified number of days past the last day recorded.

Both scripts require a [MariaDB](https://mariadb.com/get-started-with-mariadb/) server to be running locally on the user's computer. 

## Usage

To schedule the main script to run hourly in a UNIX/Linux environment, cd into the script's directory and run the following commands in the terminal:
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
  <img src="https://github.com/rp-mullen/tokyo-weather/blob/main/output_figure.png"/>
</p>

The top subplot shows the scatterplot of the actual recorded temperature data over the listed span of days. The bottom subplot shows the forecasted temperature for the days following the last day which data was recorded. Note that, as the number of days past the last recorded day increases, the linear regression will become less reliable as a statistical predictor of the city's temperature. 

### Terminal Output: 

```
             Statistics                
---------------------------------------
* data range (days): [10] - [29]
* determination coefficient: 0.14006052323794294
* intercept: 290.73668581406156
* coefficient: [-0.29955424]

```
