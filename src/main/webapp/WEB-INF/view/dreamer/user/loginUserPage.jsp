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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>로그인 후 메인화면</title>
</head>

<body>
    <div class="full">
        <header>
            <h2><span><a href="/user/mainAfter" class="dreamer"><img src="/resources/images/Dreamer.png" width="210px" height="180px"></a></span></h2>
            <div class="navi">
                <span><button id="selectnavi"
                        type="button">탐색</button></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="resume" type="button">이력서</button></span>&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <div class="mp">
                                    <img id="search1" src="/resources/images/search.png" onclick="javascript:location.href='/user/search'" style="width: 30px; height: 30px;">
                                    <img id="mypage1" src="/resources/images/avatar.png" style="width: 30px; height: 30px;">    
                                </div>
            </div>
        </header>

        <div class="half">
            <div class="arrow_box">
                <p><a class="mydreamer" href="/user/mydreamer" style="text-decoration: none;">
                MY드리머</a></p>
                <p><a class="profile" href="http://www.naver.com"style="text-decoration: none;">
                프로필</a></p>
                <p><a class="application" href="http://www.naver.com"style="text-decoration: none;">
                지원현황</a></p>
                <p><a class="offered" href="http://www.naver.com"style="text-decoration: none;">
                제안받기현황</a></p>
                <p><a class="bookmark" href="http://www.naver.com"style="text-decoration: none;">
                북마크</a></p>
                <p><a class="logout" href="/user/logOut"style="text-decoration: none;">
                로그아웃</a></p>
        </div>
            <div class="bar">
                <div class="prod">
                    <span class="prod1">연출</span>
                </div>
                <div class="light">
                    <span class="light1">조명</span>
                </div>
                <div class="acous">
                    <span class="acous1">음향</span>
                </div>
                <div class="shoot">
                    <span class="shoot1">촬영</span>
                </div>
                <div class="se">
                    <span class="se1">특수효과</span>
                </div>
                <div class="manuf">
                    <span class="manuf1">제작</span>
                </div>
                <div class="actor">
                    <span class="actor1">배우</span>
                </div>
                <div class="art">
                    <span class="art1">미술</span>
                </div>
                <div class="makeup">
                    <span class="makeup1">분장</span>
                </div>
                <div class="opennavi" style="width: 124vh; height:52vh;">
                    <div style="width: 110px; height: 169px; margin-right: 20px; margin-left: 50px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="prod" value="연출" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">감독</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">조감독</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">각본</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">프로듀서</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">연출팀</li>
                    </div>
                    <div style="width: 110px; height: 169px; margin-right: 20px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="light" value="조명" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">조명팀</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">발전차</li>
                    </div>
                    <div style="width: 110px; height: 169px; margin-right: 20px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="acous" value="음향" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">음향팀</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">동시녹음팀</li>
                    </div>
                    <div style="width: 110px; height: 169px; margin-right: 20px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="shoot" value="촬영" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">촬영팀</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">그립팀</li>
                    </div>
                    <div style="width: 110px; height: 169px; margin-right: 55px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="se" value="특수효과" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">특수효과팀</li>
                    </div>
                    <div style="width: 110px; height: 169px; margin-right: 20px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="manuf" value="제작" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">제작팀</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">캐스팅담당팀</li>
                    </div>
                    <div style="width: 110px; height: 169px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="actor" value="배우" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">주연</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">조연</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">스턴트</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">단역</li>
                    </div>
                    <div style="width: 110px; height: 169px;margin-right: 20px; margin-left: 50px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="art" value="미술" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">미술팀</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">미술감독</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">소품팀</li>
                    </div>
                    <div style="width: 110px; height: 169px; margin-right: 20px; margin-top: 30px;float: left;
                    display: block;">
                        <input type="button" id="makeup" value="분장" style="margin-bottom: 10px; color: black; background-color: rgb(235, 240, 235);">
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">헤어팀</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">의상팀</li>
                        <li style="list-style: none;
                        margin-left: 8px;
                        margin-top: 5px;
                        color: gray;">분장팀</li>
                    </div>
                </div>
            </div>
            <div style="float: left; display: block;">
                <hr><br>
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
                                    <span>&emsp;&emsp;<button type="button" class="select_reset_btn">초 기 화</button></span>
                                </td>
							</tr>
                        </table>
                    </div>

                    <select>
                        <option>최신순</option>
                        <option>인기순</option>
                    </select>
                </div>
                <li class="company-job">
                    <li class="company-margin">
                        <a class="company-href" href="#">
                            <div class="company-img" style="background-image: url(/resources/images/movie.jpg)" ;>
                            </div>
                            <figcaption>
                                <div class="body" style="float: left; display: block;">
                                    <div class="job-card-position">구인글제목</div><br>
                                    <div class="job-card-company-name">기업명</div><br>
                                    <div class="job-card-company-location">위치</div><br>
                                    <div class="job-card-end-date">마감일</div>
                                </div>
                            </figcaption>
                        </a>
                    </li>
                </li>
            </div>
        </div>
    </div>
<script type="text/javascript" src="/resources/loginUserMain.js"> </script>

</body>
</html>