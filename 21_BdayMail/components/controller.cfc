<cfcomponent>
    <cffunction name="sentMail" access="public" returntype="any">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        <cfargument name="wishes" required="true">
        <cfargument name="image" required="true">

        <cffile action="upload"
                filefield="image"
                destination="#expandPath('assets/')#"
                accept="image/*"
                nameconflict="makeUnique">
        
        <cfset local.uploadedFile = cffile.serverFile>
        <cfset local.uploadedFilePath = expandPath('assets/' & cffile.serverFile)>

        <cfquery datasource="myDatabase">
            INSERT INTO birthday (Name, email, Wish, ImagePath)
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.wishes#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#local.uploadedFile#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>

        <cfmail from="admin@gmail.com"
                subject="Happy Birthday #arguments.name#"  
                to="#arguments.email#"
                server="smtp.gmail.com"
                port="25"
                mimeattach="#local.uploadedFilePath#">

            Hi #arguments.name#,
            <br><br>
            #arguments.wishes#
            <br><br>
            Enjoy every moment of your special day!
            <br><br>
            Best wishes
        </cfmail>
    </cffunction>
</cfcomponent>
