<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!-- 네비게이션바 START -->
    <header id="nav1" role="presentation">
        <div id="nav2" role="presentation">
            <ul id="nav3">
                <div>
                    <li><a id="nav3-1-logo" href="/user/mainAfterMain"><img src="/resources/images/Dreamer.png" class="logo"></a>
                    </li>
                    <div style="font-weight: bold; font-size: 10px;">
                        <ul>
                            <div class="blank2"></div>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-2-Select" type="button">탐색</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">이력서</a></li>
                            <li><a id="nav3-4-Bookmark" type="button" href="mydreamer.html">북마크</a></li>
                            <li><a id="nav3-5-ConstructionSupport" type="button" href="지원현황 페이지">지원현황</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="CVpage.html">&nbsp;</a></li>
                            <div class="blank1"></div>
                            <div class="blank2"></div>
                            <div>
                                <a id="nav3-7-MyPage"><img class="avatar" src="/resources/images/avatar.png"></a>
                                <div class="arrow_box">
                                    <div class="blank">
                                        <p></p>
                                    </div>
                                    <div class="mydreamer"><a href="/user/mydreamer"
                                            style="text-decoration: none;color: #00cec9;">
                                            MY드리머</a></div>
                                    <div class="profile"><a href="/user/profileMain"
                                            style="text-decoration: none;color: #00cec9;">
                                            프로필</a></div>
                                    <div class="logout"><a href="/user/userMainBefore"
                                            style="text-decoration: none;color: #00cec9;">
                                            로그아웃</a></div>
                                    <div class="blank">
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                            <li><a id="nav3-6-ProfileName" type="button" href="/user/mydreamer"
                                    style="color: brown; font-size: 15px;">${loginUser.userName }</a>
                                <div class="blank1"></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </ul>
        </div>
    </header>
    <!-- 네비게이션바 END -->
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
	                            <c:if test="${number eq 1 }">
	                            <div class="FormBlock-content" style="padding-right: 20px; padding-left: 20px;">
		                            <label for="name" class="name"><h6>이름</h6><input id="name" name="userName" type="text" placeholder="이름을 입력하세요" autocomplete="off" value="${loginUser.userName }"></label>
		                            <label for="pwd" class="pwd"><h6>비밀번호</h6><input id="pwd" name="userPassword" type="password" placeholder="비밀번호를 입력하세요" autocomplete="off" value="${loginUser.userPassword}"></label>
		                            <label for="email" class="email"><h6>이메일</h6><input id="email" name="userEmail" type="email" placeholder="이메일을 입력하세요" autocomplete="off" value="${loginUser.userEmail}"></label>
		                            <label for="mobile" class="phone"><h6>연락처</h6><input id="mobile" name="userPhone" class="phonenumInput" placeholder="연락처를 입력하세요" type="text" value="${loginUser.userPhone}"></label>
		                            </div>
	                            </c:if>
	                            <c:if test="${number eq 0 }">
	                            <div class="FormBlock-content" style="padding-right: 20px; padding-left: 20px;">
		                            <label for="name" class="name"><h6>이름</h6><input id="name" name="userName" type="text" placeholder="이름을 입력하세요" autocomplete="off" value="${profileUpdate.userName }"></label>
		                            <label for="pwd" class="pwd"><h6>비밀번호</h6><input id="pwd" name="userPassword" type="password" placeholder="비밀번호를 입력하세요" autocomplete="off" value="${profileUpdate.userPassword}"></label>
		                            <label for="email" class="email"><h6>이메일</h6><input id="email" name="userEmail" type="email" placeholder="이메일을 입력하세요" autocomplete="off" value="${profileUpdate.userEmail}"></label>
		                            <label for="mobile" class="phone"><h6>연락처</h6><input id="mobile" name="userPhone" class="phonenumInput" placeholder="연락처를 입력하세요" type="text" value="${profileUpdate.userPhone}"></label>
		                            </div>
	                            </c:if>
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
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
</html>