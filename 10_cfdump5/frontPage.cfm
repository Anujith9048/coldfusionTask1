<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Structure</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>

    <cfset result = "">
    <form action="frontPage.cfm" method="post">
        <input type="text" name="key" id="text1" placeholder="Enter the Key">
        <input type="text" name="value" id="text2" placeholder="Enter the Value">
        <input type="submit" value="submit" name="submit">
    </form>

    <cfparam  name="application.structure3" default="#structNew("ordered", "text")#">

    <cfif structKeyExists(form, "key") and structKeyExists(form, "value")>
        <cfset structobj = createObject("component","components.controller")>
        <cfset result = structObj.structOperation(form.key , form.value ,application.structure3)>
    </cfif> 
    <cfdump  var="#application.structure3#">   
</body>
</html>
