<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>colorize</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="script/script.js"></script>
</head>

<body>
    <form class="col-5 ms-auto me-auto mt-5 " action="" method="post">
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Image</label>
        <input type="text" class="form-control" id="number" name="number">
        <small class="text-danger" id="helpId"></small>
      </div>
      <input type="submit" class="btn btn-primary w-100" name="submit" value="Submit" onClick="validate()">
    </form>



  <cfset local.result=[]>
  <cfif structKeyExists(form, "submit" )>
    <cfset fileProcessor  = createObject("component","components.pattern")>
    <cfset local.result = fileProcessor.oddEven(form.number)>
    <cfset number=form.number>

    <cfloop from="1" to="#number#" index="i">
        <p class="#local.result[i].className# fw-bold text-center mt-4 fs-3">#local.result[i].num#</p>
    </cfloop>
  </cfif>

</body>
</html>
</cfoutput>
