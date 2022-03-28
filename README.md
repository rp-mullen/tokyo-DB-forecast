### Description

The main script is designed to run repetitively, and logs the hourly weather in Tokyo to a
local MariaDB database.
The predictor script, when run, reads in the hourly Temperature data
for the given month, compiles the hourly datasets into daily averages,
then uses linear regression to predict the future Temperature in Tokyo for a
specified number of days past the last day recorded.

To Run:
``
chmod +x main.py
sudo crontab -e
``

Then:
``
0 * * * * <path to file>/main.py
``

To run the predictor:
``
python predictor.py
``
