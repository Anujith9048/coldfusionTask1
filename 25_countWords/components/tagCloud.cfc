
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
            <cfif word neq ""> 
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
    <cfreturn local.wordCounts>
    </cffunction>


    
         <cffunction name="colorize" access="public" returntype="any">
            <cfquery name="query" datasource="myDatabase">
                SELECT text FROM textTable
            </cfquery>
        
            
            <cfset textString = query.text>
            <cfset splitedText = textString.Split(" ")>
            
            <cfset local.wordCounts = {}>
            
        
            <cfloop array="#splitedText#" index="word">
                <cfset word = Trim(word)> 
                <cfif !isNumeric(word) AND len(word) GTE 3> 
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
            <cfif len(argument.word)EQ 3>
                <cfset class="fs-6 text-primary">
            <cfelseif len(argument.word)EQ 4>
                <cfset class="fs-5 text-success">
            <cfelseif len(argument.word)EQ 5>
                <cfset class="fs-4 text-danger">
            <cfelseif len(argument.word)EQ 6>
                <cfset class="fs-2 text-info">
            <cfelseif len(argument.word)EQ 7>
                <cfset class="fs-1 text-secondary">
            </cfif>
            <cfreturn class>
        </cffunction>
     
</cfcomponent>