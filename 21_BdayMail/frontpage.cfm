<cfoutput>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>WishNow</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <script type="text/javascript" src="script/script.js"></script>
      <link rel="stylesheet" href="style/style.css">
  </head>
  <body>
      <form action="frontpage.cfm" method="post" class="col-4 ms-auto me-auto mt-auto shadow p-4 rounded"  enctype="multipart/form-data">
        <p id="error" class="text-danger"></p>
        <label for="number" class="form-text mt-2">Enter Birthday Baby's name</label>
        <input type="text" name="name" class="form-control  shadow-sm" id="name">
        <label for="email" class="form-text mt-2">Enter email id</label>
        <input type="text" name="email" class="form-control shadow-sm" id="email">
        <label for="wishes" class="form-text mt-2">Enter Bday wishes</label>
        <textarea name="wishes" id="wishes" class="form-control shadow-sm" id="wish"></textarea>
        <label for="file" class="form-text mt-2">Select Greeting image</label>
        <input type="file" name="image" class="form-control shadow-sm">
        <input type="submit" name="submit" value="Submit" class="btn-success form-control mt-3 shadow" onclick="validate()">
    </form>

    <cfif structKeyExists(form, "submit")>
      <cfset local.obj = createObject("component","components.controller")>
      <cfset local.result = local.obj.sentMail(form.name , form.email , form.wishes , form.image)>
    </cfif>
  </body>
  </html>
  </cfoutput>
  