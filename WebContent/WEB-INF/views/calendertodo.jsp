<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>

<br>
<br>
<div>	
<h1><% out.print("Today is: "+java.util.Calendar.getInstance().getTime()); %>  
<form action="redirectCal">
  Event: <input type="date" name="todo">
  <input type="submit">
</form>
</h1>
</div>
<div>
<h1>Event on: ${eventdate}</h1>


</div>



<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>