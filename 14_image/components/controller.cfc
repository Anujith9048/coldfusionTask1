<cfcomponent>
    <cffunction name="uploader" access="public" returntype="struct">
        <cfargument name="image" type="any" required="true">
        <cfargument name="title" type="string" required="true">
        <cfargument name="description" type="string" required="true">
        <cfset local.result = structNew()>
        <cfset local.result.message = "" >
        <cfset local.destinationPath = expandPath('./assets/')>
        <cfset local.result.success = false>


        <cfif not directoryExists(local.destinationPath)>
            <cfdirectory action="create" directory="#local.destinationPath#">
        </cfif>

        

        <cfif len(trim(arguments.image)) GT 0>
            <cffile action="upload"
                    filefield="image"
                    destination="#expandPath('assets/')#"
                    accept="image/*"
                    nameconflict="makeUnique">
            <cfset local.uploadedFile = cffile.serverFile>


            <cfif len(trim(local.uploadedFile)) GT 0>

                <cfquery datasource="myDatabase">
                    delete from imageTable;
                </cfquery>

                <cfquery datasource="myDatabase">
                    INSERT INTO imageTable (title, descr, imagePath)
                    VALUES (
                        <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#local.uploadedFile#" cfsqltype="cf_sql_varchar">
                    )
                </cfquery>

                <cfset local.result.message = "File uploaded and added to database.">
                <cfset local.result.className = "text-success">
                <cfset local.result.success = true>

            <cfelse>
                <cfset local.result.message = "File upload failed.">
                <cfset local.result.className = "text-danger">
            </cfif>
        <cfelse>
            <cfset local.result.message = "No file uploaded.">
            <cfset local.result.className = "text-danger">
        </cfif>
        
        <cfreturn local.result>
    </cffunction>

    
    <cffunction name="thumbnail" access="remote" returntype="query">
        <cfquery name="allThumbnails" datasource="myDatabase">
            SELECT * FROM imageTable
        </cfquery>
        <cfreturn allThumbnails>
    </cffunction>
    
    
</cfcomponent>
