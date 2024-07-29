<cfoutput>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Captcha</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <script type="text/javascript" src="script/script.js"></script>
  </head>
  <body>  
      <cfif NOT structKeyExists(session, "captchaNumber") OR NOT structKeyExists(session, "captchaFileName") OR session.captchaFileName == "">
          <cfset local.obj = createObject("component", "components.controller")>
          <cfset local.resultCaptcha = local.obj.generateCaptcha()>
      </cfif>
  
      <form action="frontpage.cfm" method="post" class="col-4 ms-auto me-auto mt-2 ">
          <img src="./assets/#session.captchaFileName#" class="mx-auto mt-5 w-5 shadow" alt="" width="150" height="50"><br>
          <label for="number" class="form-text">Enter the captcha</label>
          <input type="text" name="number" class="form-control mt-2 shadow-sm">
          <label for="email" class="form-text">Enter email id</label>
          <input type="text" name="email" class="form-control mt-2 shadow-sm">
          <input type="submit" name="submit" value="Submit" class="btn-success form-control mt-2 shadow">
      <cfif structKeyExists(form, "number") and structKeyExists(form, "email")>
        <cfif form.number EQ "">
          <p class="text-center text-danger alert alert-warning mt-3">Enter email and captcha!</p>
          <cfreturn>
        </cfif>
        <cfset local.obj = createObject("component", "components.controller")>
        <cfset local.validate = local.obj.validateCaptcha(form.number , form.email)>
        <p class="#local.validate.class# mt-3">#local.validate.text#</p>
      </cfif>
    </form>

  </body>
  </html>
  </cfoutput>
  