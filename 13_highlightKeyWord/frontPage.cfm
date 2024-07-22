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
        <label for="keyword">Key word:</label>
        <input type="text" name="key" id="key" placeholder="Enter the key word">
        <input type="submit" value="Submit">
    </form>
    <cfset local.count=0>
    <cfif structKeyExists(form, "key")>
        <cfset local.key = form.key>
        <cfset componentObj = createObject("component","components.controller")>
        <cfset local.count = componentObj.highlight(key)>
        <p>Found the key word in #local.count# time</p>
    </cfif>
    
</cfoutput>
</body>
</html>