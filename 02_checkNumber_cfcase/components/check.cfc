<cfcomponent>
    <cffunction name="checkNumber" access="public" returntype="string">
        <cfargument name="num" type="numeric" required="true">
        <cfset result ="">
        <cfswitch expression="#num#">
            <cfcase value=1>1 is ok</cfcase>
            <cfcase value=2>2 is ok</cfcase>
            <cfcase value=3>3 is fair</cfcase>
            <cfcase value=4>4 is good</cfcase>
            <cfcase value=5>5 is very good</cfcase>
            <cfcase value="">Enter a number</cfcase>
            <cfdefaultcase>Enter a number between 1-5</cfdefaultcase>
        </cfswitch>
    </cffunction>
</cfcomponent>
    
    