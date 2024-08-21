
<cfcomponent>
    <cffunction name="checkLog" access="public"  returntype="any">
        <cfargument name="username" type="string">
        <cfargument name="password" type="string">
        <cfif len(arguments.username) EQ 0 AND len(arguments.password)EQ 0>
            <cfreturn 'Enter username and password'>
        <cfelse>
            <cfset session.name = arguments.username>
            <cfset session.isLog = true>
            <cflocation  url="http://127.0.0.1:8500/TASK/coldfusionTask1/27_login/welcome.cfm">         
        </cfif>
        
    </cffunction>

    <cffunction name="logOut" access="public"  returntype="any">
        <cfset session.isLog = false>
        <cflocation  url="http://127.0.0.1:8500/TASK/coldfusionTask1/27_login/login.cfm">
    </cffunction>

</cfcomponent>

