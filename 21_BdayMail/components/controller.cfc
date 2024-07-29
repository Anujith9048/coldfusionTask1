<cfcomponent>
    <cffunction name="sentMail" access="public" returntype="any">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        <cfargument name="wishes" required="true">
        <cfargument name="image" required="true">

        <cfquery datasource="myDatabase">
        <cffile action="upload"
                filefield="image"
                destination="#expandPath('assets/')#"
                accept="image/*"
                nameconflict="makeUnique">
        <cfset local.uploadedFile = cffile.serverFile>
        INSERT INTO birthday (Name,email,Wish,ImagePath)
        VALUES (
            <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.wishes#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#local.uploadedFile#" cfsqltype="cf_sql_varchar">
        )
        </cfquery>
        <cfmail  from="admin@gmail.com"
          subject="Happy Birthday #arguments.name#"  
          to="#arguments.email#"
          mimeattach="#local.uploadedFile#">

            Hi [Name],
            #arguments.wishes#
            Enjoy every moment of your special day!
            Best wishes

        </cfmail>
    </cffunction>
</cfcomponent>
