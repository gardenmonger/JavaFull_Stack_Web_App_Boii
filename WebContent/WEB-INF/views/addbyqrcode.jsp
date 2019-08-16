<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<br>
<div class="container-fluid">


<div class="row">




    <div class="col-8">
    <div class="my-3 p-3 bg-white rounded shadow-sm">
		<h6 class="border-bottom border-gray pb-2 mb-0">Suggestions</h6>
		<c:forEach var="users" items="${usersList}">
		<div class="media text-muted pt-3 ">
			<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32"
				xmlns="http://www.w3.org/2000/svg"
				preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
				aria-label="Placeholder: 32x32">
				<title>Placeholder</title><rect width="100%" height="100%"
					fill="#007bff"></rect>
				<text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
			<p>${users.getFirstName()}</p>  
			<%-- <p>${users.getLastName()}</p> --%>
			</div>
			
			<p>Email: ${users.getEmail()}</p>
			<a href="${pageContext.request.contextPath}/updateEmployee/${users.id}">Follow</a>
			<a href="${pageContext.request.contextPath}/removeEmployee/${users.id}">Unfollow</a>
			<hr>
			
			
		
			
		</c:forEach>
	</div>
    
    
    
    
    </div>
    
    
    
    
    
    
    
    
    <div class="col-4">
    		<div class="media text-muted pt-3 position-fixed border-bottom border-gray shadow-sm">
			  <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search Users" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

		</div>
    
    
    
    
    
    </div>
  </div>
</div>
  
  
  
  
  
</div>




</body>
</html>