<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Pragma","no-cache");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/profileEdit.css">
    <title>profileEdit</title>
</head>
<body>
    <div class="full">
        <header>
            <h2><span><a href="/user/mainAfterMain" class="dreamer">Dreamer</a></h2>
            <div class="navi">
                <span><button id="selectnavi" type="button">탐색</button></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="resume" type="button">이력서</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="mp">
                    <img id="search1" src="/resources/images/search.png" style="width: 30px; height: 30px;">
                    <img id="mypage1" src="/resources/images/avatar.png" style="width: 30px; height: 30px;">
                </div>
            </div>    
        </header>
        <div class="Blank"></div>
        <section class="sec">
            <h2 class="subheading">프로필</h2>
            <div class="mainFrame">
                <aside class="sidebar">
                    <div class="sidebar-contents">
                        <div class="first-contents">
                            <div class="profile-img" style="background-image: url('https://lh3.googleusercontent.com/a/AATXAJxUk7k9zuTifNm76mAqm6ti2Ca9Z96pTotTHEv1=s96-c');">
                                <div class="img-input">
                                    <input type="file" accept="image/*">
                                    <i class="fi-fi-camera" role="presentation"></i>
                                    <!-- <i class="camer_icon" role="presentation"></i> -->
                                </div>
                            </div>
                            <a href="/user/profileMain" class="myprofile_a"> <!--주소에 프로필설정창가게 하셈-->
                                <dl>
                                    <dt id="namename" class="namename">${loginUser.userName }</dt>
                                    <dd>${loginUser.userEmail}</dd>
                                    <dd>${loginUser.userPhone}</dd>
                                </dl>
                            </a>
                        </div>
                        <div class="third-contents">
                            <a href="/user/profileMain"><div class="third-contents-btn">프로필 정보</div></a> <!--계정 설정으로 가는링크-->
                        </div>
                    </div>
                </aside>
                <section class="m-contents">
                	<form action="/user/profileEdit" method="post">
	                    <div class="status">
	                        <dl class="Form-title">
	                            <dt style="color: #333;font-size: 20px;font-weight: 600;line-height: 1;display: block;">기본정보 수정</dt>
	                            <dd style="margin-top: 18px;color: #9a9a9a;font-size: 16px;font-weight: 400;line-height: 1.8;margin-left: 0;">지원 결과 또는 추천 포지션 정보를 받아볼 이메일/연락처 정보 입력해주세요.</dd>
	                        </dl>
	                        <div class="modifyform">
	                            <div class="FormBlock-content" style="padding-right: 20px; padding-left: 20px;">
	                            <label for="name" class="name"><h6>이름</h6><input id="name" type="text" autocomplete="off" value="${pofileEditUpdate.userName }"></label>
	                            <label for="pwd" class="pwd"><h6>비밀번호</h6><input id="pwd" type="password" autocomplete="off" value="${pofileEditUpdate.userPassword}"></label>
	                            <label for="email" class="email"><h6>이메일</h6><input id="email" type="email" autocomplete="off" value="${pofileEditUpdate.userEmail}"></label>
	                            <label for="mobile" class="phone"><h6>연락처</h6><input id="mobile" class="phonenumInput" type="text" value="${pofileEditUpdate.userPhone}"></label>
	                            </div>
	                        </div>
	                    </div>
	                    <footer class="FormFooter-edit">
	                        <button type="submit" id="submit" class="submit">수정하기</button>
	                        <button type="button" id="resign" class="resign" onclick="location.href='/user/userMainBefore'">회원탈퇴하기</button>    
	                    </footer>
                    </form>
                </section>
            </div>
        </section>
    </div>
</body>
</html>