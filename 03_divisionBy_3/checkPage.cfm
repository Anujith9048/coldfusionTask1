<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Divisible by three</title>
</head>
<body>
    <form action="checkPage.cfm" method="post">
        <input type="text" name="num" id="num" placeholder="Enter the numbers separated by commas">
        <input type="submit" value="Submit">
    </form>

    <cfset result="">

    <cfif structKeyExists(form,"num")>
        <cfset checkObj = createObject("component","components.check")>
        <cfset result = checkObj.checkNumber(num)>
    </cfif>
    <p><cfoutput>#result#</cfoutput></p>
</body>
</html>