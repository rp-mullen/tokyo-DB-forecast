## Description

The ``main.py`` script is designed to run repetitively, and logs the hourly weather in Tokyo to a
local MariaDB database.
The ``predictor.py`` script, when run, reads in the hourly Temperature data
for the given month, compiles the hourly datasets into daily averages,
then uses linear regression to predict the future Temperature in Tokyo for a
specified number of days past the last day recorded.

The scheduled script requires a [MariaDB](https://mariadb.com/get-started-with-mariadb/) server to be running locally on the user's computer. 

## Usage

To Schedule:
```
chmod +x main.py
sudo crontab -e
```

Then, add to the job editor:

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
* data range (days): [10] - [28]
* determination coefficient: 0.15587487339566208
* intercept: 291.5791153369279
* coefficient: [-0.35248383]

```
