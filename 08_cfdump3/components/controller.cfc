<cfcomponent>
    <cffunction name="structOperation" access="public" returntype="any">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfargument name="structure" type="struct" required="true">
        <cfset arguments.structure[arguments.key] = arguments.value>
    </cffunction>
</cfcomponent>
