<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pwFindUserPage.jsp</title>
</head>
<body>
	<h1>비밀번호 수정 페이지</h1>
	<form action="/user/pwUpdate" method="post">
		<input type="hidden" name="userEmail" readonly="readonly" value="${stUser.userEmail }">
		<input type="text" name="userPassword" placeholder="변경할 비밀번호 입력하세요">
		<input type="submit" value="수정">
	</form>
</body>
</html>