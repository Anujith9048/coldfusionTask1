<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Upload file</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
</head>
<body class="p-5">
  <form class="col-5 mx-auto border border-1 p-3 mt-5 rounded" action="" method="post" enctype="multipart/form-data">
    <h3 class="input-label">Upload the <span class="text-muted">File</span> </h3>
    <input type="file" name="file" id="file" class="form-control">
    <button class="border border-0 py-2 rounded-start btn-success mt-2 col-12" name="submit">Submit</button>
  </form>

  <cfif structKeyExists(form , "submit")>
    <cfset local.obj = createObject("component","components.controller")>
    <cfset local.result = local.obj.uploadFile()>
    <p class="text-center text-success">#local.result#<p>
  </cfif>
  </body>
</html>
</cfoutput>

