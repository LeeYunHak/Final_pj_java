<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userMainBeforePage.jsp</title>
<link rel="stylesheet" href="/resources/maincss.css">
</head>
<body>
	<header>
		<h2>
			<span><a href=# class="dreamer">Dreamer</a> </span>&nbsp;
		</h2>
		<div class="nav">
			<span><button id="popup_open_btn">로그인/회원가입</button></span>&nbsp; <span><button
					id="servicebtn">기업서비스</button></span> &nbsp;&nbsp; &nbsp;&nbsp;
		</div>
	</header>

	<section>
		<div id="drmain1">
			<h1>
				예술인의 필모그래피를 <br> 탄탄하게, 드리머
			</h1>
			<button id="startbtn" type="button">시작하기</button>
		</div>
		<div>
			<img class="camera" src="/resources/images/camera.jpg">
		</div>
	</section>
	<section>
		<div>
			<img class="movie" src="/resources/images/movie.jpg">
		</div>
		<div id="drmain2">
			<p>
			<h1>
				예술인의 필모그래피를<br> 탄탄하게, 드리머<br>
			</h1>

			<br> 나에게 딱 맞는 회사를 찾거나<br> 나에게 딱 맞는 회사가 커리어를 제안합니다.
			</p>
		</div>
	</section>
	<!--로그인 모달-->

	<div id="my_modal">
		<div class="ModalHeader" style="text-align: center;">
			<h3>Dreamer</h3>
			<button type="button" class="Modal_close_btn">X</button>
		</div>
		<div class="ModalBody">
			<div class="ModalBody_text" style="text-align: center;">
				<h1>
					예술인들을 위한 <br> 구인구직 플랫폼, 드리머!
				</h1>
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
						<a id="naverLoginBtn" class="sns-btn-naver"> <img
							src="/resources/images/naver_logo.png" alt="naver_icon">
						</a> <a id="kakaoLoginBtn"
							href="https://kauth.kakao.com/oauth/authorize
								    ?client_id=fd1d15422c0c6caf9c050721c91ca6e7
								    &redirect_uri=http://localhost:8080/login
								    &response_type=code"
							class="sns-btn-kakao"> <img
							src="/resources/images/kakao_logo.png" alt="kakao_icon">
						</a> <a id="googleLoginBtn" href="/user/login" class="sns-btn-google">
							<img src="/resources/images/google_logo.png" alt="google_icon">
						</a> <a id="appleLoginBtn" class="sns-btn-apple"> <img
							src="/resources/images/apple_logo.png" alt="">
						</a>
					</div>
					<a href="/user/joinUser"><button id="joinBtn">드리머 회원가입
							하기</button></a>
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