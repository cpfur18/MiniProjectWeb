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
	    	<h2 class="text-center mb-4">회원 가입</h2>
	    	<!-- 회원 가입 폼 -->
		    <form id="regForm" action="${pageContext.servletContext.contextPath}/member/insert" method="post" class="needs-validation" novalidate>
		        <div class="row mb-3">
		            <label for="memberId" class="col-sm-2 col-form-label">* 아이디</label>
		            <div class="col-sm-7">
		                <input type="text" class="form-control" maxlength="10" name="id" id="memberId" required>
		            </div>
		            <div class="col-sm-3">
		                <button type="button" class="btn btn-outline-primary" id="duplicationCheck">중복확인</button>
		            </div>
		        </div>
		        <div class="row mb-3">
		            <label class="col-sm-2 col-form-label">* 비밀번호</label>
		            <div class="col-sm-10">
		                <input type="password" class="form-control" maxlength="10" name="pw" required>
		            </div>
		        </div>
		        <div class="row mb-3">
		            <label class="col-sm-2 col-form-label">* 비밀번호확인</label>
		            <div class="col-sm-10">
		                <input type="password" class="form-control" maxlength="10" name="pw2">
		            </div>
		        </div>
		        <div class="row mb-3">
		            <label class="col-sm-2 col-form-label">* 이름</label>
		            <div class="col-sm-10">
		                <input type="text" class="form-control" maxlength="10" name="userName" required>
		            </div>
		        </div>
		        <div class="row mb-3">
		            <label class="col-sm-2 col-form-label">연락처</label>
		            <div class="col-sm-10">
		                <input type="tel" class="form-control" name="tel">
		            </div>
		        </div>
		
		        <div class="text-center">
		            <button type="reset" class="btn btn-secondary" onclick="location.href='${ pageContext.servletContext.contextPath}'">메인으로</button>
		            <button type="submit" class="btn btn-primary" onclick="location.href='${ pageContext.servletContext.contextPath }/member/insert'">가입하기</button>
		        </div>
		    </form>
		</div>
	</div>
	
</body>
</html>