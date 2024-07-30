<cfcomponent>
    <cffunction name="createTable" access="public" returntype="any">
        <cfset local.data =[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
        <cfreturn local.data>
    </cffunction>
</cfcomponent>
