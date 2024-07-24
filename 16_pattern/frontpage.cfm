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
    <cfobject  name="patternObj" component="components.pattern">
    <cfset result="">
    <cfinvoke component="#patternObj#" method="printPattern" returnvariable="result">
        <cfset local.numberList = "1,4,7,2,5,8,3,6,9">
        <cfinvokeargument name="num" value="#local.numberList#" />
        <p>#result#</p>
    </cfinvoke>
</body>
</html>
</cfoutput>
