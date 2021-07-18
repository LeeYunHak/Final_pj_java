<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사 채용공고 목록</title>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="recruitmentList.css">
</head>

<body>
    <div class="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div>
                    <nav class="nv">
                        <ul class="nv-st">
                            <li class="nv-it"><a id="nav3-1-logo" href="co_index.html"><img src="images/Dreamer_W.png"
                                        class="logo"></a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-2-announcement" type="button" href="recruitmentList.html">공고목록</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-4-applicant_status" type="button" href="#">지원자 현황</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-5-companyinfo" type="button" href="Company-info.html">회사정보</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-7-account" type="button" href="#">계정관리</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-6-ProfileName" type="button"
                                    style="color: white; font-size: 15px;">기업명</a></li>
                            <li style="float: right;"><button class="home-btn" type="button"
                                    onclick="location.href = 'index.html'">드리머 홈</button></li>
                                    <!-- 마이페이지박스추가 -->
                            <div>
                                <div class="arrow_box">
                                    <div class="blank">
                                        <p></p>
                                    </div><br>
                                    <div class="logout"><a href="index.html"
                                            style="text-decoration: none;color: grey; font-size: 14px;">
                                            로그아웃</a></div><br>
                                            <!-- 고객센터추가 -->
                                    <div class="servicecenter"><a href="sevicecenter.html"
                                        style="text-decoration: none;color: grey; font-size: 14px;">
                                        고객센터</a></div><br>
                                    <div class="blank">
                                        <p></p><br>
                                    </div>
                                </div>
                            </div>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->

        <!-- 공고목록 소제목 및 공고등록 버튼 -->
        <div class="fir-div">
            <!-- 페이지명 -->
            <div>
                <div id="wrapper">
                    <!-- 좌측 div -->
                    <div id="wrapper-left" style="width: 10%;">
                        <h2>
                            공고 목록
                        </h2>
                    </div>
                    <!-- 우측 div -->
                    <div id="wrapper-right" style="width: 9%;">
                        <a class="recruitment-registration-btn" href="recruitmentRegistration.html"><input
                                class="recruitment-registration-input" type="button" value="공고 등록"></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- 최상위 div START -->
        <!-- 공고 목록 및 공고등록버튼 START -->
        <div class="sec-div" >
            <div class="mainFrame">
                <div class="company-list">
                    <div class="company-list-div">
                        <!-- 공고list들 -->
                        <!-- for-each START -->
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- for-each END -->
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="company-margin">
                            <ul>
                                <li>
                                    <!-- 해당 기업공고글 list로 링크  -->
                                    <a class="company-href" href="recruitmentOfCompany.html">
                                        <!-- 해당 기업이미지 걸기 -->
                                        <div class="company-img" style="background-image: url(images/movie.jpg)" ;>
                                        </div>
                                        <figcaption>
                                            <div id="text-job-card">
                                                <div class="job-card-company-name">공고 명 : ${}</div><br>
                                                <div class="job-card-recruitment-date">모집기간 : ${}</div>
                                            </div>
                                        </figcaption>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 공고 목록 및 공고등록버튼 END -->
        <!-- 최상위 div END -->
    </div>
    <script type="text/javascript" src="recruitmentList.js"></script>
</body>

</html>