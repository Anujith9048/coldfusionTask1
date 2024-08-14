<cfcomponent>

<!--- Function for SIGNUP --->
    <cffunction name="signup" access="public"  returntype="any">
      <cfargument name="username" type="string" >
      <cfargument name="password" type="string" >
      <cfargument name="role" type="string" >
      <cfquery name="check" datasource="myDatabase">
        SELECT username FROM userData 
        WHERE username = <cfqueryparam value="#arguments.username#"  cfsqltype="cf_sql_varchar">
      </cfquery>
      <cfif check.username EQ arguments.username>
        <cfif arguments.username EQ "">
          <cfreturn {
            text:'',
            class:''
          }>
        </cfif>
        <cfreturn {
          text:'You already have an account please login',
          class:'text-danger'
        }>
        
      <cfelse>
       <cfquery name="insertData" datasource="myDatabase">
        INSERT INTO userData (username , password , role)
        VALUES(
          <cfqueryparam value="#arguments.username#"  cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.password#"  cfsqltype="cf_sql_varchar">,
          <cfqueryparam value="#arguments.role#"  cfsqltype="cf_sql_varchar">
        )
      </cfquery>
      <cfreturn {
        text:'Your account has been created please login',
        class:'text-success'
      }>
      </cfif>
    </cffunction>


<!--- Function for LOGIN --->
    <cffunction name="login" access="public" returntype="any">
      <cfargument name="username" type="string" >
      <cfargument name="password" type="string" >

      <cfquery name="check" datasource="myDatabase">
        SELECT * FROM userData 
        WHERE username = <cfqueryparam value="#arguments.username#"  cfsqltype="cf_sql_varchar">
      </cfquery>
      <cfif check.username EQ arguments.username AND check.password EQ arguments.password>
        <cfif check.role EQ 'User'>
          <cfset session.userName = arguments.username>
          <cfset session.role = 'User'>
          <cflocation  url="welcome.cfm">
        <cfelseif check.role EQ 'Admin'>
          <cfset session.userName = arguments.username>
          <cfset session.role = 'Admin'>
          <cflocation  url="welcome.cfm">
        </cfif>
        <cfreturn {
          text:'Error occured pleace try again!',
          class:'text-warning'
        }>
        
      <cfelseif check.username EQ arguments.username AND check.password NEQ arguments.password>       
      <cfreturn {
        text:"Incorrect password",
        class:'text-danger'
      }>
      <cfelse>
        <cfreturn {
          text:"You don't have an account please signup",
          class:'text-danger'
        }>
      </cfif>
    </cffunction>


   <!--- Function for LOGIN --->
   <cffunction name="logOut" access="public" returntype="any">
    <cfset StructClear(session)>
    <cflocation url="login.cfc">
   </cffunction>


<!--- Function for ADD DATA --->
    <cffunction name="addData" access="public" returntype="any">
      <cfargument name="title" type="string">
      <cfargument name="description" type="string">

      <cfquery name="addDatas" datasource="myDatabase">
      INSERT INTO pageData (title , description)
      VALUES(
        <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
        <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">
      )
      </cfquery>
      <cfreturn 'Data added sussfully'>
    </cffunction>

    <cffunction name="getData" access="public" returntype="any">

      <cfquery name="getDatas" datasource="myDatabase">
      SELECT * FROM pageData  
      </cfquery>
      <cfreturn getDatas>
    </cffunction>
</cfcomponent>

