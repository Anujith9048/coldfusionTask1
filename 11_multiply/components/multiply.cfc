<cfcomponent>
    <cffunction name="multiply" access="public" returntype="any">
        <cfset result= 1>
        <cfloop from="1" to="#arrayLen(arguments)#" index="i">
            <cfset result *= arguments[i]>
        </cfloop>
        <cfreturn #result#>
    </cffunction>
</cfcomponent>
