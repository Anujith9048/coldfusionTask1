<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="index.cfm" method="post">
        <input type="text" name="num" id="num" placeholder="Enter the number">
        <input type="submit" value="Submit">
    </form>

    <cfif structKeyExists(form,"num")>
        <cfset num = inputBaseN(form.num,10)>
        <cfinvoke component="components.check" method="checkNumber" returnvariable="result">
            <cfinvokeargument name="num" value="#num#">
        </cfinvoke>
    </cfif>
</body>
</html>