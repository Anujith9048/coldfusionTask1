<cffunction name="selectData" access="remote" returnformat="json">
    <cfargument name="pageId" type="string" required="true">
    <cfset var local = structNew()>

    <cfquery name="queSelectData" datasource="myDatabase">
        SELECT title, description 
        FROM pageData 
        WHERE pageId = <cfqueryparam value="#arguments.pageId#" cfsqltype="cf_sql_varchar">
    </cfquery>

    <!--- Check if the query returned results --->
    <cfif queSelectData.recordcount gt 0>
        <cfset local.title = queSelectData.title>
        <cfset local.description = queSelectData.description>
    <cfelse>
        <cfset local.title = "">
        <cfset local.description = ""/>
    </cfif>

    <!--- Directly return the struct, ColdFusion handles JSON serialization --->
    <cfreturn local>
</cffunction>
