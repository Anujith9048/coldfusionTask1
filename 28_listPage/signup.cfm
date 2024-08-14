<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
</head>
<body class="p-5">
  <div class="row">
    <form action="" method="post" class="col-5 mx-auto p-3 border border-1 rounded">
      <div class="img-container col-12 d-flex justify-content-center">
        <img class="rounded-circle" width="60" height="60" src="assets/logo2.jpg" alt="">
      </div>

      <h3 class="fw-bolder text-center">Create New <span class="text-success">Account</span></h3>
      <div class="input-group  mt-4">
        <input type="text" id="username" class="form-control" placeholder="Enter username" name="username">
        <span class="input-group-text" id="basic-addon2">username</span>
      </div>


      <div class="input-group mb-3 mt-4">
        <input type="password" id="pass1" class="form-control" placeholder="Password" name="password">
      </div>


      <div class="input-group mb-3 mt-4">
        <input type="password" id="pass2" class="form-control" placeholder="Conform Password" name="cnfmPassword">
      </div> 

      <div class="input-group mb-3">
        <label class="input-group-text" for="inputGroupSelect01">Role</label>
        <select class="form-select" id="role" name="role">
          <option selected>Choose...</option>
          <option value="Admin">Admin</option>
          <option value="Editor">Editor</option>
          <option value="User">User</option>
        </select>
      </div>
      <input type="submit" name="signup" value="Sign up" class="btn btn-success w-100" onclick="validateSignup()">
      <div class="log-btn text-center mt-3">
        <a href="login.cfm " class="text-dark text-decoration-none">Already have an Account?
          <span class="text-primary fw-bold">Login</span> </a> 
      </div>
      <p class="text-danger text-center" id="error"></p>

    </form>
  </div>

  <cfif structKeyExists(form, "signup")>
    <cfset local.obj = createObject("component","components.controller")>
    <cfset local.result = local.obj.signup(form.username, form.password, form.role)>

    <p class="#local.result.class# text-center">#local.result.text#</p>
  </cfif>
</body>
</html>
</cfoutput>

