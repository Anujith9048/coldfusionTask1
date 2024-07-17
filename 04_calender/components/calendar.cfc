<cfcomponent>
    <cffunction name="getCurrentDate" access="public" returntype="struct">
        <cfset local.currentDate = dateFormat(now(), "dd/mm/yyyy")>
        <cfset local.currentDay = dateFormat(now(), "dd")>
        <cfset local.currentMonthN = dateFormat(now(), "mm")>
        <cfset local.currentMonth = dateFormat(now(), "mmmm")>
        <cfset local.DaysInMonth = daysInMonth(now())>
        <cfset local.lastDayInMonth = createDate(year(now()), local.currentMonthN, local.DaysInMonth)>
        <cfset local.lastDay = dateFormat(local.lastDayInMonth, "dd/mm/yyyy")>
        <cfset local.lastDayNum = dayOfWeek(local.lastDayInMonth)>

        <cfset local.fridaydiff = local.lastDayNum - 6>
        <cfif local.fridaydiff lt 0>
            <cfset local.fridaydiff = local.fridaydiff + 7>
        </cfif>
        <cfset local.lastFriday = dateAdd("d", -local.fridaydiff, local.lastDayInMonth)>

        <cfset local.lastFridayDate = dateFormat(local.lastFriday, "dd/mm/yyyy")>

        <cfset local.result = {
            date = local.currentDate,
            monthN = local.currentMonthN,
            month = local.currentMonth,
            lastDay = local.lastDay,
            lastFriday = local.lastFridayDate
        }>
        <cfreturn local.result>
    </cffunction>

    <cffunction name="getLastFiveDays" access="public" returntype="array">
        <cfset var lastFiveDays = []>
        <cfset var currentDate = now()>
        
        <cfloop index="i" from="1" to="5">
            <cfset local.dayDate = dateAdd("d", -i, currentDate)>            
            <cfset local.dayOfWeek = dayOfWeek(local.dayDate)>
            <cfset local.dayName = dayOfWeekAsString(local.dayOfWeek)>
            
            <cfswitch expression="#local.dayOfWeek#">
                <cfcase value="1">
                    <cfset local.dayClass = "sunday">
                </cfcase>
                <cfcase value="2">
                    <cfset local.dayClass = "monday">
                </cfcase>
                <cfcase value="3">
                    <cfset local.dayClass = "tuesday">
                </cfcase>
                <cfcase value="4">
                    <cfset local.dayClass = "wednesday">
                </cfcase>
                <cfcase value="5">
                    <cfset local.dayClass = "thursday">
                </cfcase>
                <cfcase value="6">
                    <cfset local.dayClass = "friday">
                </cfcase>
                <cfcase value="7">
                    <cfset local.dayClass = "saturday">
                </cfcase>
            </cfswitch>
            
            <cfset local.dayFormatted = dateFormat(local.dayDate, "dd/mm/yyyy")>
            
            <cfset arrayAppend(lastFiveDays, {
                date = local.dayFormatted,
                dayClass = local.dayClass,
                dayName = local.dayName
            })>
        </cfloop>
        
        <cfreturn lastFiveDays>
    </cffunction>
    
</cfcomponent>
