<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoHub|AdminList</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
</head>
<body class="text-light">
  <cfinclude template="navbar.cfm">


   <div class="col-6 mx-auto mt-5 bg-dark p-3 rounded">
    <table class="table table-dark table-hover">
        <thead>
          <tr class="text-light">
            <th scope="col">Title</th>
            <th scope="col">Description</th>
          </tr>
        </thead>
        <tbody>
          <tr class="text-light">
            <td>Java</td>
            <td>Welcome to java</td>
          </tr>
        </tbody>
    </table>
   </div>

   <cfif structKeyExists(form, 'submit')>
    <cflocation  url="dataAction.cfm">
   </cfif>
</body>
</html>
</cfoutput>