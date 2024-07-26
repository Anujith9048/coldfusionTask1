<cfcomponent>
    <cffunction name="cookie" access="public" returntype="any">
        <cfif NOT structKeyExists(cookie, "VisitsCounter")>
            <cfset cookie.VisitsCounter = 1>
        <cfelse>
            <cfset cookie.VisitsCounter++>
        </cfif>
        <cfreturn cookie.VisitsCounter>
    </cffunction>
</cfcomponent>
