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
    <link rel="stylesheet" href="/resources/mydreamerCss.css">
    <title>Mydreamer</title>
</head>
<body>
    <div class="full">
        <header>
            <h2><span><a href="/user/mainAfter" class="dreamer">Dreamer</a></h2>
            <div class="navi">
                <span><button id="selectnavi" type="button">탐색</button></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="resume" type="button">이력서</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="mp">
                    <img id="search1" src="/resources/images/search.png" style="width: 30px; height: 30px;">
                    <img id="mypage1" src="/resources/images/avatar.png" style="width: 30px; height: 30px;">
                </div>
            </div>    
        </header>
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
                            <a href="#" class="myprofile_a"> <!--주소에 프로필설정창가게 하셈-->
                                <dl>
                                    <dt>${loginUser.userName }</dt>
                                    <dd>${loginUser.userEmail}</dd>
                                    <dd>${loginUser.userPhone}</dd>
                                </dl>
                            </a>
                        </div>
                        <div class="second-contents">
                            <div class="sc-div">
                                <a href="#" class="sc-div-a">
                                    <span>받은 제안</span>
                                    <strong>0</strong> <!--받은 제안 수-->
                                </a>
                            </div>
                        </div>
                        <div class="third-contents">
                            <a href="#">계정 설정</a> <!--계정 설정으로 가는링크-->
                        </div>
                    </div>
                </aside>
                <section class="m-contents">
                    <div class="status">
                        <h2 class="status-h2">지원 현황</h2>
                        <ul class="m-ul">
                            <li>
                                <a href="#">
                                    <em>0</em>
                                    <span>지원 완료</span>
                                </a><!--지원현황 페이지로 가게하셈-->
                            </li>
                            <li>
                                <a href="#">
                                    <em>0</em>
                                    <span>서류 통과</span>
                                </a><!--지원현황 페이지로 가게하셈-->
                            </li>
                            <li>
                                <a href="#">
                                    <em>0</em>
                                    <span>최종 합격</span>
                                </a><!--지원현황 페이지로 가게하셈-->
                            </li>
                            <li>
                                <a href="#">
                                    <em>0</em>
                                    <span>불합격</span>
                                </a><!--지원현황 페이지로 가게하셈-->
                            </li>
                        </ul>
                    </div>
                    <div class="sec-frame">
                        <div class="bookmark">
                            <h2>북마크</h2>
                            <div class="b-div">
                                <ul class="b-ul">
                                    <li>
                                        <div class="company-margin">
                                            <a class="company-href" href="http://www.naver.com">
                                                <div class="company-img" style="background-image: url(/resources/images/movie.jpg)"></div>
                                                <figcaption>
                                                    <div class="f-body">
                                                        <div class="job-card-position">구인글제목</div>
                                                        <div class="job-card-company-name">기업명</div>
                                                        <div class="job-card-company-location">위치</div>
                                                        <div class="job-card-end-date">마감일</div>
                                                    </div>
                                                </figcaption>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="company-margin">
                                            <a class="company-href" href="http://www.naver.com">
                                                <div class="company-img" style="background-image: url(/resources/images/movie.jpg)"></div>
                                                <figcaption>
                                                    <div class="f-body">
                                                        <div class="job-card-position">구인글제목</div>
                                                        <div class="job-card-company-name">기업명</div>
                                                        <div class="job-card-company-location">위치</div>
                                                        <div class="job-card-end-date">마감일</div>
                                                    </div>
                                                </figcaption>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="company-margin">
                                            <a class="company-href" href="http://www.naver.com">
                                                <div class="company-img" style="background-image: url(/resources/images/movie.jpg)"></div>
                                                <figcaption>
                                                    <div class="f-body">
                                                        <div class="job-card-position">구인글제목</div>
                                                        <div class="job-card-company-name">기업명</div>
                                                        <div class="job-card-company-location">위치</div>
                                                        <div class="job-card-end-date">마감일</div>
                                                    </div>
                                                </figcaption>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="company-margin">
                                            <a class="company-href" href="http://www.naver.com">
                                                <div class="company-img" style="background-image: url(/resources/images/movie.jpg)"></div>
                                                <figcaption>
                                                    <div class="f-body">
                                                        <div class="job-card-position">구인글제목</div>
                                                        <div class="job-card-company-name">기업명</div>
                                                        <div class="job-card-company-location">위치</div>
                                                        <div class="job-card-end-date">마감일</div>
                                                    </div>
                                                </figcaption>
                                            </a>
                                        </div>
                                    </li>
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