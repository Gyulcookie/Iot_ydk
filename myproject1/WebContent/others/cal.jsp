<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<%
Calendar cal = Calendar.getInstance();
int y = cal.get(Calendar.YEAR);
int m = cal.get(Calendar.MONTH);

cal.set(y,m,1);
int dayOfweek = cal.get(Calendar.DAY_OF_WEEK);
int lastday = cal.getActualMaximum(Calendar.DATE);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
</head>
<body>
<div>
<form name ="frm" method ="post" action="cal.jsp"></form>
<%=y %>년 <%=m+1 %>월
</div>
<table border="1" width = "300">
	<tr>
		<th>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th>토</th>
	</tr>
	<tr align="center" >
	<%
		int count = 0;
		for(int i =1;i<dayOfweek;i++)
		{
			count++;
		%>
			<td></td>
		<%}
		for(int d =1;d<=lastday;d++)
		{
			count++;
		%>
		<td><%=d %></td>
		<%
			if(count%7 == 0){
				out.print("<tr align ='center'></tr>");
			}
		}
	%>
	</tr>
</table>
</body>
</html>