<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>infoVault|EditorList</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style/style.css">
    <link rel="icon" type="image/x-icon" href="assets/logo2.jpg">
    <script src="script/script.js"></script>
</head>
<body class="text-light">
    <cfinclude template="navbar.cfm">
    <cfset local.obj = createObject("component","components.controller")>
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
                        <a href="dataAction.cfm?list=edit&id=#local.result.pageId#" id=""  data-bs-toggle="tooltip" data-bs-placement="top" title="Edit the list"><img src="assets/edit.png" class="img-fluid"  width="25" alt=""></a>
                        <a href="dataAction.cfm?list=delete&id=#local.result.pageId#" id="deleteList"  data-bs-toggle="tooltip" data-bs-placement="top" title="Delete the list"><img src="assets/delete.png" width="20" alt="" onclick="deleteList()"></a>
                </tr>
            </cfloop>   
        </tbody>
    </table>
    <form action="" method="post">
        <input class="btn btn-primary mx-auto" type="submit" value="Add datas" name="submit">
    </form>
   </div>

   <cfif structKeyExists(form, 'submit')>
        <cflocation url="dataAction.cfm?list=add">
   </cfif>
</body>
</html>
</cfoutput>