# Stock Performance
Reading Data into Tableau and Creating Worksheet 

## Generate the Data in R
Start R, R studio, etc.<br>
paste commands from <b>stocks.R</b> into R command line<br>
make any changes to the sampling rates or file<br>
writes file to <b>abc.csv</b>
Note: this produces 500 orders (with an origination month, trader identity and industry) and generates a percent change after 1 minute, 1 week, etc.<br>

## Connect to data
Open Tableau<br>
Under Connect, select <b>Text File</b><br>
Navigate to & select <b>abc.csv</b><br>
Inspect Data & rename any columns (e.g. Change "Time" to "Time Since Trade")<br>
Select "Go To Worksheet" or click on "Sheet 1"<br>

## Build the Worksheet 
Drag the <b>Change</b> measure to Rows<br>
On the <b>Show Me</b> pop-up, select the <b>Boxplot</b> icon or another appropriate figure type<br>
Drag the <b>Time Since Trade</b> dimension to Columns<br>
Drag the <b>Index</b> measure to Columns<br>
Disaggregate the measures: Analysis > Aggregate Measures (uncheck) <br>
Custom Sort <b>Time Since Trade</b> Dimension: <br>
* Click on Menu on the Time Pill<br> 
* Select Sort > Manual: Move measures up & down until it shows month, week, day, minute<br>
* Click OK

## Add flair to the worksheet



