<cfcomponent>

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



    <cffunction name="login" access="public" returntype="any">
      <cfargument name="username" type="string" >
      <cfargument name="password" type="string" >

      <cfquery name="check" datasource="myDatabase">
        SELECT * FROM userData 
        WHERE username = <cfqueryparam value="#arguments.username#"  cfsqltype="cf_sql_varchar">
      </cfquery>
      <cfif check.username EQ arguments.username AND check.password EQ arguments.password>
        <cfreturn {
          text:'Login Successfull',
          class:'text-success'
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
</cfcomponent>

