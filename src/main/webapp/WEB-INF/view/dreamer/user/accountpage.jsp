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
    <link rel="stylesheet" href="/resources/accountpage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>계정설정페이지</title>
</head>
<body>
    <div class="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;">
                    <nav class="nv">
                        <ul class="nv-st">
                            <li><a id="nav3-1-logo" href="/user/loginUserPage"><img src="/resources/images/Dreamer.png" class="logo"></a>
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
        <div class="main">
            <div class="sidebar">
                <h4>&nbsp;</h4>
                <h4>&nbsp;</h4>
                <h5>&nbsp;</h5>
                <h2>계정 설정</h2>
                <h2>&nbsp;</h2>
                <h2>&nbsp;</h2>
                <a href="/user/accountpage" style="color:rgb(0,206,201); font-weight:bold;">비밀번호 설정</a>
                <h5>&nbsp;</h5>
                <h5>&nbsp;</h5>
                <a href="/user/dropoutpage" style="color: #797979;">&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴</a>
            </div>
            <div class="setting">
            <form action="/user/reUserPw" method="post">
                <h3>비밀번호 설정</h3>
                <input type="email" class="email" name="userEmail" placeholder="abcd123@naver.com">
                <h6>&nbsp;</h6>
                <h6>&nbsp;</h6>
                <h6 style="color: #adadad;">*비밀번호를 재설정 할 이메일 계정을 입력해주세요</h6>
                <h6>&nbsp;</h6>
                <h6>&nbsp;</h6>
                <input type="submit" id="sbBtn" class="submit" value="전송">
            </form>
            </div>
        </div>
    </div>        
    <script type="text/javascript" src="/resources/accountpage.js"> </script>
</body>
</html>