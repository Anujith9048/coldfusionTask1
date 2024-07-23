<cfcomponent>
    <cffunction name="highlight" access="public" returntype="any">
        <cfargument name="key" type="string" required="true">
        <cfset local.mainStr =  "the quick brown fox jumps over the lazy dog" >
        <cfset local.content = listToArray(mainStr," ")>
        <cfset local.keyCount = 0>
        <cfloop array="#local.content#" index="i">
            <cfif i EQ arguments.key>
                <cfset local.keyCount++>
            </cfif>
        </cfloop>
        <cfreturn local.keyCount>
    </cffunction>
</cfcomponent>
