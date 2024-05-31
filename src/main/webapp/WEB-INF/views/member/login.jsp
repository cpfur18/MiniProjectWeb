<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menubar.jsp"></jsp:include>
	
	<div class="container">
		<div class="outer outer-member-insert container mt-4">
	    	<h2 class="text-center mb-4">로그인</h2>
	    	<!-- 로그인 폼 -->
		    <form id="loginForm" action="${pageContext.servletContext.contextPath}/member/login" method="post" class="needs-validation" novalidate>
		        <div class="row mb-3">
		            <label for="memberId" class="col-sm-2 col-form-label">* 아이디</label>
		            <div class="col-sm-10">
		                <input type="text" class="form-control" maxlength="10" name="id" id="memberId" required>
		            </div>
		        </div>
		        <div class="row mb-3">
		            <label class="col-sm-2 col-form-label">* 비밀번호</label>
		            <div class="col-sm-10">
		                <input type="password" class="form-control" maxlength="10" name="pw" required>
		            </div>
		        </div>
		
		        <div class="text-center">
		            <button type="reset" class="btn btn-secondary" onclick="location.href='${ pageContext.servletContext.contextPath}'">메인으로</button>
		            <button type="submit" class="btn btn-primary" onclick="location.href='${ pageContext.servletContext.contextPath }/member/login'">로그인</button>
		        </div>
		    </form>
		</div>
	</div>
	
</body>
</html>