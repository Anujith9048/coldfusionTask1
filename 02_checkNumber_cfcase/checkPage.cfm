<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="checkPage.cfm" method="post">
        <input type="text" name="num" id="num" placeholder="Enter the number">
        <input type="submit" value="Submit">
    </form>

    <cfif structKeyExists(form,"num")>
        <cfset num = inputBaseN(form.num,10)>
        <cfset checkObj = createObject("component","components.check")>
        <cfset result = checkObj.checkNumber(num)>
    </cfif>
</body>
</html>