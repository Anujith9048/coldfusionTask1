<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add text</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
</head>
<body class="p-5">
  <form class="col-5 mx-auto border border-1 p-3 mt-5 rounded" action="" method="post">
    <h3 class="input-label">Enter the <span class="text-muted">String</span> </h3>
    <div class="form-floating">
      <textarea name="text" id="text" class="form-control" placeholder=""></textarea>
      <label for="text" >Enter the text here</label>
    </div>
    <div class="row mx-0 justify-content-between gx-2">
      <button class="border border-0 py-2 rounded-start btn-success mt-2 col-12" name="submit">Submit</button>
      <div class="col-6 ms-0 ps-0">
        <button type="button" id="countButton" class="border border-0 py-2 rounded  btn-primary mt-2 col-12">Count</button>
      </div>
      <div class="col-6  me-0 pe-0">
        <button type="button" id="colorButton" class="border border-0 py-2 rounded  btn-primary mt-2 col-12">Colorize</button>
      </div>
    </div>
  </form>

  <cfif structKeyExists(form , "submit")>
    <cfset local.obj = createObject("component","components.tagCloud")>
    <cfset local.result = local.obj.getText(form.text)>
  </cfif>


  <script>
    document.getElementById('countButton').addEventListener('click', function() {
      window.location.href = 'second.cfm';
    });
    document.getElementById('colorButton').addEventListener('click', function() {
      window.location.href = 'third.cfm';
    });
  </script>
  </body>
</html>

