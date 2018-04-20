<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%  
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
    int currentMonth=currentDate.get(Calendar.MONTH);
    int currentDay=currentDate.get(Calendar.DATE);
%>


<div class="footer">
    <p>&copy; Copyright <%=currentMonth%>/<%=currentDay%>/<%= currentYear %> Titan Banking Inc.</p></div>
</body>
</html>
