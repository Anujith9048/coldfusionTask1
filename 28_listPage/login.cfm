<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
</head>
<body class="p-5">
  <div class="row">
    <form action="" method="post" class="col-5 mx-auto p-3 rounded border border-1">
      <div class="img-container col-12 d-flex justify-content-center">
        <img class="rounded-circle" width="60" height="60" src="assets/logo2.jpg" alt="">
      </div>
      <h3 class="fw-bolder text-center">Login to <span class="text-primary">Account</span></h3>
      <div class="input-group  mt-4">
        <input type="text" name="username" class="form-control" placeholder="Email" aria-label="Recipient's username" aria-describedby="basic-addon2">
        <span class="input-group-text" id="basic-addon2">@gmail.com</span>
      </div>    
      <p class="form-text">You can enter email without @gmail.com</p>
      <div class="input-group mb-3 mt-4">
        <input type="password" name="password" class="form-control" placeholder="Password" aria-label="password" aria-describedby="basic-addon2">
      </div>  
      <input type="submit" class="btn btn-primary w-100" name="login" value="Login">
      <div class="log-btn text-center mt-3">
        <a href="signup.cfm" class="text-success text-decoration-none fw-bold">Create new Account 
          <span class="text-dark fw-normal"> as user, Admin, Editor</span></a> 
      </div>
    </form>
    <cfif structKeyExists(form, "login")>
      <cfset local.obj = createObject("component","components.controller")>
      <cfset name = #form.username# &'@gmail.com'>
      <cfset local.result = local.obj.login(name, form.password)>
  
      <p class="#local.result.class# text-center">#local.result.text#</p>
    </cfif>
  </div>
</body>
</html>
</cfoutput>

