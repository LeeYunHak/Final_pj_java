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
    <link rel="stylesheet" href="/resources/mydreamerCss.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Mydreamer</title>
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
                            <li><a id="nav3-6-ProfileName" type="button"style="color: black; font-size: 15px;">${loginUser.userName }</a></li>
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
                            <li style="float: right;"><button class="home-btn" type="button" onclick=" location.href='/user/companyMain'">기업서비스</button></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->
    
    <!-- 탐색 START -->
    <div class="bar">
        <div class="opennavi" style="width: 100%; height: 286px; text-align: right;">
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
            <h2 class="subheading">MY 드리머</h2>
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
                                    <dt>${loginUser.userName }</dt>
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
                        <h2 class="status-h2">지원 현황</h2>
                        <div class="status-child">
	                        <table>
		                        <tr>
			                        <td style="width: 200px; color: #999999">지원 기업</td>
			                        <td style="width: 205px; color: #999999">지원 포지션</td>
			                        <td style="width: 210px; color: #999999">지원일</td>
		                        </tr>
	                        </table>
	                        <hr style="border: 1px solid #999999; background-color: #999999;">
	                        <ul class="m-ul">
	                        	<c:forEach var="app" items="${applicationList }">
	                            	<li>
	                            		<table>
	                            			<tr> <!--  -->
	                            				<td style="width: 200px; color: #999999; font-size: 14px;"><a href="#">${app.companyName }</a></td>
	                            				<td style="width: 200px; color: #999999; font-size: 14px;">${app.companyJobPostingJobGroup } / ${app.companyJobPostingJob }</td>
	                            				<td style="width: 200px; color: #999999; font-size: 14px;">${app.applicationDate }</td>
	                            			</tr>
	                            		</table>
		                            </li>
	                            </c:forEach>
	                        </ul>
                        </div>
                    </div>
                    <div class="sec-frame">
                        <div class="bookmark">
                            <h2>북마크</h2>
                            <div class="b-div">
                                <ul class="b-ul">
                                	<c:forEach var="book" items="${bookmarkList }">
	                                    <li>
	                                        <div class="company-margin">
	                                            <a class="company-href" href="http://www.naver.com">
	                                                <div class="company-img" style="background-image: url(/resources/images/movie.jpg)"></div>
	                                                <figcaption>
	                                                    <div class="f-body">
	                                                        <div class="job-card-position">${book.companyJobPostingTitle }</div>
	                                                        <div class="job-card-company-name">${book.companyName }</div>
	                                                        <div class="job-card-company-location">${book.companyCountry }</div>
	                                                        <div class="job-card-end-date">${book.companyJobPostingPeriodEnd }</div>
	                                                    </div>
	                                                </figcaption>
	                                            </a>
	                                        </div>
	                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </section>
    </div>
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
</html>