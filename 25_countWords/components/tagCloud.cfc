<cfcomponent>
    <cffunction name="getText" access="public"  returntype="any">
        <cfargument name="text" type="string">

        <cfquery name="query" datasource="myDatabase">
        INSERT INTO textTable (text)
        VALUES (
            <cfqueryparam value="#arguments.text#" cfsqltype="cf_sql_varchar">
        )
        </cfquery>
     </cffunction>

     <cffunction name="countText" access="public"  returntype="any">
        <cfquery name="query" datasource="myDatabase" >
        SELECT * FROM textTable 
        </cfquery>
     </cffunction>
</cfcomponent>
