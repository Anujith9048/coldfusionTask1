<cfcomponent>
    <cffunction name="checkEmail" access="remote" returnformat="json">
        <cfargument name="email" required="true">
        <cfdump var="#arguments#"abort>
        <cfreturn "hello">
    </cffunction>
</cfcomponent>
