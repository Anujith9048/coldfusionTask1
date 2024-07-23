<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL</title>
</head>
<body>
    <cfoutput>
    <form action="frontPage.cfm" method="post">
        <input type="text" name="number" id="num" placeholder="Number (1-10)">
        <input type="submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "number") and form.number GT 0 and form.number LT 11> 
        <cfset local.number = form.number>
   
        <cfset componentObj = createObject("component","components.controller")>
        <cfset resultNames = componentObj.printName(local.number)>
        <h2>Full Table</h2><br>
        <p>#resultNames.fullNames#</p>

        <h2><cfoutput>Name in #number#th row</cfoutput></h2><br>
        <p>#resultNames.nthName#</p>

        <cfelse> 
        <p>Enter number between 1-10</p> 

    </cfif>
</cfoutput>
</body>
</html>