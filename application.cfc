<cfcomponent>
    <!--- Define application settings --->
    <cfset this.name = "MyApplication">
    <cfset this.applicationTimeout = createTimeSpan(0,0,2,0)>
    <cfset this.sessionManagement = true>
    <cfset this.sessionTimeout = createTimeSpan(0,0,20,0)>
    <cfset this.setClientCookies = true>

    <!--- Application start event --->
    <cffunction name="onApplicationStart" returntype="any" output="false">
        <cfset application.structure = structNew()>
        <cfreturn true>
    </cffunction>

    <!--- Session start event --->
    <cffunction name="onSessionStart" returntype="void">
        <cfset session.captchaNumber = "">
        <cfset session.captchaFileName = "">
        <cfset session.userName ="">
        <cfset sessionInvalidate.role = "">
        <cfset session.isLog = false>
        <cfset session.isLogged = false>
    </cffunction>
</cfcomponent>