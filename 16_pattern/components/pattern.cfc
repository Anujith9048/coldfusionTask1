<cfcomponent>
    <cffunction name="printPattern" access="public" returntype="any">
        <cfargument name="num" type="string" required="true">
        <cfset local.numberList = listToArray(#arguments.num#)>
        <cfset local.newArray = ArrayNew(2)>
        <cfset local.index = 1>
        <cfloop from="1" to="3" index="i">
            <cfloop from="1" to="3" index="j">
                <cfset local.newArray[i][j] = local.numberList[local.index]>
                <cfset local.index++>
            </cfloop>
        </cfloop>
        <cfreturn local.newArray>
    </cffunction>
</cfcomponent>