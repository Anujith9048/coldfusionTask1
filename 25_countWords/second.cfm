<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Count Text</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/jquery.js"></script>
  <script src="script/script.js"></script>
</head>
<body class="p-5">
  <form class="col-5 mx-auto border border-1 p-3 mt-5 rounded" action="" method="post">
    <h3>Count the <span class="text-muted">words</span></h3>
    <div class="form-floating">
      <textarea name="text" id="text" class="form-control" placeholder=""></textarea>
      <label for="text" >Enter the text here</label>
    </div>
    <div class="d-flex row mx-0 justify-content-between">
      <button type="submit" class="border border-0 py-2 rounded-start btn-success mt-2 col-9" name="submit">Submit</button>
      <button type="button" id="countButton" class="border border-0 py-2 rounded-end btn-primary mt-2 col-3">Colorize</button>
    </div>
    <a href="first.cfm" class="text-center">Go back</a>
  </form>

  <script>
    document.getElementById('countButton').addEventListener('click', function() {
      window.location.href = 'third.cfm';
    });
  </script>
</body>
</html>
