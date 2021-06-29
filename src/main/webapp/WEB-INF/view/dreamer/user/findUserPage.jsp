<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디ㆍ비밀번호 찾기</title>
<link rel="stylesheet" href="/resources/findcss.css">
</head>

<body>
	<header>
		<h2>
			<span><a href="/user/mainBefore" class="dreamer">Dreamer</a></span>&nbsp;
		</h2>
		<div class="nav"></div>
	</header>
	<div class="container-margin-top-80">
		<div class="col-xs-offset-4-col-xs-4">
			<div class="row">
				<div class="col-xs-12">
					<h3>아이디ㆍ비밀번호 찾기</h3>
				</div>
			</div>
			<div class="row-margin-top-15">
				<div class="col-xs-12">
					<div class="panel-panel-default">
						<div class="panel-heading">아이디 찾기</div>
						<div class="panel-body">
							<form action="/user/findUser" method="POST" name="findform">
								<div class="multi-form-group-margin-top-0-margin-bottom-0">
									<div class="form-group">
										<input type="text" class="form-control" name="userName"
											placeholder="이름" required>
									</div>
									<div class="form-group">
										<input type="tel" class="form-control" name="userPhone"
											placeholder="휴대전화번호" required>
									</div>
									<div class="margin-top-15-margin-bottom-15">
										<small>아이디를 찾기 위해 가입시 입력한 이름과 연락처를 입력해 주세요.</small>
									</div>
									<input type="submit"
										class="btn-btn-primary-btn-sm-btn-block-margin-top-5"
										value="아이디 찾기">
									<!-- 이름, 연락처 일치하지 않을 때 -->
									<c:if test="${check == 1 }">
										<script>
											alert("일치하는 정보가 존재하지 않습니다.");
										</script>
										<!-- <div style="color: red; margin-top: 10px">일치하는 정보가 존재하지
											않습니다.</div> -->
									</c:if>
									<!-- 일치할 떄 -->
									<c:if test="${check == 0 }">
										<%-- <div style="color: red; margin-top: 10px">찾으시는 아이디는
											'${find_id }' 입니다.</div> --%>
										<script type="text/javascript">
											alert("찾으시는 아이디는 '${find_id }' 입니다.");
										</script>
									</c:if>
								</div>
							</form>
						</div>
					</div>
					<div class="panel-panel-default-margin-bottom-0">
						<div class="panel-heading">비밀번호 찾기</div>
						<div class="panel-body">
							<form action="/user/findUserPw" method="POST">
								<div class="multi-form-group-margin-top-0-margin-bottom-0">
									<div class="form-group">
										<input type="email" id="email" name="userEmail"
											class="form-control" placeholder="이메일" required>
									</div>
									<div class="margin-top-15-margin-bottom-15">
										<small>가입 시 등록하신 이메일 주소를 입력해 주세요. 비밀번호 재설정 링크를 보내드립니다.</small>
									</div>
									<input type="submit"
										class="btn-btn-primary-btn-sm-btn-block-margin-top-5"
										value="비밀번호 변경 URL 전송">
										<c:if test="${checked == 1 }">
										<script>
											alert("전송완료");
										</script>
										</c:if>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row-margin-top-10">
				<div class="col-xs-12">
					<div class="col-xs-6-text-left">
						<div class="row">
							<a href="/user/mainBefore" class="logA">
								<h5>로그인</h5>
							</a>
						</div>
					</div>
					<div class="col-xs-6-text-right">
						<div class="row">
							<a href="join.html" class="logA">
								<h5>회원가입</h5>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>