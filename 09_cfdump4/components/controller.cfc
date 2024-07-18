<cfcomponent>
    <cffunction name="structOperation" access="public" returntype="any">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfargument name="structure" type="struct" required="true">

        <cfif structKeyExists(arguments.structure, arguments.key)>
            <cfdump  var="#arguments.structure#">
            <cfdump  var="#arguments.key# already Exist.Cannot add again!" ABORT>
        </cfif>
        <cfset arguments.structure[arguments.key] = arguments.value>
    </cffunction>
</cfcomponent>
