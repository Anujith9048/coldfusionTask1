<cfcomponent>
    <cffunction name="dateOfBirth" access="remote" returntype="string">
        <cfargument name="userDOB" type="string" required="true">
        <cfargument name="motherDOB" type="string" required="true">

        <cfset local.userDOB = #arguments.userDOB#>
        <cfset local.motherDOB = #arguments.motherDOB#>
        <cfset local.userBirth = parseDateTime(userDOB)>
        <cfset local.motherBirth = parseDateTime(motherDOB)>

        <cfset local.userYear = dateFormat(userBirth,"yyyy")>
        <cfset local.motherYear = dateFormat(motherBirth,"yyyy")>
        <cfset local.currentYear = dateFormat(now(),"yyyy")>
        <cfset local.currentDate = dateFormat(now(),"dd/mm/yyyy")>

        <cfset local.userMonth = month(userBirth)>
        <cfset local.userDay = day(userBirth)>
        <cfset local.motherMonth = month(motherBirth)>
        <cfset local.motherDay = day(motherBirth)>

        <cfset local.userAge = currentYear - userYear>
        <cfset local.motherAge = currentYear - motherYear>
        <cfset local.delAge = motherAge - userAge>

        <cfset local.userCurrentBirthDay = createDate(currentYear, userMonth, userDay)>
        <cfset local.userBirthday = dateFormat(userCurrentBirthDay , "dd/mm/yyy")>
        <cfset local.motherCurrentBirthDay = createDate(currentYear, motherMonth, motherDay)>
        <cfset local.motherBirthday = dateFormat(motherCurrentBirthDay , "dd/mm/yyy")>

        <cfset local.userDaysDiff = dateDiff("d", local.currentDate, local.userBirthDay)>
        <cfset local.daysDiffMother = dateDiff("d", local.currentDate, local.motherBirthDay)>
        <cfset local.nextYearDate =  createDate(currentYear+1, userMonth, userDay)>
        <cfset local.nextYear = dateFormat(local.nextYearDate , "dd/mm/yyy")>
        <cfset local.nextYearDateMother =  createDate(currentYear+1, motherMonth, motherDay)>
        <cfset local.nextYearMother = dateFormat(local.nextYearDateMother , "dd/mm/yyy")>


        <cfif local.userDaysDiff LT 0>
            <cfset local.userDaysDiff = dateDiff("d", local.currentDate, local.nextYear)>
        </cfif>
        <cfif local.daysDiffMother LT 0>
            <cfset local.daysDiffMother = dateDiff("d", local.currentDate, local.nextYearMother)>
        </cfif>

        <cfreturn "Your age :" & local.userAge & "<br>" &
        "Your mother delivered you in the age of "&local.delAge&"<br>"&
        "Your birthday is after "&local.userDaysDiff&" days <br>"&
        "Your mother's birthday is after "&local.daysDiffMother&" days <br>">


    </cffunction>
</cfcomponent>
