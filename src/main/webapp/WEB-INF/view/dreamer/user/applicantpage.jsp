<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/applicantpage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>지원자정보</title>
</head>
<body>
    <div class="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div>
                    <nav class="nv">
                        <ul class="nv-st">
                            <li class="nv-it"><a id="nav3-1-logo" href="/company/mainBefore"><img src="/resources/images/Dreamer_W.png" class="logo"></a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-2-announcement" type="button" href="/company/recruitmentList">공고목록</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-4-applicant_status" type="button" href="/company/applicantstatus">지원자 현황</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-5-companyinfo" type="button" href="/company/companyInfo">회사정보</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-7-account" type="button" href="/company/co_accountpage">계정관리</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-6-ProfileName" type="button"
                                style="color: white; font-size: 15px;">기업명</a></li>
                            <li style="float: right;"><button class="home-btn" type="button" onclick="location.href = '/user/mainBefore'">드리머 홈</button></li>
                        <!-- 마이페이지박스추가 -->
                            <div>
                                <div class="arrow_box">
                                    <div class="blank">
                                        <p></p>
                                    </div><br>
                                    <div class="logout"><a href="/user/logOut"
                                            style="text-decoration: none;color: grey; font-size: 14px;">
                                            로그아웃</a></div><br>
                                             <!-- 고객센터추가 -->
                                    <div class="servicecenter"><a href="/company/customerService"
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
        
        <div class="sec">
            <div class="mainFrame">
                <div class="applicant">
                    <div style="margin-bottom: 100px; padding-left: 15px;">
                        <div class="profile-img" style="background-image: url('https://lh3.googleusercontent.com/a/AATXAJxUk7k9zuTifNm76mAqm6ti2Ca9Z96pTotTHEv1=s96-c'); float: left;"></div>   
                        <div style="margin-left: 200px; padding-top: 20px;">
                            <h5 style="line-height: 30px;">지원자 이름</h5>
                            <h5 style="line-height: 30px;">전화번호</h5>
                            <h5 style="line-height: 30px;">이메일</h5>
                        </div> 
                    </div>
                    <div style="height: 600px; padding-left: 15px;">
                        <h2 style="line-height: 70px;">자기소개</h2>
                        <h4 style="line-height: 30px;">지역</h4>
                        <h5 style="line-height: 30px;">서울시 종로구</h5>
                        <h4 style="line-height: 30px;">최종학력</h4>
                        <h5 style="line-height: 30px;">용인대학교 졸업</h5>
                        <h4 style="line-height: 30px;">작품개수</h4>
                        <h5 style="line-height: 30px;">1</h5>
                        <h4 style="line-height: 30px;">자기소개 한마디</h4>
                        <h5 style="line-height: 30px;">안녕하세요</h5>
                        <h4 style="line-height: 30px;">마이페이지에서 작성한 메인 이력서 내용</h4>
                        <h5 style="line-height: 30px;">이력서 내용 삽입</h5>
                    </div>
                </div>
            </div>
        </div>
        
    </div>  
    <script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
    <script type="text/javascript" src="/resources/applicantpage.js"> </script>
</body>
</html>