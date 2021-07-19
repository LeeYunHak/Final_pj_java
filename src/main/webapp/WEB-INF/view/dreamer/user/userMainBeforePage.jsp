<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userMainBeforePage.jsp</title>
<link rel="stylesheet" href="/resources/maincss.css">
</head>
<body>
	<div class="full" name="full">
		<!-- 네비게이션바 START -->
		<header class="navbar">
			<div class="nav-con">
				<div style="width: 100%;">
					<nav class="nv">
						<ul class="nv-st">
							<li><a id="nav3-1-logo" href="/user/loginUserPage"><img
									src="/resources/images/Dreamer.png" class="logo"></a>
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
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
							<li><button id="popup_open_btn">로그인/회원가입</button></li>
							<li style="float: right;"><button class="home-btn"
									type="button" onclick=" location.href='/company/mainBefore'">기업서비스</button></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		<!-- 네비게이션바 END -->
		<div class="drmain">
			<div class="drmain1">
				<div class="drmain1-1">
					<h1>
						예술인의 필모그래피를<br> 탄탄하게, 드리머
					</h1>
					<h2>&nbsp;</h2>
					<button id="startbtn" type="button">시작하기</button>
				</div>
				<img class="camera" src="/resources/images/camera.png">
			</div>
			<div class="drmain2">
				<img class="movie" src="/resources/images/movie.jpg">
				<div class="dramin2-1">
					<h2>
						예술인의 필모그래피를<br> 탄탄하게, 드리머
					</h2>
					<h4>&nbsp;</h4>
					<h4>
						나에게 딱 맞는 회사를 찾거나<br> 나에게 딱 맞는 회사가 커리어를 제안합니다.
					</h4>
				</div>
			</div>
		</div>
		<!--로그인 모달-->

		<div id="my_modal">
			<div class="ModalHeader" style="text-align: center;">
				<img src="/resources/images/Dreamer.png" class="logo" width="70px"
					height="10px">
				<button type="button" class="Modal_close_btn">X</button>
			</div>
			<div class="ModalBody">
				<div class="ModalBody_text" style="text-align: center;">
					<h4>&nbsp;</h4>
					<h2>
						예술인들을 위한 <br> 구인구직 플랫폼, 드리머!
					</h2>
					<h4>&nbsp;</h4>
				</div>
				<div class="ModalBody_input">
					<form action="/user/mainBefore" method="POST">
						<!-- ✔✔✔✔✔✔✔✔수정한 부분✔✔✔✔✔✔✔✔ -->
						<div class="padding-top-10">
							<label for="email">이메일</label>
							<div class="form-group">
								<input type="email" id="email" name="userEmail"
									placeholder="이메일을 입력해주세요" class="form-control">
							</div>
							<label for="password">비밀번호</label>
							<div class="form-group-pw">
								<input type="password" id="password" name="userPassword"
									placeholder="비밀번호를 입력해주세요" class="form-control">
							</div>
						</div>
						<div class="margin-top-10">
							<button type="submit" id="loginBtn" class="login-btn">로그인</button>
						</div>
						<div class="flex-between-center">
							<div class="checkBox">
								<label for="remember" class="label-margin-none"> <input
									type="checkbox" id="remember" name="remember">
									<div class="checkBox-text">로그인 유지</div>
								</label>
							</div>
							<a href="/user/findUser" style="font-size: 13px;"
								class="find-a-tag">아이디ㆍ비밀번호 찾기</a>
						</div>
					</form>
					<div>
						<div class="modal-text">SNS계정으로 간편하게 로그인 하세요.</div>
						<div class="sns_login">
							<a id="kakaoLoginBtn" class="sns-btn-kakao"> <img
								src="/resources/images/kakao_logo.png" alt="kakao_icon">
							</a> <a id="googleLoginBtn" class="sns-btn-google"> <img
								src="/resources/images/google_logo.png" alt="google_icon">
							</a>
						</div>
						<a href="joinUserPage.html"><button id="joinBtn">드리머 회원가입 하기
							</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/resources/mainjs.js"></script>

	<c:if test="${loginUser eq '없음' }">
		<script>
			alert("일치하는 회원이 없습니다.");
		</script>
	</c:if>
</body>
</html>