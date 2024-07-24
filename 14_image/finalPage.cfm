<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Card with the image</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body> 
    
      <cfset fileProcessor  = createObject("component","components.controller")>
      <cfset local.allThumbnails = fileProcessor.thumbnail()>
    
      <div class="card ms-auto me-auto mt-5" style="width: 18rem;">
        <img src="./assets/#local.allThumbnails.imagePath#" class="card-img-top" alt="...">
        <div class="card-body text-center">
          <h5 class="card-title">#local.allThumbnails.title#</h5>
          <p class="card-text">#local.allThumbnails.descr#</p>
          <a href="thumbnail.cfm" class="btn btn-primary">Go Back</a>
        </div>
      </div>
        
        
    </body>
    </html>
    </cfoutput>