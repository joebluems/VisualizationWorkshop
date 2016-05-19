# Stock Performance
Reading Data into Tableau and Creating Worksheet 

## Generate the Data in R
Start R, R studio, etc.<br>
paste commands from <b>stocks.R</b> into R command line<br>
make any changes to the sampling rates or file<br>
writes file to <b>abc.csv</b><br>
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
Drag the edges of the window to fill up the worksheet <br>
Drag the <b>Volume</b> measure to the <b>Size</b> mark<br>
Drag the <b>Trader</b> dimension to the <b>Color</b> mark<br>
In the Marks window, change "Circle" to <b>Shape</b> in pulldown menu - "Shape" should appear as a mark<br>
Drag the <b>Industy</b> dimension to the <b>Shape</b> mark<br>
Add a reference line at 0.0: <br>
* Right click on y-axis (Change)<br>
* Select Entire Table<br>
* Under Line: For Value, select Create New Parameter<br>
* Change Value to 0
* Format the Line (e.g. thickness, color, etc.) & click OK<br>
* Pull down menu on Parameter window, select <b>Edit Parameter</b> and change Name to read "Reference"<br>

## Add finishing touches
Adjust the Y-axis: <br>
* Right-click on axis, Select Format and use format change window to adjust size, font, color, etc.<br>
* Use Scale > Numbers in format menu to change units to Percentage with 0 decimal places <br>

Adjust the <b>Time Since Trade</b> X-axis (increase size to match Y-axis) and for the time labels<br>
Adjust size of points: <br>
* Under <b>Volume</b> pane, click to display menu, select <b>Edit Sizes</b><br>
* Drag the pointer in <b>Mark Size Range</b> to make the points slightly larger, click OK<br>

Fill in the shapes: <br>
* Under <b>Industry</b> pane, click to display menu, select <b>Edit Shape</b><br>
* Under <b>Select Shape Pallete</b>, change Default to Filled<br>
* For the circle and the square labels, select one under <b>Select Data Item</b> then select the corresponding filled figure in the Palette<br>
* Once all have been changed, click OK<br>

Edit the Index X-axis: <br>
* This is superfluous information<br>
* Right-click on axis, select <b>Edit Axis</b><br>
* Under <b>General</b> tab, delete Title<br>
* Under <b>Tick Marks</b> tab, Select <b>None</b> for Major & Minor <br>

## Add a Filter and wrap it up <br>
Drag the <b>Months</b> measure to the Filter Window<br>
Select <b>Range of Values</b>, click OK<br>
Right-click on Sheet to rename sheet to "ABC Investments" or similar<br>
Drag the <b>Reference</b> and <b>Months</b> windows over to the left side and hide any window you're not using<br>
Save it, <b>Export</b> as an image, explore the points, adjust the Months and see how data changes, filter on the fly, etc.<br>





