<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Page</title>
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <script src="script/jquery.js"></script>

  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
</head>
<body class="pb-5">
  <div class="row mx-auto item d-block">
    <div class="contents navigate mx-auto items pb-5">
      <div class="row nav ">
        <a href="##" class="logo"> </a>
      </div>
      <div class="border-bottom title-box">
        <h2 class="title">Employment Application</h2>
        <p class="title-bottom">Infinity Box Inc.</p>
      </div>
      <div class=" mx-auto mt-3 text-center error_box py-3" id="errorbox" style="display: none;">
        <h2 class="  errorhead fw-b">There was a problem with your submission.</h2>
        <p class="errorwelc m-0">Welcome back! Please resubmit your form.</p>
      </div>
      <form action="" class="pe-3">
        <div class="position py-2 ps-2 box" id="box1">
          <label for="position stared text-bold" id="label1">Which position are you applying for?
            <span id="req_20" class="req">*</span></label> <br>
          <select class="custom-select form-input-box-small" id="inputGroupSelect">
            <option selected></option>
            <option value="1">Interface Designer</option>
            <option value="2">Software engineer</option>
            <option value="3">System Administrator</option>
            <option value="3">Office Manager</option>
          </select>
          <p id="errorp"></p>
        </div>
        <div class="relocate py-1 ps-2 box" id="box2">
          <label for="" id="label2" >Are you willing to relocate?
            <span id="req_20" class="req">*</span>
          </label><br>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="radio" id="radio" value="Yes" checked="checked"/>
            <p class="m-0" for="radio1" > Yes </p>
            <input class="form-check-input" type="radio" name="radio" id="radio" value="No" />
            <p class="m-0" for="radio2"> No </p>
          </div>
          <p id="errorp2"></p>

        </div>
        <div class="date py-2 ps-2 box" id="box3">
          <label class="desc" id="label3">
            When can you start?
            <span id="req_20" class="req">*</span>
          </label> <br>
          <span class="">
            <input id="day" name="day" type="text" class="form-input-box field text" value="" size="2" maxlength="2" required oninput="moveNext(this , 'month')" />
          </span>
          <span class="symbol">/</span>
          <span>
            <input id="month" name="month" type="text" class="form-input-box field text" value="" size="2" maxlength="2" oninput="moveNext(this , 'year')"/>
          </span>
          <span class="symbol">/</span>
          <span>
            <input id="year" name="year" type="text" class="form-input-box field text" value="" size="4" maxlength="4" oninput="moveNext(this , 'NULL')" />
          </span>
          <span id="cal20">
            <input type="date" id="datepicker">
          </span>
          <div class="d-flex justify-content-between label-month">
            <p class="Fiel m-0">DD</p>
            <p class="Fiel-2 m-0">MM</p>
            <p class="Fiel m-0">YYYY</p>
          </div>
          <p id="errorp3"></p>
        </div>

        <div class="site py- ps-2 box" id="box4">
          <label for="start fw-bold" id="label10"> Portfolio Web Site</label> <br>
          <input type="text" class="form-input-box" name="website" id="site" value="http://" size="40">
          <p id="errorp10"></p>
        </div>
        <div class="resume py-2 d-block ps-2 box" id="box5">
          <label for="start fw-bold"> Attach a Copy of Your Resume</label> <br>
          <input type="file" name="resume" id="resume"> <br>
          <p for="" class="form-text m-0">Word or PDF Documents Only</p>
        </div>
        <div class="salary pb-3 py-2 d-block border-bottom d-block ps-2 box" id="box6">
          <label class="desc" id=""> Salary Requirements </label> <br>
          <span class="symbol">$</span>
          <span>
            <input id="dollar" name="dollar" type="text" class="form-input-box dollar" value="" size="10">
          </span>
          <span class="symbol radix">.</span>
          <span class="cents">
            <input id="cent" name="cent" type="text" class="form-input-box cent" value="" size="2">
          </span>
          <div class="d-flex justify-content-between label-salary">
            <p for="Field20-1 mb-0">Dollar</p>
            <p for="Field20-2 mb-0">cent</p>
          </div>
        </div>
        <h6 class="py-2 text-dark ps-2">Your Contact Information</h6>
        <div class="name pb-3 py-2 d-block ps-2 box" id="box7">
          <label class="stared" id="label4"> Name
            <span id="req_20" class="req">*</span>
          </label> <br>
          <input id="fname" name="" type="text" class="form-input-box" value="" size="10">
          <input id="lname" name="" type="text" class="form-input-box" value="" size="16">
          <p id="errorp4"></p>

        </div>
        <div class="email pb-3 py-2 d-block ps-2 box" id="box8">
          <label class="stared" id="label5"> Email Address
            <span id="req_20" class="req">*</span></label> <br>
          <input id="email" name="" type="text" class="form-input-box" value="" size="40">
          <p id="errorp5"></p>
        </div>
        <div class="phone pb-3 py-2 d-block ps-2 box" id="box9">
          <label class="stared" id="label6"> Phone
            <span id="req_20" class="req">*</span>
          </label><br>
          <input id="phone1" name="phone1" type="text" class="form-input-box" value="" maxlength="3" size="4" oninput="moveNext(this,'phone2')"> -
          <input id="phone2" name="phone2" type="text" class="form-input-box" value="" maxlength="3" size="4" oninput="moveNext(this,'phone3')"> -
          <input id="phone3" name="phone3" type="text" class="form-input-box" value="" maxlength="4" size="5" oninput="moveNext(this,NULL)">
          <p id="errorp6"></p>
        </div>
        <input type="submit" value="Submit" class="ms-2 butn" id="submit" onclick="validate()">
        <p class="form-text mt-5 ps-2">This site is protected by reCAPTCHA Enterprise and the Google <span><a href="##"> Privacy Policy</a></span> and <span><a href="##">Terms of Service </a></span>apply.</p>
      </form>
    </div>
  </div>
  <div class="text-center mt-2">
    <a href="##" class="powered">Powered By</a> <br>
    <img src="https://static.wufoo.com/assets/images/logos/wufoo/wufoo-logo-500x210.png" width="100" alt=""> <br>
    <a href="##" class="powered2">See how easy it is to <span><a href="##" class="fs">create a form.</a></span> </a>
  </div>

  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.min.js"></script>
  <script>
    $(document).ready(function () {

        $(function () {
            $("#datePickerImage").
            datepicker();
        });
    }) 
</script>
  <script type="text/javascript" src="script/script.js"></script>
</body>
</html>
