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
    <cfset local.obj = createObject("component","components.controller")>
    <cfinclude template="navbar.cfm">

   <div class="col-6 mx-auto mt-5 bg-dark p-3 rounded">
    <table class="table table-dark table-hover">
        <thead>
          <tr class="text-light">
            <th scope="col">Title</th>
            <th scope="col">Description</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
            <cfset local.result = local.obj.getData()>
            <cfloop query="#local.result#">
                <tr class="text-light">
                    <td>#local.result.title#</td>
                    <td>#local.result.description#</td>
                    <td>
                        <a href=""></a>
                    </td>
                </tr>
            </cfloop>
        </tbody>
    </table>
    <form action="" method="post">
        <input class="btn btn-primary mx-auto" type="submit" value="Add datas" name="submit">
       </form>
   </div>

   <cfif structKeyExists(form, 'submit')>
    <cflocation  url="dataAction.cfm">
   </cfif>
</body>
</html>
</cfoutput>