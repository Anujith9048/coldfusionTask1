<cfoutput>
    <html>
      <head>
        <title>My ColdFusion Page</title>
        <!-- Ensure the correct path to bundle.js -->
        <script src="bundle.js?v=123"></script>
      </head>
      <body>
        <div id="frame-here">testt</div>
        <script>
        console.log('test buddy :: ',SSLA)
          document.addEventListener('DOMContentLoaded', function() {
            const ssla = SSLA.SSLA.prototype;
            console.log('ssla ::::::::::::::: ', ssla);
            ssla.start();
          });
        </script>
      </body>
    </html>
    </cfoutput>