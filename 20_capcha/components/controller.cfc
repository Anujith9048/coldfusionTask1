<cfcomponent>
    <cffunction name="capcha" access="public" returntype="any">
        <cfargument  name="number" type="numeric">
        <cfargument  name="email" type="string">
        <cfset local.randomNumber=RandRange(1000,10000)>
        <cfset FileName = "captcha_#CreateUUID()#.png">
        <cfset local.resultText="">
        <cfset local.destinationPath = expandPath('./assets/#FileName#')>
        <cfset session.captchaNumber = local.randomNumber>
        <cfimage action="CAPTCHA" difficulty="medium" text="#local.randomNumber#" name="capchaImg" destination="#local.destinationPath#">
        <cfreturn FileName>
    </cffunction>
</cfcomponent>
