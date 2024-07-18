<cfcomponent>
    <!-- Define application settings -->
    <cfset this.name = "MyApplication">
    <cfset this.applicationTimeout = createTimeSpan(0,0,2,0)> 
    <cfset this.sessionManagement = true>
    <cfset this.sessionTimeout = createTimeSpan(0,0,20,0)>
    <cfset this.setClientCookies = true>

    <!-- Application start event -->
    <cffunction name="onApplicationStart" returntype="any" output="false">
        <cfset application.structure = structNew()>

    </cffunction>


    <cffunction name="onSessionStart" returntype="void" output="false">
    </cffunction>


</cfcomponent>
