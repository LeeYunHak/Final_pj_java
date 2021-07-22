<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="/resources/profileMain.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>profileMain</title>
</head>
<body>
    <div class="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;display: inline;">
                    <nav class="nv">
                        <ul class="nv-st">
                            <li><a id="nav3-1-logo" href="/user/mainAfterMain"><img src="/resources/images/Dreamer.png" class="logo"></a>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-2-Select" type="button">탐색</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-3-Resume" type="button" href="/user/resume?userEmail=${loginUser.userEmail}">이력서</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-4-Bookmark" type="button" href="/user/mydreamer">북마크</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-5-ApplicationStatus" type="button" href="/user/mydreamer">지원현황</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <div>
                                <div class="arrow_box">
                                    <div class="blank">
                                        <p></p>
                                    </div><br>
                                    <div class="mydreamer"><a href="/user/mydreamer"
                                            style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                            MY드리머</a></div><br>
                                    <div class="profile"><a href="/user/profileMain"
                                            style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                            프로필</a></div><br>
                                    <div class="logout"><a href="/user/logOut"
                                            style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                            로그아웃</a></div><br>
                                             <!-- 고객센터추가 -->
                                    <div class="servicecenter"><a href="/company/customerService"
                                        style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                        고객센터</a></div><br>
                                    <div class="blank">
                                        <p></p><br>
                                    </div>
                                </div>
                            </div>
                            <li><a id="nav3-6-ProfileName" type="button"style="color: black; font-size: 15px;">${loginUser.userName }</a></li>
                            <li style="float: right;"><button class="home-btn" type="button" onclick=" location.href='/company/mainBefore'">기업서비스</button></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->

    <!-- 탐색 START -->
    <div class="bar">
        <div class="opennavi" style="width: 100%; height: 286px; text-align: right; min-width:1750px;">
            <div style="z-index: 1000; float: left;">
                <img src="/resources/images/movie.jpg" alt="" style="width: 400px; height: 286px;">
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="연출">
                    </li>
                    <li>감독</li>
                    <li>조감독</li>
                    <li>각본</li>
                    <li>프로듀서</li>
                    <li>연출팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="조명">
                    </li>
                    <li>조명팀</li>
                    <li>발전차</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="음향">
                    </li>
                    <li>음향팀</li>
                    <li>동시녹음팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="촬영">
                    </li>
                    <li>촬영팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="특수효과">
                    </li>
                    <li>특수효과팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="제작">
                    </li>
                    <li>제작팀</li>
                    <li>캐스팅담당팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="배우">
                    </li>
                    <li>주연</li>
                    <li>조연</li>
                    <li>스턴트</li>
                    <li>단역</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="미술">
                    </li>
                    <li>미술팀</li>
                    <li>미술감독</li>
                    <li>소품팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul style="text-align: right;">
                    <li>
                        <input type="button" id="searchSearch" value="분장">
                    </li>
                    <li>헤어팀</li>
                    <li>의상팀</li>
                    <li>분장팀</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 탐색 END -->
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
                                </div>
                            </div>
                            <a href="/user/profileEdit" class="myprofile_a"> <!--주소에 프로필설정창가게 하셈-->
                                <dl>
                                    <dt id="namename" class="namename">${loginUser.userName }</dt>
                                    <dd>${loginUser.userEmail}</dd>
                                    <dd>${loginUser.userPhone}</dd>
                                </dl>
                            </a>
                        </div>
                        <div class="second-contents">
                                <button type="button" style="color: white; border: none; width: 200px; height: 40px;
                        background-color: rgb(0,206,201); border-radius: 3px;cursor: pointer; font-weight: bold; font-size: 15px;"onclick="javascript:location.href='/user/profileEdit'">프로필 수정</button>
                            <h4>&nbsp;</h4>
                        <button type="button" style="color: white; border: none; width: 200px; height: 40px;
                            background-color: rgb(0,206,201); border-radius: 3px;cursor: pointer; font-weight: bold; font-size: 15px;"onclick="javascript:location.href='/user/accountPage'">계정설정</button>
                        </div>
                    </div>
                </aside>
                <section class="m-contents">
                    <div class="status">
                        <div class="resume">
                            <h2 class="resume-h2">기본이력서</h2>
                            <div class="resume1">
                                <dl style="align-items: center;line-height: 24px;color: #999; margin-bottom:20px;">기본 이력서 선택</dl>
                                <div class="select">
                                    <button type="button" class="resumeselectbtn" id="resumeselectbtn">
                                        <form action="#resumename" method="GET"></form>
                                    </button>
                                </div>
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
                                    <dl style="align-items: center;line-height: 24px;color: #999; margin-bottom:20px;">학교</dl>
                                    <div><span class="univ">이력서에서 작성한 학교</span></div>
                                </div>
                                <div>
                                <dl style="align-items: center;line-height: 24px;color: #999; margin-top: 60px; margin-bottom:20px;">이력서의 자기소개</dl>
                                </div>
                            </div>  
                        </div>             
                    </div>
                    <div class="sec-frame">
                        <div class="speciality">
                            <h2 class="speciality-h2">전문분야설정</h2>
                            <c:choose>
                            	<c:when test="${update eq 1 }">
		                            <div class="speciality1">
		                                <div style="position: relative;font-size: 16px; display: block;">
		                                    <dl style="align-items: center;line-height: 24px;color: #999; margin-bottom:20px;">직군</dl>
		                                    <div><span id="job-group">${professional.userJobGroup }</span>
		                                    <hr style="border-top : 1px solid #c8c8c8;">
		                                    </div>
		                                </div>
		                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
		                                    <dl style="align-items: center;line-height: 24px;color: #999; margin-bottom:20px;">직무</dl>
		                                    <div><span id="detail-job">${professional.userJob }</span>
		                                    <hr style="border-top : 1px solid #c8c8c8;">
		                                    </div>
		                                </div>
		                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
		                                    <dl style="align-items: center;line-height: 24px;color: #999; margin-bottom:20px;">작품개수</dl>
		                                    <div style="padding-bottom: 20px;"><span id="job-career">${professional.userCareer }</span>
		                                    <hr style="border-top : 1px solid #c8c8c8;">
		                                    </div>
		                                </div>
		                            </div>
                            	</c:when>
                            	<c:otherwise>
                            		<div class="speciality1">
		                                <div style="position: relative;font-size: 16px; display: block;">
		                                    <dl style="align-items: center;line-height: 24px;color: #999;">직군</dl>
		                                    <div><span id="job-group">${loginUser.userJobGroup }</span>
		                                    <hr style="border-top : 1px solid #c8c8c8;">
		                                    </div>
		                                </div>
		                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
		                                    <dl style="align-items: center;line-height: 24px;color: #999;">직무</dl>
		                                    <div><span id="detail-job">${loginUser.userJob }</span>
		                                    <hr style="border-top : 1px solid #c8c8c8;">
		                                    </div>
		                                </div>
		                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
		                                    <dl style="align-items: center;line-height: 24px;color: #999;">작품개수</dl>
		                                    <div style="padding-bottom: 20px;"><span id="job-career">${loginUser.userCareer }</span>
		                                    <hr style="border-top : 1px solid #c8c8c8;">
		                                    </div>
		                                </div>
		                            </div>
                            	</c:otherwise>
                            </c:choose>
                        </div>
                        <div style="margin-left: 550px;">
                        <button type="button" onclick="javascript:location.href='/user/professional'" style="color: rgb(0,206,201);border: #c8c8c8 solid 1px;padding: 10px;
                        background-color: #ffffff; border-radius: 3px;cursor: pointer; font-weight: bold; font-size: 15px;">전문분야 수정</button>
                        </div>    
                </div>  
                </section>
            </div>
        </section>
    </div>

    <div id="my_modal" class="my_modal">
        <div class="ModalHeader" style="text-align: center;">
            기본 이력서 선택
            <button type="button" class="Modal_close_btn">X</button>
        </div>
        <div class="ModalBody">
            <div class="ModalBody_input">
                <ul style="padding-bottom: 10px; height: 400px; padding: 10px; list-style: none;overflow-y: scroll;">
                	<%-- <c:forEach var="" items=""> --%>
                    <li class="mo_list" style="width: 50%; float: left; padding: 10px; position: relative; display: list-item;">
                        <button type="button" class="selected" onclick="changeByJS()">
                        <div class="mo_resume">
                            <div class="mo_status">작성 완료</div>
                        </div>
                        <dl class="mo_name">
                            <dt style="color: #333;font-size: 16px; text-overflow: ellipsis; white-space: nowrap;overflow: hidden; line-height: 1.42857143; font-weight: bold;">이력서 제목1</dt>
                            <dd style="color: #c8c8c8;font-size: 12px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;line-height: 1.42857143;margin-inline-start: 40px; margin: 0;">이력서 작성일</dd>
                        </dl>
                        </button>
                    </li>
                    <%-- </c:forEach> --%>
                </ul>
                <footer class="mo_foot">
                    <p class="warn">기본 이력서는 원티드 이력서만 선택 가능합니다.</p>
                    <button type="button" class="mo_submit">선택 완료</button>
                </footer>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/resources/profileMain.js"></script>
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
</html>