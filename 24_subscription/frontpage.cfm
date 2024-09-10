<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Subscribe</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
</head>
<body class="p-5">
  <form class="col-5 mx-auto" action="" method="post">
    <label for="">Enter your name</label>
    <input class="form-control mt-3" type="text" name="name" id="name" placeholder="Enter your name">
    <label for="">Enter email</label>
    <input class="form-control mt-3" type="text" name="email" id="email" placeholder="Enter email" >
    <p id="emailStatus"></p>
    <input type="submit" value="Check" id="check" class=" btn-primary mt-3 rounded border-0">
    <input type="button" value="Submit" name="sub" id="subscribe" class=" form-control  mt-3" disabled>
  </form>
</body>
</html>

