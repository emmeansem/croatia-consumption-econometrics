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

* Generate variables (optional, if needed)
* Example: generate log_consumption = log(consumption)

* Check stationarity
dfuller consumption
dfuller exports
dfuller gdp
dfuller taxes

* Run regression model
regress consumption exports gdp taxes

* Save regression results
outreg2 using results.doc, replace

* Plot consumption vs exports
twoway (scatter consumption exports), title("Consumption vs Exports (1990–2023)")

* Save graph
graph export consumption_exports.png, replace

* End of script
