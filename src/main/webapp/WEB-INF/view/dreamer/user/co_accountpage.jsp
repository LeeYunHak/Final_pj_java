<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/co_accountpage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>기업계정설정페이지</title>
</head>
<body>
    <div class="full">
        <!-- 네비바 아예 바꿈, 아래 탐색창은 지우고 마이페이지 작은창(arrow_box)도 지움 -->
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
        <div class="main">
            <div class="sidebar">
                <h4>&nbsp</h4>
                <h4>&nbsp</h4>
                <h5>&nbsp</h5>
                <h2>계정 설정</h2>
                <h2>&nbsp</h2>
                <h2>&nbsp</h2>
                <!-- fontweight(굵기)추가, 폰트색 변경 -->
                <a href="/company/co_accountpage"style="color:grey; font-weight: bold;">비밀번호 설정</a>
                <h5>&nbsp</h5>
                <h5>&nbsp</h5>
                <!-- 폰트색 변경 -->
                <a href="/company/co_dropoutpage" style="color: #797979;">&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴</a>
            </div>
            <div class="setting">
                <h3>비밀번호 설정</h3>
                <input type="email" class="email" placeholder="abcd123@naver.com">
                <h6>&nbsp</h6>
                <h6>&nbsp</h6>
                <h6 style="color: #adadad;">*비밀번호를 재설정 할 이메일 계정을 입력해주세요</h6>
                <h6>&nbsp</h6>
                <h6>&nbsp</h6>
                <input type="submit" class="submit" value="전송">
            </div>
        </div>
    </div>        
    <script type="text/javascript" src="/resources/co_accountpage.js"> </script>
</body>
</html>