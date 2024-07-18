<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>multiply</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <cfset structobj = createObject("component","components.multiply")>
    <cfset result = structObj.multiply(1)>
    <p><cfoutput>#result#</cfoutput></p>

    <cfset result = structObj.multiply(1,2)>
    <p><cfoutput>#result#</cfoutput></p>

    <cfset result = structObj.multiply(1,2,3)>
    <p><cfoutput>#result#</cfoutput></p>


</body>
</html>
