<!DOCTYPE html>
<cfoutput>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>infoVault|#URL.list#Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="assets/logo2.jpg">
    <link rel="stylesheet" href="style/style.css">
    <script src="script/script.js"></script>
  </head>

  <body>
    <cfset local.obj=createObject("component","components.controller")>
      <cfinclude template="navbar.cfm">
        <cfif URL.list EQ 'edit'>
          <cfset local.values=local.obj.getvalue(url.id)>
            <h2 class="text-light mx-auto fw-bold mt-5 col-5 text-center">Here you can <span class="text-primary">Edit
                data</span></h2>
            <div class="col-5 mx-auto  bg-dark p-3 py-5 rounded">
              <form action="" class="text-light" method="post">

                <div class="form-floating mb-3">
                  <input value="#local.values.title#" id="title" type="text" class="form-control bg-dark text-white"
                     placeholder="" name="title">
                  <label for="floatingInput">Title</label>
                  <p class="text-danger" id="errorTit"></p>
                </div>
                <div class="form-floating mb-3">
                  <input value="#local.values.description#" id="desc" type="text" class="form-control bg-dark text-white"
                     placeholder="" name="description">
                  <label for="floatingInput">Description</label>
                  <p class="text-danger" id="errorDes"></p>
                </div>
                <input id="editSubmit" onclick="editValidate()" class="btn btn-primary mx-auto" type="submit" value="Submit" name="submit">
              </form>
            </div>

            <cfif structKeyExists(form, "submit" )>
              <cfset local.result=local.obj.editData(form.title, form.description, URL.id)>
                <p class="text-center text-success">#local.result#</p>
            </cfif>

          <cfelseif URL.list EQ 'add'>
              <h2 class="text-light mx-auto fw-bold mt-5 col-5 text-center">Here you can <span class="text-primary">Add
                  data</span></h2>
              <div class="col-5 mx-auto  bg-dark p-3 py-5 rounded">
                <form action="" class="text-light" method="post">

                  <div class="form-floating mb-3">
                    <input type="text" class="form-control bg-dark text-white" id="title" placeholder=""
                      name="title">
                    <label for="floatingInput">Title</label>
                    <p  id="errorTit" class="text-danger"></p>
                  </div>
                  <div class="form-floating mb-3">
                    <input type="text" class="form-control bg-dark text-white" id="desc" placeholder=""
                      name="description">
                    <label for="floatingInput">Description</label>
                    <p  id="errorDes" class="text-danger"></p>

                  </div>
                  <input onclick="editValidate()" class="btn btn-primary mx-auto" id="addSubmit" type="submit" value="Add data" name="submit">
                </form>
              </div>

              <cfif structKeyExists(form, "submit" )>
                <cfset local.obj=createObject("component","components.controller")>
                  <cfset local.result=local.obj.addData(form.title, form.description)>
                    <p class="text-center text-success">#local.result#</p>
              </cfif>

            <cfelseif URL.list EQ 'delete'>
              <cfset local.values=local.obj.deleteRow(url.id)>
              <cflocation  url="Adminlist.cfm">
        </cfif>
  </body>

  </html>
</cfoutput>