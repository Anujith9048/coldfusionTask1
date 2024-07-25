<cfcomponent>
    <cffunction name="oddEven" access="public" returntype="any">
        <cfargument name="num" type="numeric" required="true">
        <cfset local.result=structNew()>
        <cfset local.structArray =[]>
        <cfloop from="1" to="#arguments.num#" index="i"> 
            <cfif i%2 EQ 0>
                <cfset local.result= {
                    className : "text-success",
                    num : i
                }>
            <cfelse>
                <cfset local.result= {
                    className : "text-primary",
                    num : i
                }>  
            </cfif>
            <cfset local.structArray[i] = local.result>
        </cfloop>
        <cfreturn local.structArray>

    </cffunction>
</cfcomponent>