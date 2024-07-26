<cfoutput>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colorize</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="script/script.js"></script>
  </head>
  <body>
    <form action="frontpage.cfm" method="post" class="col-4 ms-auto me-auto">
      <input type="submit" value="Submit" name="submit" class="form-control btn-primary mt-5">
    </form>  
  <cfset local.result="">
    <cfif structKeyExists(form, "submit")>
      <cfset local.obj = createObject("component","components.controller")>
      <cfset local.result = local.obj.cookie()>
      <p class="text-center">Visits Counter: #local.result#</p>
    </cfif>
  </body>
  </html>
  </cfoutput>
  