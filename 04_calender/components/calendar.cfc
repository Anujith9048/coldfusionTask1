<cfcomponent>
    <cffunction name="getCurrentDate" access="public" returntype="struct">
        <cfset local.currentDate =  dateFormat(now(), "dd/mm/yyyy")>
        <cfset local.currentDay = dateFormat(now(), "dd")>
        <cfset local.currentMonthN =  dateFormat(now(), "mm")>
        <cfset local.currentMonth =  dateFormat(now(), "mmmm")>
        <cfset local.DaysInMonth = daysInMonth(currentDate)>
        <cfset local.lastDayInMonth = createDate(dateFormat(now(), "yyyy"), currentMonthN, DaysInMonth)>
        <cfset local.lastDay = dateFormat(lastDayInMonth ,"dd/mm/yyyy")>
        <cfset local.lastDayNum = dayOfWeek(lastDay)>

        
        <cfset local.fridaydiff = local.lastDayNum - 6>
        <cfif local.fridaydiff lt 0>
            <cfset local.fridaydiff = local.fridaydiff + 7>
        </cfif>
        <cfset local.lastFriday = dateAdd("d", -local.fridaydiff, local.lastDayInMonth)>
 
        
        <cfset local.lastFridayDate = dateFormat(local.lastFriday, "dd/mm/yyyy")>


        <cfset local.result={
            date = local.currentDate,
            monthN = local.currentMonthN,
            month = local.currentMonth,
            lastDay =local.lastDay,
            lastFriday = local.lastFridayDate
        }>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
