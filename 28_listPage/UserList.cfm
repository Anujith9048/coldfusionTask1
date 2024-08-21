<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoVault|UserList</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <link rel="icon" type="image/x-icon" href="assets/logo2.jpg">
</head>
<body class="text-light">
  <cfset local.obj = createObject("component","components.controller")>
  <cfinclude template="navbar.cfm">


   <div class="col-6 mx-auto mt-5 bg-dark p-3 rounded">
    <table class="table table-dark table-hover">
        <thead>
          <tr class="text-light">
            <th scope="col">Title</th>
          </tr>
        </thead>
        <tbody>
          <cfset local.result = local.obj.getData()>
          <cfloop query="#local.result#">
              <tr class="text-light">
                  <td><a href="UserListView.cfm?&id=#local.result.pageId#" class="fw-bold fs-5">#local.result.title#</a></td>
              </tr>
          </cfloop>
      </tbody>
    </table>
   </div>

   <cfif structKeyExists(form, 'submit')>
    <cflocation  url="dataAction.cfm">
   </cfif>
</body>
</html>
</cfoutput>