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
    <title>이력서</title>
    <link rel="stylesheet" href="/resources/Cvpage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body>
    <div class="full" name="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;">
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
                                    <div class="servicecenter"><a href="/user/sevicecenter"
                                        style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                        고객센터</a></div><br>
                                    <div class="blank">
                                        <p></p><br>
                                    </div>
                                </div>
                            </div>
                            <li><a id="nav3-6-ProfileName" type="button"style="color: black; font-size: 15px;">${loginUser.userName }</a></li>
                            <li style="float: right;"><button class="home-btn" type="button" onclick=" location.href='/user/companyMain'">기업서비스</button></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->

        <!-- 탐색 -->
        <div class="bar">
            <div class="opennavi" style="width: 100%; height: 286px; text-align: right;min-width: 1750px;">
                <div style="z-index: 1000; float: left;">
                    <img src="/resources/images/movie.jpg" alt="" style="width: 400px; height:286px;">
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
    <div class="blank"></div>
    <div class="resume-list-container">
        <div id="resume-list">
            <div class="resume-list-header">
                <h4>최근 이력서</h4>
            </div>
            <div style="max-height:inherit;overflow-y:inherit;height:inherit;">
                <div class="resume-list-content">
                    <div class="resume-item">
                        <div class="resume-box">
                            <button type="button" id="addBtn" class="resume-add-btn">
                                <div class="wrapper">
                                    <div class="box-dreamer">
                                        <i class="resume-icon"></i>
                                    </div>
                                    <p>이력서 작성</p>
                                </div>
                            </button>
                        </div>
                    </div>
                    <div class="resume-item">
                        <div class="resume-box">
                            <div class="drop-resume">
                                <div class="wrapper">
                                    <div class="box">
                                        <i class="upload-icon"></i>
                                    </div>
                                    <p>파일 업로드</p>
                                </div>
                                <input type="file" style="display: none;">
                            </div>
                        </div>
                    </div>
                    <c:forEach items="${resumeList }" var="resumeList">
                    <div class="resume-item">
                        <div class="resume-box">
                            <div class="resume-preview">
                                <h3 class="writing">${resumeList.resumeTitle}</h3>
                                <p class="date">${resumeList.writeDate}</p>
                            </div>
                            <div class="resume-info">
                            	<div class="resume-status">
                            	<form action="/user/resumeUpdate" method="get">
                            		<input type="text" name="resumeId" value="${resumeList.resumeId}" style="display: none;">
                            		<button type="submit" class="writing-span">수정하기</button>
                            	</form>
                            	<span>•</span>
                            	<form action="/user/resumeDelete?userEmail=${loginUser.userEmail }" method="post">
                            		<input type="text" name="resumeId" value="${resumeList.resumeId}" style="display: none;">
                            		<button type="submit" class="writing-span">삭제하기</button>
                            	</form>	
                            	</div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="/resources/CVpage.js"></script>
<script type="text/javascript" src="/resources/navi.js"></script>
</html>