
<cfcomponent>
    <cffunction name="checkLog" access="public"  returntype="any">
        <cfargument name="username" type="string">
        <cfargument name="password" type="string">

        <cfif arguments.username EQ session.userName AND arguments.password EQ session.userPassword>
            <cflocation  url="http://127.0.0.1:8500/TASK/coldfusionTask1/27_login/user.cfm">
        <cfelseif arguments.username EQ session.adminName AND arguments.password EQ session.adminPassword>
            <cflocation  url="http://127.0.0.1:8500/TASK/coldfusionTask1/27_login/admin.cfm">
        <cfelse>
            <cfreturn 'Enter correct details !'>
        </cfif>
    </cffunction>
</cfcomponent>

