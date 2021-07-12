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
            <h2 class="subheading">MY 드리머</h2>
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
                            <a href="/user/profileEdit" class="myprofile_a"> <!--주소에 프로필설정창가게 하셈-->
                                <dl>
                                    <dt>${loginUser.userName }</dt>
                                    <dd>${loginUser.userEmail}</dd>
                                    <dd>${loginUser.userPhone}</dd>
                                </dl>
                            </a>
                        </div>
                        <div class="third-contents">
                            <a href="/user/profileEdit"><div class="third-contents-btn">프로필 수정</div></a> <!--계정 설정으로 가는링크-->
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
</body>
</html>