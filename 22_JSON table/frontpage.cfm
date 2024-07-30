<cfoutput>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>JSON</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <script type="text/javascript" src="script/script.js"></script>
      <link rel="stylesheet" href="style/style.css">
  </head>
  <body>
      <table class="ms-auto me-auto">
        <tr>
          <th class="p-4 ">Name</th>
          <th class="p-4 ">Age</th>
          <th class="p-4 ">Location</th>
        </tr>
        <cfset local.obj = createObject("component","components.controller")>
        <cfset local.data = local.obj.createTable()>

        <cfloop array="#local.data#" index="i">
          <tr>
            <td class="p-4 ">#i.Name#</td>
            <td class="p-4 ">#i.Age#</td>
            <td class="p-4 ">#i.LOCATION#</td>
          </tr>
        </cfloop>
      </table>
  </body>
  </html>
  </cfoutput>
  