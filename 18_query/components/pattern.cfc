<cfcomponent>
    <cffunction name="query" access="public" returntype="any">
        <cfset newQuery = QueryNew("id,name,email","integer,varchar,varchar")>
        <cfset queryAddRow(newQuery)>
        <cfset querySetCell(newQuery, "id","1")>
        <cfset querySetCell(newQuery, "name","Anujith")>
        <cfset querySetCell(newQuery, "email","anujithsajan005@gmail.com")>
        <cfset queryAddRow(newQuery)>
        <cfset querySetCell(newQuery, "id","2")>
        <cfset querySetCell(newQuery, "name","Anjali")>
        <cfset querySetCell(newQuery, "email","anjalilechu485@gmail.com")>
        <cfdump  var="#newQuery#" abort>

    </cffunction>
</cfcomponent>