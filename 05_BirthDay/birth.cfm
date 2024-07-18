<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Birthday</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <cfoutput>
    <cfset birthComponent = createObject("component", "components/birth")>
    <cfset result = "">
    

    <form action="birth.cfm" method="post">
        <input type="text" placeholder="Enter Your DOB" name="userDOB">
        <input type="text" placeholder="Enter Mother's DOB" name="motherDOB">
        <input type="submit" value="Submit" name="submit">
    </form>

    <cfif structKeyExists(form, "userDOB") and structKeyExists(form, "motherDoB")>
        <cfset result = birthComponent.dateOfBirth(form.userDOB , form.motherDOB)>
    </cfif>

        <p>#result#</p>
    </cfoutput>
</body>
</html>
