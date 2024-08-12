<cfcomponent>
    <cffunction name="mailValidate" access="remote"  returnformat="json">
        <cfargument name="email" type="string" required="true">
        <cfquery datasource="myDatabase" name="query">
            SELECT * FROM subscribers
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif query.recordCount>
            <cfreturn {"success":true}>
        <cfelse>
            <cfreturn {"success":false}>
        </cfif>
    </cffunction>

    <cffunction name="mailAdd" access="remote" returnformat="json" >
        <cfargument name="name" type="string" required="true">
        <cfargument name="email" type="string" required="true">
        <cfquery datasource="myDatabase" name="query" result="q">
            INSERT INTO subscribers (name, email)
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
            ) 
        </cfquery>
        <cfreturn {"success":true}>
    </cffunction>
</cfcomponent>
