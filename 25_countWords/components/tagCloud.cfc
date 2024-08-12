
<cfcomponent>
    <cffunction name="getText" access="public"  returntype="any">
        <cfargument name="text" type="string">

        <cfquery name="query" datasource="myDatabase">
        INSERT INTO textTable (text)
        VALUES (
            <cfqueryparam value="#arguments.text#" cfsqltype="cf_sql_varchar">
        )
        </cfquery>
     </cffunction>

     <cffunction name="countText" access="public" returntype="any">
        <cfquery name="query" datasource="myDatabase">
            SELECT text FROM textTable
        </cfquery>
    
        
        <cfset textString = query.text>
        <cfset splitedText = textString.Split(" ")>
        
        <cfset local.wordCounts = {}>
    
        <cfloop array="#splitedText#" index="word">
            <cfset word = Trim(word)> 
            <cfif word neq "" AND !isNumeric(word) AND len(word) GTE 3> 
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfquery name="query" datasource="myDatabase">
            DELETE FROM textTable
        </cfquery>
    <cfreturn local.wordCounts>
    </cffunction>

        <cffunction name="changeColor" access="public" returntype="any">
            <cfargument  name="word" type="string">

            <cfif len(arguments.word)EQ 1>
                <cfset class="fs-6 d-none">
            <cfelseif len(arguments.word)EQ 2>
                <cfset class="fs-6 d-none">
            <cfelseif len(arguments.word)EQ 3>
                <cfset class="fs-6 text-secondary">
            <cfelseif len(arguments.word)EQ 4>
                <cfset class="fs-5 text-danger">
            <cfelseif len(arguments.word)EQ 5>
                <cfset class="fs-4 text-info">
            <cfelseif len(arguments.word)EQ 6>
                <cfset class="fs-2 text-success">
            <cfelseif len(arguments.word)EQ 7>
                <cfset class="fs-1 text-primary">
            <cfelse>
                <cfset class="fs-1 text-warning fw-bolder">
            </cfif>

            <cfreturn class>
        </cffunction>
     
</cfcomponent>