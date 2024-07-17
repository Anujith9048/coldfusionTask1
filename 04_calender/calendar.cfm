<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendar</title>
    <link rel="stylesheet" href="style/style.css">
    
</head>
<body>
    <h2>Calendar</h2>
    <cfset calenObj = createObject("component", "components.calendar")>
    <cfset currentDate = calenObj.getCurrentDate()>
    <cfset lastFiveDays = calenObj.getLastFiveDays()>

    <cfoutput>
        <p>Today's date: #currentDate.date#</p>
        <p>Current Month in numeric: #currentDate.monthN#</p>
        <p>Current month in words: #currentDate.month#</p>
        <p>Last Day: #currentDate.lastDay#</p>
        <p>Last Friday: #currentDate.lastFriday#</p>

        <h3>Last 5 Days:</h3>
        <cfloop array="#lastFiveDays#" index="day">
            <p class="#day.dayClass#">#day.date# - #day.dayName#</p>
        </cfloop>
    </cfoutput>
</body>
</html>

