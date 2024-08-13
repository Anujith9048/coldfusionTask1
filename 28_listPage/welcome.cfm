<!DOCTYPE html>
<cfoutput>

<cfif session.isLog>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
    </head>
    <body>
        <form action="" method="post">
            <div class="row m-0 p-0">
                <div class="col-12 mx-auto bg-success py-1 d-flex">
                    <h3 class="p-3 mb-0 text-white text-center mx-auto fw-bolder">Welcome 
                        <span class="text-success bg-white p-3 rounded">#session.name#</span></h3>
                </div>
                <button name="logout" class="text-white mt-4 border-0 mx-auto bg-success rounded fw-bold px-3 py-2 col-1">
                    Log Out</button>
            </div>
        </form>
    </body>
    </html>
    </html>

    <cfif structKeyExists(form, "logout")>
        <cfset local.obj = createObject("component","components.controller")>
        <cfset local.result = local.obj.logOut()>
    </cfif>
<cfelse>
    <cflocation  url="http://127.0.0.1:8500/TASK/coldfusionTask1/27_login/login.cfm">
</cfif>
</cfoutput>