<cfcomponent>
    <cffunction name="uploader" access="public" returntype="struct">
        <cfargument name="image" type="any" required="true">
        <cfargument name="title" type="string" required="true">
        <cfargument name="description" type="string" required="true">
        <cfargument name="maxSize" type="numeric" required="true">

        <cfset var local = {}>
        <cfset local.result = structNew()>
        <cfset local.result.success = false>
        <cfset local.result.message = "" >
        <cfset local.destinationPath = expandPath('./assets/')>

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

            <cfquery datasource="imageDatabase">
                INSERT INTO imageTable (title, descr, imagePath)
                VALUES (
                    <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#local.uploadedFile#" cfsqltype="cf_sql_varchar">
                )
            </cfquery>

<cfset local.result.message = "File uploaded.">

        <cfelse>
            <cfset local.result.message = "No file uploaded.">
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
