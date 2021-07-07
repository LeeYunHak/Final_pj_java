<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/loginUserMain.css">
    <title>로그인 후 메인화면</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
        integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
</head>

<body>
    <!-- 네비게이션바 START -->
    <header id="nav1" role="presentation">
        <div id="nav2" role="presentation">
            <ul id="nav3">
                <div>
                    <li><a id="nav3-1-logo" href="loginUserPage.html"><img src="/resources/images/Dreamer.png" class="logo"></a>
                    </li>
                    <div style=" font-weight: bold;">
                        <ul>
                            <div class="blank2"></div>
                            <li><a id="nav3-2-Select" type="button">탐색</a></li>
                            <li><a id="nav3-3-Resume" type="button" href="/user/resume">이력서</a></li>
                            <li><a id="nav3-4-Bookmark" type="button" href="/user/mydreamer">북마크</a></li>
                            <li><a id="nav3-5-ConstructionSupport" type="button" href="지원현황 페이지">지원현황</a></li>
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
                                    style="color: brown; font-size: 15px;">이름</a>
                                <div class="blank1"></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </ul>
        </div>
    </header>
    <!-- 네비게이션바 END -->

    <!-- 검색창 START -->
    <div class="menu, icon-close">
        <!-- Menu icon -->
        <div class="">
            <img src="https://imgur.com/download/GcHTJg2">
            <!-- </div> -->
        </div>
        <!-- <ul>
            <li></li>
        </ul> -->
        <!-- Main body -->
        <div class="jumbotron">

            <div class="icon-menu">
                <i class="fa fa-bars"></i>
            </div>
        </div>

        <form id="search" action="#" autocomplete="off">
            <fieldset class="url" style="border: white;">
                <input id="url" type="text" name="url" required>
                <label for="url"><i class="fa fa-search" aria-hidden="true"></i> Search</label>
                <div class="after"></div>
            </fieldset>
            <fieldset class="enter" style="border: white;">
                <button id="search-btn"></button>
            </fieldset>
        </form>
    </div>
    <!-- 검색창 END -->

    <!-- 탐색 -->
    <div class="bar">
        <div class="opennavi" style="width: 100%; height: 237px; text-align: right;">
            <div style="z-index: 1000; float: left;">
                <img src="/resources/images/movie.jpg" alt="" style="width: 350px;">
            </div>
            <div
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
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
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="조명">
                    </li>
                    <li>조명팀</li>
                    <li>발전차</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="음향">
                    </li>
                    <li>음향팀</li>
                    <li>동시녹음팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="촬영">
                    </li>
                    <li>촬영팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="특수효과">
                    </li>
                    <li>특수효과팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
                <ul>
                    <li>
                        <input type="button" id="searchSearch" value="제작">
                    </li>
                    <li>제작팀</li>
                    <li>캐스팅담당팀</li>
                </ul>
            </div>
            <div
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
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
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
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
                style="width: 110px; height: 169px; margin-right: 10px; margin-top: 20px;  float: left; display: block; margin-inline-start: 30px;">
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
    <div class="full">
        <div class="half">
            <div style="float: left; display: block;">
                <br>
                <br>
                <br>
                <div class="bot">
                    <div class="sel">
                    	<table style="border-spacing: 5px 10px;">
                    		<tr>
	                    		<td><span style="font-weight: bold;">&nbsp;직&emsp;종&nbsp;</span></td>
	                    		<td>
	                    		<form action="">
	                    			<select id="job" class="job" onchange="doChange(this, 'detail_job')">
			                            <option value="allJob" >전체</option>
			                            <option value="production">연출</option>
			                            <option value="light">조명</option>
			                            <option value="acoustics">음향</option>
			                            <option value="photographing">촬영</option>
			                            <option value="effects">특수효과</option>
			                            <option value="making">제작</option>
			                            <option value="actor">배우</option>
			                            <option value="art">미술</option>
			                            <option value="makeUp">분장</option>
			                        </select>
			                    </form>
	                    		</td>
								<td><span style="font-weight: bold;">&emsp;&nbsp;지&emsp;역&nbsp;</span></td>
								<td>
								<form action="">
									<select id="country" class="country" onchange="doChange(this, 'detail_country')">
			                            <option value="allCountry" >전국</option>
			                            <option value="seoul">서울</option>
			                            <option value="busan">부산</option>
			                            <option value="daegu">대구</option>
			                            <option value="incheon">인천</option>
			                            <option value="gwangju">광주</option>
			                            <option value="daejeon">대전</option>
			                            <option value="ulsan">울산</option>
			                            <option value="sejong">세종</option>
			                            <option value="gyeong-gi">경기</option>
			                            <option value="gang-won">강원</option>
			                            <option value="chungbug">충북</option>
			                            <option value="chungnam">충남</option>
			                            <option value="jeonbug">전북</option>
			                            <option value="jeonnam">전남</option>
			                            <option value="gyeongbug">경북</option>
			                            <option value="gyeongnam">경남</option>
			                            <option value="jeju">제주</option>
			                        </select>
								</form>
								</td>
								<td><span style="font-weight: bold;">&emsp;작품개수&nbsp;</span></td>
								<td>
								<form action="">
									<select id="career" class="career">
			                            <option value="allCareer" >전체</option>
			                            <option value="new">신입</option>
			                            <option value="one">1개</option>
			                            <option value="two">2개</option>
			                            <option value="three">3개</option>
			                            <option value="four">4개</option>
			                            <option value="five">5개</option>
			                            <option value="six">6개</option>
			                            <option value="seven">7개</option>
			                            <option value="eight">8개</option>
			                            <option value="nine">9개</option>
			                            <option value="ten-more">10개 이상</option>
			                        </select>
			                    </form>
								</td>
							</tr>
							<tr>
								<td><span style="font-weight: bold;">세부직무&nbsp;</span></td>
	                    		<td>
	                    		<form action="">
	                    			<select id="detail_job" class="detail_job">
	                    				<option >전체</option>
	                    			</select>
	                    		</form>
	                    		</td>
								<td><span style="font-weight: bold;">&emsp;세부지역&nbsp;</span></td>
	                    		<td>
	                    		<form action="">
	                    			<select id="detail_country" class="detail_country">
	                    				<option >전지역</option>
	                    			</select>
	                    		</form>
	                    		</td>
	                    		<td colspan="2"> 
                                    <span>&emsp;&emsp;&nbsp;<button type="button" id="select_reset_btn" class="select_reset_btn">초 기 화</button></span>
                                </td>
							</tr>
                        </table>
                    </div>
                    <select>
                        <option>최신순</option>
                        <option>인기순</option>
                    </select>
                </div>
                <!-- 구인글 select START -->
                <div class="company-job-list">
                    <ul>
                        <li class="company-job" style="text-align: center;">
                            <div class="company-margin">
                                <ul>
                                    <li>
                                        <a class="company-href" href="http://www.naver.com">
                                            <div class="company-img" style="background-image: url(/resources/images/movie.jpg)" ;>
                                            </div>
                                            <figcaption>
                                                <div id="job-card" style="font-size: 16px;">
                                                    <div class="job-card-position">구인글제목</div><br>
                                                    <div class="job-card-company-name">기업명</div><br>
                                                    <div class="job-card-company-location">위치</div><br>
                                                    <div class="job-card-end-date">마감일</div>
                                                </div>
                                            </figcaption>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- 구인글 select END -->
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/resources/loginUserMain.js"> </script>
</body>
</html>