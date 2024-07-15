<cfcomponent>
    <cffunction name="checkNumber" access="public" returntype="string">
        <cfargument name="num" type="numeric" required="true">
        <cfset result ="">

        <cfif num EQ 5>
            <p><cfoutput>#num# is Very good</cfoutput></p>
        <cfelseif num EQ 4>
            <p><cfoutput>#num# is Good</cfoutput></p>
        <cfelseif num EQ 3>
            <p><cfoutput>#num# is fair</cfoutput></p>
        <cfelseif num EQ 1 or num EQ 2>
            <p><cfoutput>#num# is Ok</cfoutput></p>
        <cfelseif num GT 5 or num LT 1>
            <p><cfoutput>Enter a number between 1-5</cfoutput></p>
        <cfelse>
            <p><cfoutput>Enter a number</cfoutput></p>
        </cfif>
    </cffunction>
</cfcomponent>
    
    