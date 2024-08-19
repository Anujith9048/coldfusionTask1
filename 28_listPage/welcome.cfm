<!DOCTYPE html>
<cfoutput>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoVault|#session.role#</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style/style.css">
  <link rel="icon" type="image/x-icon" href="assets/logo2.jpg">
  <script src="script/script.js"></script>
  <script src="script/jquery.js"></script>
</head>
<body>
    <cfinclude template="navbar.cfm">
    <div class="row mt-5 px-5 align-content-center #session.role#">
        <div class="col-6">
            <h2 class="text-light ">Welcome as <span class="fw-bolder userHello">#session.role#</span></h2>
        <cfif session.role EQ 'Admin' OR session.role EQ 'Editor'>
            <p class="text-light">Welcome to <span class="fw-bold">InfoHub</span>. 
                As an #session.role#, you can add , delete , edit contents. 
                You'll see the main titles on our homepage. Simply click on the <span class="text-decoration-underline">view List</span> to view the 
                full details and you can do the above mentioned actions. Enjoy exploring 
                and discovering new information on our platform!</p>
            </div>

            <div class="col-12  w-100 d-flex gap-2 mt-5">
                <div class="card col-4 bg-dark shadow-lg" >
                    <div class="card-body text-light py-5">
                      <h5 class="card-title">ADMINS can add new files</h5>
                      <p class="card-text mt-3">Easily input new titles and descriptions to enrich your website's content. Keep your information up-to-date and captivating with minimal effort.</p>
                    </div>
                </div>
                <div class="card col-4  bg-dark shadow-lg" >
                    <div class="card-body text-light py-5">
                      <h5 class="card-title">ADMINS can edit files</h5>
                      <p class="card-text mt-3">Swiftly adjust existing titles and descriptions to ensure accuracy and relevance. Maintain a polished and engaging user experience effortlessly</p>
                    </div>
                </div>
                <div class="card col-4 bg-dark shadow-lg" >
                    <div class="card-body text-light py-5">
                      <h5 class="card-title">ADMINS can delete files</h5>
                      <p class="card-text mt-3">Remove outdated or unnecessary text entries with ease, preserving the quality and integrity of your website's content.</p>
                    </div>
                </div>
            </div>

        <cfelseif session.role EQ 'User'>
            <p class="text-light">Welcome to <span class="fw-bold">InfoVault</span>. 
                As a #session.role#, you have access to the latest content added by our administrators. You'll see the main titles on our homepage. Simply click on a title to view the full details and dive deeper into the content that interests you. Enjoy exploring and discovering new information on our platform!</p>
            </div>
        </cfif>
    </div>
</body>
</html>
</cfoutput>