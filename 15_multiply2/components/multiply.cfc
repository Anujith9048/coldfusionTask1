<cfcomponent>
    <cffunction name="multiply" access="public" returntype="any">
        <cfargument name="num" type="string" required="true">
        <cfset local.result= 1>
        <cfset local.numberList = listToArray(arguments.num)>
        <cfloop array="#local.numberList#" index="i">
            <cfset local.result *= i>
        </cfloop>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
