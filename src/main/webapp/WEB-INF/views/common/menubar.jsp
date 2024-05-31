<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/resources/css/headers.css">
</head>
<body>
	<c:set var="context" value="${ pageContext.servletContext.contextPath }"/>
	<div class="container-fluid">
	    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
	      <div class="col-md-3 mb-2 mb-md-0">
	        <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">
	          <svg class="bi" width="40" height="32" role="img" aria-label="Bootstrap"><image href="${ pageContext.servletContext.contextPath}/resources/img/menu/logo.png" width="40" height="32"/></use></svg>
	        </a>
	      </div>
	
	      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
	        <li><a href="<c:out value='${ context }'/>" class="nav-link px-2 link-secondary">Home</a></li>
	        <li><a href="<c:out value='${ context }'/>/reservation" class="nav-link px-2">Reservation</a></li>
	        <li><a href="<c:out value='${ context }'/>/community" class="nav-link px-2">Community</a></li>
	        <li><a href="<c:out value='${ context }'/>/faq" class="nav-link px-2">FAQs</a></li>
	        <li><a href="<c:out value='${ context }'/>/about" class="nav-link px-2">About</a></li>
	      </ul>
	
	      <div class="col-md-3 text-end">
	       <c:if test="${ empty loginMember }">
	        <button type="button" onclick="location.href='<c:out value='${ context }'/>/member/login';" class="btn btn-outline-primary me-2">Login</button>
	        <button type="button" onclick="location.href='<c:out value='${ context }'/>/member/insert';" class="btn btn-primary">Sign-up</button>
	       </c:if>
	       
	       <c:if test="${ !empty loginMember }">
		     <c:choose>
	       		<c:when test="${ loginMember.id eq 'admin' }">
		       		<button type="button" onclick="location.href='<c:out value='${ context }'/>/admin';" class="btn btn-outline-primary me-2">Admin</button>
		       	</c:when>
		       	<c:otherwise>
		       		<button type="button" onclick="location.href='<c:out value='${ context }'/>/member/mypage';" class="btn btn-outline-primary me-2">MyPage</button>
		       	</c:otherwise>   
			 </c:choose>
			<button type="button" onclick="location.href='<c:out value='${ context }'/>/member/logout';" class="btn btn-outline-primary me-2">Logout</button>
	       </c:if>
	      </div>
	    </header>
	</div>
	
	
</body>
</html>