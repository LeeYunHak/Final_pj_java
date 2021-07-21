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
    <link rel="stylesheet" href="/resources/professional.css">
    <title>전문분야 설정 페이지</title>
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
                                    <div class="servicecenter"><a href="/user/sevicecenter"
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
                                    <!-- <i class="camer_icon" role="presentation"></i> -->
                                </div>
                            </div>
                            <a href="#" class="myprofile_a"> <!--주소에 프로필설정창가게 하셈-->
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
                            <h2 class="resume-h2">전문분야 설정</h2>
                            <div class="resume1">
                            <form action="/user/professional/update" method="post">
                            	<input type="text" name="userEmail"
										value="${loginUser.userEmail}" style="display: none;">
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px; margin-bottom: 30px;">
                                    <label for="jobKindU" style="align-items: center;line-height: 24px;color: #999; margin-right: 30px; padding-left: 10px;">직군</label>
                                    <select class="form-control" id="jobKindU" onchange="jobKindChange(this)"
                                    style="width: 600px; padding: .8em .5em; border: 1px solid #c8c8c8; border-radius: 0px;  font-size: 15px;">
                                        <option value="a">선택하기</option>
                                        <option id="1" value="b">연출</option>
                                        <option id="2" value="c">조명</option>
                                        <option id="3" value="d">음향</option>
                                        <option id="4" value="e">촬영</option>
                                        <option id="5" value="f">특수효과</option>
                                        <option id="6" value="g">제작</option>
                                        <option id="7" value="h">배우</option>
                                        <option id="8" value="i">미술</option>
                                        <option id="9" value="j">분장</option>
                                    </select>
                                    <input id="test" type="text" name="userJobGroup" style="display: none;">
                                </div>   
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px; margin-bottom: 30px;">
                                    <label for="jobKindD" style="align-items: center;line-height: 24px;color: #999; margin-right: 30px; padding-left: 10px;">직무</label>
                                    <select class="form-control" id="jobKindD" onchange="jobChange()"
                                    style="width: 600px; padding: .8em .5em; border: 1px solid #c8c8c8; border-radius: 0px;  font-size: 15px;">
                                    <option>직군을 선택해 주세요</option>
                                    </select>
                                    <input id="test2" type="text" name="userJob" style="display: none">
                                </div>   
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px; margin-bottom: 30px;">
                                    <label style="align-items: center;line-height: 24px;color: #999; margin-right: 13px; margin-left: -5px;">작품개수</label>
                                        <span class="find">
                                            <select id="career" onchange="careerCh()" style="width: 600px; padding: .8em .5em; border: 1px solid #c8c8c8; border-radius: 0px;  font-size: 15px;">
                                                <option selected>선택하기</option>
                                                <option>신입</option>
                                                <option>1개</option>
                                                <option>2개</option>
                                                <option>3개</option>
                                                <option>4개</option>
                                                <option>5개</option>
                                                <option>6개</option>
                                                <option>7개</option>
                                                <option>8개</option>
                                                <option>9개</option>
                                                <option>10개이상</option>
                                            </select>
                                            <input id="test3" type="text" name="userCareer" style="display: none;">
                                        </span>
                                </div> 
                                <div style="margin-left: 600px; margin-top: 50px;">
                                    <button type="submit" style="color: rgb(0,206,201);border: #c8c8c8 solid 1px;padding: 10px;
                                    background-color: #ffffff; border-radius: 3px;cursor: pointer; font-weight: bold; font-size: 15px;">수정 완료</button>
                                </div>
	                           </form>   
                            </div>
                        </div>             
                    </div>
                </section>
            </div>
        </section>
    </div>
    <script type="text/javascript" src="/resources/professional.js"></script>
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
</html>