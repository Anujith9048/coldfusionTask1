<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Count Text</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/jquery.js"></script>
  <script src="script/script.js"></script>
</head>
<body class="p-5">
  <form class="col-5 mx-auto border border-1 p-3 mt-5 rounded" action="" method="post">
    <h3>Count the <span class="text-muted">words</span></h3>
    <button type="submit" class="border border-0 py-2 rounded btn-success mt-2 col-12" name="submit">Submit</button>
    <a href="first.cfm" class="text-center">Go back</a>
  </form>

  <div class="col-5 mx-auto mt-3">
  <table class="table table-striped mx-auto">
  <cfif structKeyExists(form , "submit")>
    <cfset local.obj = createObject("component","components.tagCloud")>
    <cfset local.result = local.obj.countText()>

    <cfloop collection="#local.result#" item="word">
      <tr>
        <td class="ms-5">#word# #local.result[word]#</td>
      </tr>
  </cfloop>

  </cfif>
</table>
</div>
</body>
</html>
</cfoutput>
