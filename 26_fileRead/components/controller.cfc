
<cfcomponent>
    <cffunction name="uploadFile" access="public"  returntype="any">

        <cffile  action="upload" 
        destination="#expandPath('assets/')#" 
        nameConflict="makeUnique">

        <cfset filePath = cffile.serverDirectory &'/'& cffile.serverFile>


        <cffile 
        action="read" 
        file="#filePath#" 
        variable="fileUploaded">
            
            <cfset wordsArray = reMatch("\b\w+\b", fileUploaded)>
            
            <cfloop array="#wordsArray#" index="word">
                <cfquery datasource="myDatabase" name="uploadFile">
                    INSERT INTO fileWords (words) VALUES (
                    <cfqueryparam value="#word#" cfsqltype="CF_SQL_VARCHAR">)
                </cfquery>
            </cfloop>
            <cfreturn 'The file Successfully Uploadad'>


    </cffunction>
</cfcomponent>

