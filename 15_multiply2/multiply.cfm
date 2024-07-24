<cfoutput>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>multiply</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <cfobject component="components.multiply" name="mathComponent" />
    <cfinvoke component="#mathComponent#" method="multiply" returnvariable="result1">
        <cfset local.argValue = "1">
        <cfinvokeargument name="num" value="#local.argValue#" />
    </cfinvoke>
    <p>multiply(1) = #result1#</p>

    <cfinvoke component="#mathComponent#" method="multiply" returnvariable="result2">
        <cfset local.argValue = "1,2">
        <cfinvokeargument name="num" value="#local.argValue#" />
    </cfinvoke>
    <p>multiply(1,2) = #result2#</p>

    <cfinvoke component="#mathComponent#" method="multiply" returnvariable="result3">
        <cfset local.argValue = "1,2,3">
        <cfinvokeargument name="num" value="#local.argValue#" />
    </cfinvoke>
    <p>multiply(1,2,3) = #result3#</p>
</body>
</html>
</cfoutput>
