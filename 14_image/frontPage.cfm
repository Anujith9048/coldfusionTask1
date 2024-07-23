<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>upload image</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    <script type="text/javascript" src="script/script.js"></script>
</head>

<body>
  <cfoutput>
    <form class="col-5 ms-auto me-auto mt-5 " action="frontPage.cfm" method="post"  enctype="multipart/form-data">
      <h3>Enter title and<small class="text-muted"> Upload photo</small></h3>

      <div class="mb-3">
        <label for="title" class="form-label">Image title</label>
        <input type="text" class="form-control" id="title" name="title">
      </div>

      <div class="mb-3">
        <label for="title" class="form-label">Image description</label>
        <input type="text" class="form-control" id="description" name="title">
      </div>

      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Image</label>
        <input type="file" class="form-control" id="file" accept="image/png, image/jpeg, image/gif, image/jpg" name="image">
        <div id="emailHelp" class="form-text">Choose file size less than 1mb.</div>
      </div>

      <input type="submit" class="btn btn-primary w-100" name="submit" value="Submit" onclick="validate()">
    </form>


 </cfoutput>
  <cfparam name="form.image" default="">
  <cfparam name="form.title" default="">
  <cfparam name="form.description" default="">
  <cfset local.maxSize = 1* 1024 *1024>

  <cfset local.result ="">
  <cfif structKeyExists(form, "submit" )>
    <cfset fileProcessor  = createObject("component","components.controller")>
    <cfset local.result = fileProcessor.uploader(form.image , form.title , form.description , local.maxSize)>
    <p class="text-center text-danger"><cfoutput>#local.result.message#</cfoutput></p>
  </cfif>
</body>

</html>