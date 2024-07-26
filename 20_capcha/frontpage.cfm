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
  <cfset local.result="">

  <cfset local.obj = createObject("component","components.controller")>
    <cfset local.resultCaptcha = local.obj.capcha()>

    <form action="frontpage.cfm" method="post" class="col-4 ms-auto me-auto mt-2">
      <img src="./assets/#local.resultCaptcha#" class=" mx-auto mt-5 w-5" alt=""><br>
      <label for="number " class="form-text ">Enter the captcha</label>
      <input type="text" name="number" class="form-control mt-2">
      <label for="email " class="form-text ">Enter email id</label>
      <input type="text" name="email" class="form-control mt-2">
      <input type="submit" name="submit" value="Submit" class=" btn-success form-control mt-2">
    </form>

    <cfif structKeyExists(form, "submit")>
      <cfdump var="#form.number# #session.captchaNumber#"> 
      <cfif session.captchaNumber EQ form.number>
        <p class="text-center text-success">Email Address successfully subscribe our newsletter</p>
      <cfelse>
        <p class="text-center text-danger">Incorrect captcha</p>
      </cfif>
      
    </cfif>
  </body>
  </html>
  </cfoutput>
  