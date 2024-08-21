<cfcomponent>

<!--- Function for SIGNUP --->
    <cffunction name="signup" access="public"  returntype="any">
      <cfargument name="username" type="string" >
      <cfargument name="password" type="string" >
      <cfargument name="role" type="string" >
      <cfargument name="email" type="string" >
      <cfquery name="check" datasource="myDatabase">
        SELECT * 
        FROM userData 
        WHERE email = <cfqueryparam value="#arguments.email#"  cfsqltype="cf_sql_varchar">
      </cfquery>

      <cfif check.email EQ arguments.email AND check.role EQ arguments.role>
        <cfif arguments.email EQ "">
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
          INSERT INTO userData (username, password , role, email)
          VALUES(
            <cfqueryparam value="#arguments.username#"  cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.password#"  cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.role#"  cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.email#"  cfsqltype="cf_sql_varchar">
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
      <cfargument name="email" type="string" >
      <cfargument name="password" type="string" >

      <cfquery name="check" datasource="myDatabase">
        SELECT * FROM userData 
        WHERE email = <cfqueryparam value="#arguments.email#"  cfsqltype="cf_sql_varchar">

      </cfquery>
      <cfif check.email EQ arguments.email AND check.password EQ arguments.password>
        <cfif check.role EQ 'User'>
          <cfset session.isLogged =true>
          <cfset session.userName = check.username>
          <cfset session.role = 'User'>
          <cflocation  url="welcome.cfm">

        <cfelseif check.role EQ 'Admin'>
          <cfset session.isLogged =true>
          <cfset session.userName = check.username>
          <cfset session.role = 'Admin'>
          <cflocation  url="welcome.cfm">
          
        <cfelseif check.role EQ 'Editor'>
          <cfset session.isLogged =true>
          <cfset session.userName = check.username>
          <cfset session.role = 'Editor'>
          <cflocation  url="welcome.cfm">
        </cfif>
        <cfreturn {
          text:'Enter username and password',
          class:'text-danger'
        }>
        
      <cfelseif check.email EQ arguments.email AND check.password NEQ arguments.password>       
      <cfreturn {
        text:"Incorrect email or password",
        class:'text-danger'
      }>
      <cfelse>
        <cfreturn {
          text:"You don't have an account please signup",
          class:'text-danger'
        }>
      </cfif>
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

<!--- Function to EDIT DATA --->
    <cffunction name="editData" access="public" returntype="any">
      <cfargument name="title" type="string">
      <cfargument name="description" type="string">
      <cfargument name="id" type="string">
      <cfquery name="addDatas" datasource="myDatabase">
          UPDATE pageData
          SET title = <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
          description = <cfqueryparam value="#arguments.description#" cfsqltype="cf_sql_varchar">
          WHERE pageId =<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_varchar">;
      </cfquery>
      <cflocation  url="AdminList.cfm">
    </cffunction>


<!--- Function to GET DATA --->
    <cffunction name="getData" access="public" returntype="any">

      <cfquery name="getDatas" datasource="myDatabase">
        SELECT * FROM pageData  
      </cfquery>

      <cfreturn getDatas>
    </cffunction>

    <!--- Function to GET VALUES --->
        <cffunction name="getvalue" access="public" returntype="any">
          <cfargument name="value" type="string">
          <cfquery name="getDatas" datasource="myDatabase">
          SELECT * FROM pageData WHERE pageId = <cfqueryparam value="#arguments.value#" cfsqltype="cf_sql_varchar">
          </cfquery>
          <cfreturn getDatas>
        </cffunction>

    <!--- Function to GET LIST --->
    <cffunction name="getList" access="public" returntype="any">
      <cfargument name="value" type="string">
      <cfquery name="qgetData" datasource="myDatabase">
      SELECT * FROM pageData WHERE pageId = <cfqueryparam value="#arguments.value#" cfsqltype="cf_sql_varchar">
      </cfquery>
      <cfreturn qgetData>
    </cffunction>

   <!--- Function to deleteRow --->
      <cffunction name="deleteRow" access="remote" returnformat="plain">
        <cfargument name="pageId" type="string">
        <cfquery name="deleteDatas" datasource="myDatabase">
         DELETE FROM pageData WHERE pageId = <cfqueryparam value="#arguments.pageId#" cfsqltype="cf_sql_varchar">  
        </cfquery>
        <cfreturn true>
      </cffunction>
    </cfcomponent>


