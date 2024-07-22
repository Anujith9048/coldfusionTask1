<cfcomponent>
    <cffunction name="printName" access="public" returntype="struct">
        <cfargument name="number" type="numeric" required="true">

        <cfquery name="tableAccess" datasource="myDatabase">
            SELECT * FROM persons;
        </cfquery>

        <cfset local.fullNames = "">
        <cfloop query="tableAccess">
            <cfset fullNames &= "#tableAccess.firstname# " &" "& " #tableAccess.lastname# "&" <br>">
        </cfloop>

        <cfquery name="nthRow" datasource="myDatabase" maxrows="1">
            SELECT firstname FROM persons
            ORDER BY (SELECT NULL)
            OFFSET <cfqueryparam value="#arguments.number - 1#" cfsqltype="CF_SQL_INTEGER"> ROWS
            FETCH NEXT 1 ROWS ONLY
        </cfquery>

        <cfset local.nthName = "">
        <cfloop query="nthRow">
            <cfset nthName &= "#nthRow.firstname#">
        </cfloop>

        <cfreturn {
            fullNames : fullNames,
            nthName : nthName
        }>
    </cffunction>
</cfcomponent>
