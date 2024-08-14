<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
  <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <cfinclude template="navbar.cfm">


    <h2 class="text-light mx-auto fw-bold mt-5 col-5 text-center">Here you can <span class="text-primary">Add data</span></h2>
    <div class="col-5 mx-auto  bg-dark p-3 py-5 rounded" >
        <form action="" class="text-light" method="post">
            
            <div class="form-floating mb-3">
                <input type="text" class="form-control bg-dark text-white" id="floatingInput" placeholder="" name="title">
                <label for="floatingInput">Title</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" class="form-control bg-dark text-white" id="floatingInput" placeholder="" name="description">
                <label for="floatingInput">Description</label>
              </div>
              <input class="btn btn-primary mx-auto" type="submit" value="Add data" name="submit">
        </form>
    </div>

    <cfif structKeyExists(form, "submit")>
        <cfset local.obj = createObject("component","components.controller")>
        <cfset local.result = local.obj.addData(form.title, form.description)>
        <p class="text-center text-success">#local.result#</p>
    </cfif>
</body>
</html>
</cfoutput>