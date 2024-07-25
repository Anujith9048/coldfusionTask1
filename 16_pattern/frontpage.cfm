<cfoutput>
    <!DOCTYPE html>
    
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>pattern numbers</title>
        <link rel="stylesheet" href="style/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
          <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body >
        <cfobject  name="patternObj" component="components.pattern">
        <cfset result="">
        <cfinvoke component="#patternObj#" method="printPattern" returnvariable="resultArray">
            <cfset local.numberList = "1,4,7,2,5,8,3,6,9">
            <cfinvokeargument name="num" value="#local.numberList#" />
        </cfinvoke>
    
        <cfloop from="1" to="3" index="i">
            <div class="d-flex gap-5 ms-5 mt-5">
                <cfloop from="1" to="3" index="j">
                    <p>#resultArray[i][j]#</p>
                </cfloop>
            </div>
            <br>
        </cfloop>
    </body>
    </html>
    </cfoutput>
    