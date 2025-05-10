* Project: An Econometric Analysis of Consumption Drivers in Croatia (1990–2023)
* Author: Your Name
* Date: May 2025

* Set working directory (change this to your folder path)
cd "C:\Users\YourName\Documents\stata_project"

* Load data
import delimited croatia_macro.csv, clear

* Inspect data
describe
summarize

* Generate variables 
* Example: generate LnCONSUMPTION = ln(consumption) 

* Check stationarity
dfuller consumption
dfuller export
dfuller gdp
dfuller taxes
dfuller import

* Run regression model
regress consumption export gdp taxes import

* Graph example: Plot consumption vs exports
twoway (tsline consumption export)

* End of script
