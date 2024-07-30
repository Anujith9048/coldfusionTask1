<cfoutput>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="script/script.js"></script>
    <link rel="stylesheet" href="style/style.css">
  </head>

  <body class="py-3 pb-5">
    <div class="row mx-auto item d-block">
      <div class="contents navigate mx-auto items pb-5">

        <div class="row nav ">
          <a href="##" class="logo"> </a>
        </div>
        <div class="p-3 border-bottom ">
          <h2>Employment Application</h2>
          <p class="form-text">Infinity Box Inc.</p>
        </div>
        <form action="" class="ps-2 pe-3">

          <div class="position py-2">
            <label for="position stared text-bold">Which position are you applying for?</label> <br>
            <select class="custom-select" id="inputGroupSelect01">
              <option selected></option>
              <option value="1">Interface Designer</option>
              <option value="2">Software engineer</option>
              <option value="3">System Administrator</option>
              <option value="3">Office Manager</option>
            </select>
          </div>

          <div class="relocate py-2">
            <label for="position stared fw-bold">Are you willing to relocate?</label> <br>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="" id="radio" />
              <p class="m-0" for=""> Yes </p>
              <input class="form-check-input" type="radio" name="" id="radio" />
              <p class="m-0" for=""> No </p>
            </div>
          </div>

          <div class="date py-2">
            <label for="start fw-bold stared"> When can you start?</label> <br>
            <input type="date" name="date" id="date">
          </div>

          <div class="site py-2">
            <label for="start fw-bold"> Portfolio Web Site</label> <br>
            <input type="text" name="website" id="site" value="http://" size="40">
          </div>

          <div class="resume py-2 d-block">
            <label for="start fw-bold"> Attach a Copy of Your Resume</label> <br>
            <input type="file" name="resume" id="resume"> <br>
            <p for="" class="form-text m-0">Word or PDF Documents Only</p>
          </div>

          <div class="salary pb-3 py-2 d-block w-100 border-bottom d-block">
            <label class="desc" id=""> Salary Requirements </label> <br>
            <span class="symbol">$</span>
            <span>
              <input id="Field16" name="" type="text" class="" value="" size="10">
            </span>
            <span class="symbol radix">.</span>
            <span class="cents">
              <input id="Field16-1" name="" type="text" class="" value="" size="2">
            </span>
          </div>

          <h6 class="py-2 text-dark">Your Contact Information</h6>

          <div class="name pb-3 py-2 d-block w-100 ">
            <label class="stared" id=""> Name </label> <br>
            <input id="" name="" type="text" class="" value="" size="3">
            <input id="" name="" type="text" class="" value="" size="12">
          </div>

          <div class="email pb-3 py-2 d-block ">
            <label class="stared" id=""> Email Address</label> <br>
            <input id="" name="" type="text" class="" value="" size="40">
          </div>

          <div class="phone pb-3 py-2 d-block ">
            <label class="stared" id=""> Phone</label> <br>
            <input id="" name="" type="text" class="" value="" size="1"> -
            <input id="" name="" type="text" class="" value="" size="1"> -
            <input id="" name="" type="text" class="" value="" size="1">
          </div>

          <input type="submit" value="Submit" class="">
          <p class="form-text mt-5 ">This site is protected by reCAPTCHA Enterprise and the Google <span><a href="##"> Privacy Policy</a></span> and <span><a href="##">Terms of Service </a></span>apply.</p>
        </form>
      </div>
    </div>
    <div class="text-center mt-2">
      <a href="##" class="powered">Powered By</a> <br>
      <img src="https://static.wufoo.com/assets/images/logos/wufoo/wufoo-logo-500x210.png" width="100" alt=""> <br>
      <a href="##" class="powered2">See how easy it is to <span ><a href="##" class="fs">create a form.</a></span> </a>
    </div>
  </body>

  </html>
</cfoutput>