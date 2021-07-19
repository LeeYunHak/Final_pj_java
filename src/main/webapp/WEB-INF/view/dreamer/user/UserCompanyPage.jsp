<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="UserCompanyPage.css">
    <title>구직자-기업정보페이지</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
        integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <style>
        /* 채용 중인 포지션 START */
        ._2X_152Ee6rNonfyCzsucxg {
            width: 100%;
            padding: 16px;
            color: black;
            border-radius: 3px;
            border: 1px solid aqua;
            line-height: 1;
            font-size: 16px;
            font-weight: 400;
            color: #999;
        }

        ._2X_152Ee6rNonfyCzsucxg i {
            display: inline-block;
            font-size: 14px;
            margin-left: 4px;
        }

        [class^="icon-"],
        [class*=" icon-"] {
            font-family: 'icomoon' !important;
            /* speak: none; */
            font-style: normal;
            font-weight: normal;
            font-variant: normal;
            text-transform: none;
            line-height: 1;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        /* 채용 중인 포지션 END */
    </style>
</head>

<body>
    <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;">
                    <nav class="nv">
                        <ul class="nv-st">
                            <li><a id="nav3-1-logo" href="/user/mainAfterMain"><img src="/resources/images/Dreamer.png" class="logo"></a></li>
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
                                    <!-- 고객센터추가s -->
                                    <div class="servicecenter"><a href="/user/sevicecenter"
                                        style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                        고객센터</a></div><br>
                                    <!-- 고객센터추가e -->
                                    <div class="blank">
                                        <p></p><br>
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
            <div class="opennavi" style="width: 100%; height: 286px; text-align: right; min-width: 1750px;">
                <div style="z-index: 1000; float: left;">
                    <img src="/resources/images/movie.jpg" alt="" style="width: 400px; height: 286px">
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
                    <ul>
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

    <!-- 기업 정보 페이지 START -->
    <div style="margin: 30px 0px 30px 0px; text-align: left; width: 100%; margin-inline-start: 0px; margin-inline-end: 0px;
        padding-inline-start: 160px; padding-inline-end: 160px;">
        <div
            style="margin: 30px 0px 30px 0px; background-color: white; width: 100%; padding-inline-start: 70px; padding-inline-end: 70px; border-bottom: 1px solid silver;">
            <h1 style="text-align: center; margin: 40px; padding-left: 60px; padding-right: 60px; text-align: left;">기업명
                :
                ${comList.companyName }
            </h1>
        </div>
        <div>
            <div></div>
            <h3
                style="list-style-type: none; display: block; color: black; background-color: white; width: 90%; padding-inline-start: 20px; padding-inline-end: 20px;">
                <div>
                    채용 중인 포지션(구인글네임) :
                    ${comList.companyJobPostingTitle}
                </div>
            </h3>

            <div
                style="list-style-type: none; display: block; background-color: white; width: 90%; padding-inline-start: 20px; padding-inline-end: 20px; margin-top: 40px;">
                <!-- <ul style="list-style-type: none; display: block; background-color: skyblue; width: 90%; padding-inline-start: 20px; padding-inline-end: 20px;"> -->
                <!-- 채용 중인 포지션(구인글네임) 목록 START -->
                <div class="compony-position-list">
                    <ul>
                        <li>
                            <a href="" style="display: block;
                                position: relative;
                                float: left;
                                width: calc(33% - 20px);
                                min-height: 90px;
                                margin: 0 10px 20px;
                                padding: 16px 20px 19px;
                                border-radius: 3px;
                                border: 1px solid black; text-decoration: none;">
                                <h3>
                                    단편영화 : 바람과 함께 사라지다.
                                </h3><br>
                                <h4>분야 : 영상편집</h4><br>
                                <p>2021-07-22 마감</p>
                            </a>
                        </li>
                        <li>
                            <a href="" style="display: block;
                                position: relative;
                                float: left;
                                width: calc(33% - 20px);
                                min-height: 90px;
                                margin: 0 10px 20px;
                                padding: 16px 20px 19px;
                                border-radius: 3px;
                                border: 1px solid black; text-decoration: none;">
                                <h3>
                                    단편영화 : 바람과 함께 사라지다.
                                </h3><br>
                                <h4>분야 : 영상편집</h4><br>
                                <p>2021-07-22 마감</p>
                            </a>
                        </li>
                        <li>
                            <a href="" style="display: block;
                                position: relative;
                                float: left;
                                width: calc(33% - 20px);
                                min-height: 90px;
                                margin: 0 10px 20px;
                                padding: 16px 20px 19px;
                                border-radius: 3px;
                                border: 1px solid black; text-decoration: none;">
                                <h3>
                                    단편영화 : 바람과 함께 사라지다.
                                </h3><br>
                                <h4>분야 : 영상편집</h4><br>
                                <p>2021-07-22 마감</p>
                            </a>
                        </li>
                        <li>
                            <a href="" style="display: block;
                                position: relative;
                                float: left;
                                width: calc(33% - 20px);
                                min-height: 90px;
                                margin: 0 10px 20px;
                                padding: 16px 20px 19px;
                                border-radius: 3px;
                                border: 1px solid black; text-decoration: none;">
                                <h3>
                                    단편영화 : 바람과 함께 사라지다.
                                </h3><br>
                                <h4>분야 : 영상편집</h4><br>
                                <p>2021-07-22 마감</p>
                            </a>
                        </li>
                        <li>
                            <a href="" style="display: block;
                                position: relative;
                                float: left;
                                width: calc(33% - 20px);
                                min-height: 90px;
                                margin: 0 10px 20px;
                                padding: 16px 20px 19px;
                                border-radius: 3px;
                                border: 1px solid black; text-decoration: none;">
                                <h3>
                                    단편영화 : 바람과 함께 사라지다.
                                </h3><br>
                                <h4>분야 : 영상편집</h4><br>
                                <p>2021-07-22 마감</p>
                            </a>
                        </li>
                        <li>
                            <a href="" style="display: block;
                                position: relative;
                                float: left;
                                width: calc(33% - 20px);
                                min-height: 90px;
                                margin: 0 10px 20px;
                                padding: 16px 20px 19px;
                                border-radius: 3px;
                                border: 1px solid black; text-decoration: none;">
                                <h3>
                                    단편영화 : 바람과 함께 사라지다.
                                </h3><br>
                                <h4>분야 : 영상편집</h4><br>
                                <p>2021-07-22 마감</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- 채용 중인 포지션(구인글네임) 목록 END -->


                <!-- 더 많은 포지션 보기 START -->
                <button class="_2X_152Ee6rNonfyCzsucxg" type="button">더 많은 포지션 보기<i class="icon-arrow_down"
                        style="transform: rotate(180deg);"></i></button>
                <!-- 더 많은 포지션 보기 END -->
                <div></div>
                <div></div>
                <!-- 회사 소개, 직원수, 평균 연봉 START -->
                <div>
                    <div style="margin-top: 40px; margin-bottom: 20px;">
                        <h3 style="margin-bottom: 10px;">회사 소개</h3>
                        <img src="/resources/images/camera.jpg" alt="" style="margin: 10px; width: 300px; height: 200px;">
                        <p style="margin-top: 20px;">
                            ${comList.companyIntroduce }
                            
                        </p>
                    </div>
                    <div style="margin-top: 60px; margin-bottom: 50px; float: left; width: 50%;">
                        <div style="display: block;
                        position: relative;
                        float: left; height: 30px;">
                            <h3>직원 수</h3><br>

                            <div style=" display: block; position: relative; float: left; width: calc(100% - 10px);
                            min-height: 45px; margin: 0px 0px 20px; padding: 10px 0px 1px; border-radius: 3px; border:
                            1px solid black; width: 500px; text-align: center; background-color: silver;">
                            전체 인원 : ${comList.companyEmployeeNumber }명
                        </div>
                    </div>
                </div>
                <div>
                    <div style="margin-top: 60px; margin-bottom: 50px; float: left; width: 50%;">
                        <div style="display: block;
                            position: relative;
                            float: left; height: 30px;">
                                <h3>평균 연봉</h3><br>
    
                                <div style=" display: block; position: relative; float: left; width: calc(100% - 10px);
                            min-height: 45px; margin: 0px 0px 20px; padding: 10px 0px 1px; border-radius: 3px; border:
                            1px solid black; width: 500px; text-align: center; background-color: silver;">
                            신규 입사자 : 만원 &emsp;&emsp;&nbsp;&emsp;&nbsp; | &emsp;&nbsp;&emsp;&nbsp;&emsp; 전체 : 만원
                        </div>
                    </div>
                </div>
                <!-- 회사 소개, 직원수, 평균 연봉 END -->
            </div>
        </div>
    </div>
    <!-- 기업 정보 페이지 END -->


    <script type="text/javascript" src="/resources/UserCompanyPage.js"></script>
</body>

</html>