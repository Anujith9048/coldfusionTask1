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

     <cffunction name="countText" access="public"  returntype="any">
        <cfquery name="query" datasource="myDatabase" >
            SELECT text FROM textTable 
        </cfquery>
        <cfset textString = #query.text#>
        <cfset splitedText = textString.Split(" ")>
        <cfset local.structArray = []>
        
        <cfloop from="1" to="#ArrayLen(splitedText)#" index="item">
            
            <cfset arrayAppend(local.structArray, {
                item:splitedText[item],
                count:0
            })>
        </cfloop>

        <cfloop from="1" to="#ArrayLen(local.structArray)#" index="index">
                <cfdump var="#local.structArray[index]#">

            <cfloop from="1" to="#ArrayLen(splitedText)#" index="words">
                <cfif structKeyExists(local.structArray[index], splitedText[words])>
                    <cfset local.structArray[index].count++>
                    <cfdump var="#local.structArray[index]#">
                </cfif>
            </cfloop> 

        </cfloop>


        <cfquery name="query" datasource="myDatabase" >
            DELETE FROM textTable 
        </cfquery>
<!---         <cfreturn splitedText> --->
     </cffunction>
</cfcomponent>
