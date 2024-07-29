<cfcomponent>
    <cffunction name="generateCaptcha" access="public" returntype="any">
        <cfset local.randomNumber = RandRange(1000, 10000)>
        <cfset FileName = "captcha_#CreateUUID()#.png">
        <cfset local.destinationPath = expandPath('./assets/#FileName#')>
        <cfimage action="CAPTCHA" difficulty="medium" text="#local.randomNumber#" name="capchaImg" destination="#local.destinationPath#">
        
        <cfset session.captchaNumber = local.randomNumber>
        <cfset session.captchaFileName = FileName>
        <cfreturn FileName>
    </cffunction>

    <cffunction name="validateCaptcha" access="public" returntype="struct">
        <cfargument name="number" type="numeric" required="true">
        <cfargument name="email" type="string" required="true">
        <cfset newStruct =structNew()>
        <cfif NOT isValid("email",arguments.email)>
            <cfset newStruct.text = "Incorrect email!">
            <cfset newStruct.class = "text-center text-danger alert alert-danger">
            <cfreturn newStruct>

        </cfif>
        <cfif session.captchaNumber EQ arguments.number>
            <cfset newStruct.text = "Email Address successfully subscribed to our newsletter">
            <cfset newStruct.class = "text-center alert alert-success">
            <cfset structDelete(session, "captchaNumber")>
            <cfset structDelete(session, "captchaFileName")>
        <cfelse>
            <cfset newStruct.text = "Incorrect captcha!">
            <cfset newStruct.class = "text-center text-danger alert alert-danger">
        </cfif>
        <cfreturn newStruct>
    </cffunction>
</cfcomponent>
