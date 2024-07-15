<cfcomponent>
    <cffunction name="checkNumber" access="public" returntype="string">
        <cfargument name="num" type="string" required="true">
        <cfset result ="">
        <cfset numberArray =listToArray(num,",")>
        
        <cfloop from ="1" to = "#arraylen(numberArray)#" index = "i">
            <cfset var currentNumber = lsParseNumber(numberArray[i])>
            <cfif numberArray[i] mod 3>
                <cfcontinue>
            <cfelse>
                <cfset result= result & currentNumber & " ">
            </cfif>
        </cfloop>
        <cfreturn trim(result)>
    </cffunction>
</cfcomponent>
    
    