<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="/resources/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/companyMain.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<title>기업서비스 메인 페이지(로그인 전)</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
</head>

<body>
	<div class="full">
		<!-- 네비게이션바 START -->
		<header class="navbar">
			<div class="nav-con">
				<div>
					<nav class="nv">
						<ul class="nv-st">
							<li class="nv-it"><a id="nav3-1-logo" href="/company/mainBefore"><img
									src="/resources/images/Dreamer_W.png" class="logo"></a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-2-login" type="button">채용담당자 로그인</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-3-join" type="button"
								href="/company/companyJoin">채용담당자 가입</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li style="float: right;"><button class="home-btn"
									type="button" onclick="location.href = '/user/mainBefore'">드리머
									홈</button></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		<!-- 네비게이션바 END -->
		<div class="sec">
			<div class="mainFrame">
				<div class="text1"
					style="width: 500px; height: 100px; top: 15%; left: 50%; position: absolute; margin-top: -100px; margin-left: -250px; text-align: center; line-height: 40px;">
					<h1 style="display: inline-block;">사람</h1>
					<h1 style="display: inline-block; color: #a8a8a8;">과</h1>
					<h1 style="display: inline-block;">일자리</h1>
					<h1 style="display: inline-block; color: #a8a8a8;">를 가장 인간적이고</h1>
					<h1 style="display: inline-block; color: #a8a8a8;">효율적으로</h1>
					<h1 style="display: inline-block;">연결</h1>
					<h1 style="display: inline-block; color: #a8a8a8;">합니다</h1>
				</div>
				<div style="height: 700px;">
					<div
						style="width: 150px; height: 100px; top: 70%; left: 10%; position: absolute; margin-top: -50px; display: inline-block; z-index: 1; line-height: 40px;">
					</div>
					<div
						style="width: 500px; height: 130px; top: 40%; left: 50%; position: absolute; margin-top: -70px; margin-left: -250px; display: inline-block; z-index: 1; color: white; line-height: 40px;">
						<h2>
							국내외 200만유저 및 10,000개 기업 이용<br>공고 후 채용 성공률 52%<br>채용 후
							6개월 내 채용 유지율 95%<br>기존채널 대비 40% 이상 채용 비용 절감
						</h2>
					</div>
					<div style="width: 100%;">
						<img src="/resources/images/movie.jpg"
							style="width: 100%; height: 800px; top: 60%; position: absolute; margin-top: -300px;">
					</div>
				</div>
				<div class="blank"></div>

			</div>
		</div>
	</div>
	<div id="my_modal2">
		<div>
			<div class="ModalHeader2" style="text-align: center;">
				<span style="text-align: center; font-size: 20px;">채용담당자 로그인</span>
				<button type="button" class="Modal_close_btn2">X</button>
				<div
					style="width: 102%; border-top: 1px solid #c8c8c8; margin-top: 20px;"></div>
			</div>
			<div class="ModalBody2">
				<div>
					<h4 style="text-align: left; margin-left: 20px;">지원 정보</h4>
					<form name="info" action="/company/mainBefore" method="POST">
						<div style="margin-top: 20px;">
							<label><input required id="email" type="email" name="companyEmail"
								placeholder="회사 이메일 (로그인 아이디로 사용됩니다.)" autocomplete="off"></label>
							<label><input required id="pwd" type="password" name="companyPassword"
								placeholder="비밀번호" autocomplete="off"></label>
						</div>
					<div>
						<input type="submit" id="upload" value="로그인"></input>
						<input type="button" id="change" value="비밀번호 변경"></input>
					</div>
					</form>
				</div>
			</div>
			<footer class="foot">
				<div
					style="width: 96%; border-top: 1px solid #c8c8c8; padding-top: 20px;"></div>
				<div style="position: absolute; left: 110px;">
					<h5 style="display: inline-block; color: #a8a8a8; font-size: 15px;">계정이
						없으신가요?&nbsp;&nbsp;&nbsp;</h5>
					<a href="/company/companyJoin"
						style="display: inline-block; font-size: 15px; color: black; font-weight: bold;">채용담당자
						계정 만들기</a>
				</div>
			</footer>
		</div>
	</div>
	<div id="my_modal1">
		<div class="ModalHeader1" style="text-align: center;">
			<span
				style="text-align: center; margin-right: -25px; font-size: 20px;">채용담당자
				로그인</span>
			<button type="button" class="Modal_close_btn1">X</button>
			<div
				style="width: 100%; border-top: 1px solid #c8c8c8; margin-top: 20px;"></div>
		</div>
		<div class="ModalBody1">
			<div>
				<label><input required id="findemail" type="email"
					placeholder="회사 이메일 (로그인계정)" autocomplete="off"></label>
				<h5 style="display: inline-block; color: #a8a8a8; font-size: 15px;">비밀번호를
					재설정할 이메일 계정을 입력해주세요</h5>
			</div>
			<footer class="foot">
				<input type="submit" id="upload" value="완료"
					onclick="javascript:location.href='/company/mainBefore'"></input>
			</footer>
		</div>
	</div>
	<script type="text/javascript" src="/resources/companyMain.js">
		
	</script>
	<c:if test="${loginUser eq '없음' }">
		<script>
			alert("일치하는 회원이 없습니다.");
		</script>
	</c:if>
</body>
</html>
