<cfcomponent>
    <cffunction name="printPattern" access="public" returntype="any">
        <cfargument name="num" type="string" required="true">
        <cfset local.numberList = listToArray(#arguments.num#)>
        <cfloop from="1" to="3" index="i">
            <cfloop from="1" to="3" index="j">
                <cfreturn local.numberList[j]>
                <cfdump  var="#numberList#" abort>
            </cfloop>
            <cfreturn "<br>">
        </cfloop>
    </cffunction>
</cfcomponent>
