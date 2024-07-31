<cfoutput>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style/style.css">
  </head>

  <body class="pb-5">
    <div class="row mx-auto item d-block">
      <div class="contents navigate mx-auto items pb-5">

        <div class="row nav ">
          <a href="##" class="logo"> </a>
        </div>
        <div class=" border-bottom title-box">
          <h2 class="title">Employment Application</h2>
          <p class="title-bottom">Infinity Box Inc.</p>
        </div>
        <form action="" class=" pe-3">

          <div class="position py-2 ps-2" id="box1">
            <label for="position stared text-bold">Which position are you applying for?
              <span id="req_20" class="req">*</span></label> <br>

            <select class="custom-select form-input-box-small" id="inputGroupSelect01">
              <option selected></option>
              <option value="1">Interface Designer</option>
              <option value="2">Software engineer</option>
              <option value="3">System Administrator</option>
              <option value="3">Office Manager</option>
            </select>
          </div>

          <div class="relocate py-1 ps-2 " id="box2">
            <label for="relocate stared fw-bold">Are you willing to relocate?
              <span id="req_20" class="req">*</span>
            </label><br>
            <div class="form-check">
              <input class="form-check-input " type="radio" name="radio" id="radio" value="Yes"/>
              <p class="m-0" for=""> Yes </p>
              <input class="form-check-input" type="radio" name="radio" id="radio"  value="no" />
              <p class="m-0" for=""> No </p>
            </div>
          </div>

          <div class="date py-2 ps-2 " id="box3">
            <label class="desc" id="title20">
              When can you start?
              <span id="req_20" class="req">*</span>
            </label> <br>
            <span class="">
              <input id="Field20-1" name="Field20-1" type="text" class="form-input-box field text" value="" size="2" maxlength="2" tabindex="0" required />
            </span>
            <span class="symbol">/</span>
            <span>
              <input id="Field20-2" name="Field20-2" type="text" class="form-input-box field text" value="" size="2"
                maxlength="2" tabindex="0" required />
            </span>
            <span class="symbol">/</span>
            <span>
              <input id="Field20" name="Field20" type="text" class="form-input-box field text" value="" size="4"
                maxlength="4" tabindex="0" />
            </span>
            <span id="cal20">
              <img id="pick20" class="calendar" src="https://static.wufoo.com/images/icons/calendar.png"
                alt="Pick a date." data-date-format="yyyy-mm-dd" data-date="today" />
            </span>
            <div class="d-flex justify-content-between label-month">
              <p for="Fiel m-0">MM</p>
              <p for="Fiel-2 m-0">DD</p>
              <p for="Fiel m-0">YYYY</p>
            </div>
          </div>

          <div class="site py- ps-2" id="box4">
            <label for="start fw-bold"> Portfolio Web Site</label> <br>
            <input type="text" class="form-input-box" name="website" id="site" value="http://" size="40">
          </div>

          <div class="resume py-2 d-block ps-2" id="box5">
            <label for="start fw-bold"> Attach a Copy of Your Resume</label> <br>
            <input type="file" name="resume" id="resume"> <br>
            <p for="" class="form-text m-0">Word or PDF Documents Only</p>
          </div>

          <div class="salary pb-3 py-2 d-block w-100 border-bottom d-block ps-2" id="box6">
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

          <div class="name pb-3 py-2 d-block w-100 ps-2" id="box7">
            <label class="stared" id=""> Name
              <span id="req_20" class="req">*</span>
            </label> <br>
            <input id="" name="" type="text" class="form-input-box" value="" size="3">
            <input id="" name="" type="text" class="form-input-box" value="" size="12">
          </div>

          <div class="email pb-3 py-2 d-block ps-2" id="box8">
            <label class="stared" id=""> Email Address
              <span id="req_20" class="req">*</span></label> <br>

            <input id="" name="" type="text" class="form-input-box" value="" size="40">
          </div>

          <div class="phone pb-3 py-2 d-block ps-2" id="box9">
            <label class="stared" id=""> Phone
              <span id="req_20" class="req">*</span>
            </label><br>

            <input id="" name="" type="text" class="form-input-box" value="" size="3"> -
            <input id="" name="" type="text" class="form-input-box" value="" size="3"> -
            <input id="" name="" type="text" class="form-input-box" value="" size="3">
          </div>

          <input type="submit" value="Submit" class="ms-2" id="submit ">
          <p class="form-text mt-5 ps-2">This site is protected by reCAPTCHA Enterprise and the Google <span><a href="##">
                Privacy Policy</a></span> and <span><a href="##">Terms of Service </a></span>apply.</p>
        </form>
      </div>
    </div>
    <div class="text-center mt-2">
      <a href="##" class="powered">Powered By</a> <br>
      <img src="https://static.wufoo.com/assets/images/logos/wufoo/wufoo-logo-500x210.png" width="100" alt=""> <br>
      <a href="##" class="powered2">See how easy it is to <span><a href="##" class="fs">create a form.</a></span> </a>
    </div>




    <script type="text/javascript" src="script/script.js"></script>
    <script>
            colorize('box1');
            colorize('box2');
            colorize('box3');
            colorize('box4');
            colorize('box5');
            colorize('box6');
            colorize('box7');
            colorize('box8');
            colorize('box9');
       
    </script>
    
  </body>
  </html>
</cfoutput>