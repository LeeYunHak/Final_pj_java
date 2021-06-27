<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userMainPage.jsp</title>
<link rel="stylesheet" href="/resources/">
</head>
<body>
	<header>
		<h2>
			<span><a href=# class="dreamer">Dreamer</a>
			</span>&nbsp;
		</h2>
		<div class="nav">
			<span><button id="quest">탐색</button></span>
			  <span><button id="resume">이력서</button></span>  
		</div>
		
		이멜:${loginUser.userEmail }
		이름:${loginUser.userName }
		${sessionScope.token}
		
	</header>
</body>
</html>