<cfcomponent>
    <cffunction name="structOperation" access="remote" returntype="string">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfset var local = {}>

        <cfset local.structure = structNew()>
        <cfset local.structure[arguments.key] = arguments.value>
        <cfdump  var="#local.structure#" >
    </cffunction>
</cfcomponent>
