<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사 채용공고글</title>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/recruitmentOfCompany.css">
</head>

<body>
    <div class="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div>
                    <nav class="nv">
                        <ul class="nv-st">
                            <li class="nv-it"><a id="nav3-1-logo" href="/company/mainBefore"><img src="/resources/images/Dreamer_W.png"
                                        class="logo"></a></li>
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
                            <li style="float: right;"><button class="home-btn" type="button"
                                    onclick="location.href = '/user/mainBefore'">드리머 홈</button></li>
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

        <!-- 최상위 div START -->
        <div class="fir-div">
            <div class="mainFrame">
                <!-- 좌측 기업 이미지, 내용, 맵 -->
                <div class="company-div">
                    <!-- 회사 정보 내용 -->
                    <div>
                        <!-- 회사 이미지 -->
                        <div><img class="company-image" src="/resources/images/movie.jpg">
                        </div>
                        <div style="padding: 0px; width: 900px;">
                            <!-- 기업 소개글 -->
                            <div class="company-introduce-div">
                                <h3 class="company-introduce">기업 소개글</h3>
                                <textarea name="introduce" cols="125" rows="10">기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 소개글 내용기업 ${introduce} </textarea>
                            </div>
                            <!-- 세부 사항 -->
                            <div class="detail-div">
                                <h3 class="detail-title">세부 사항</h3>
                                <!-- 세부 사항 좌,우 -->
                                <div>
                                    <div id="detail-wrapper">
                                        <!-- 좌측 div -->
                                        <div id="detail-wrapper-left" style="width: 40%;">
                                            담당자 &nbsp; &nbsp;<input name="personInCharge" type="text" placeholder="담당자명 ${personInCharge}"><br><br>
                                            모집인원 <input name="recruitmentPeople" type="text" placeholder="인원수 ${recruitmentPeople}"><br><br>
                                            모집기간 <input name="recruitmentDate" type="date" placeholder="2021"> - <input type="date"
                                                placeholder="2021"><br><br>
                                        </div>
                                        <!-- 우측 div -->
                                        <div id="detail-wrapper-right" style="width: 40%;">
                                            담당 연락처 <input name="phoneOfPersonInCharge" type="text" placeholder="010-xxxx-xxxx ${phoneOfPersonInCharge}"><br><br><br>
                                            담당 이메일 <input name="emailOfPersonInCharge" type="text" placeholder="email@goole.kr ${emailOfPersonInCharge}"><br><br><br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 자격 요건 -->
                            <div class="requirements-div">
                                <h3 class="requirements-title">자격 요건</h3>
                                <textarea name="requirements" cols="125"
                                    rows="10">자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 내용자격요건 ${requirements} </textarea>
                            </div>
                            <!-- 우대사항 -->
                            <div class="prioritize-ability-div">
                                <h3 class="prioritize-ability-title">우대사항</h3>
                                <textarea name="prioritizeAbility" cols="125"
                                    rows="10">우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 내용우대사항 ${prioritizeAbility} </textarea>
                            </div>
                            <!-- 혜택 및 복지 -->
                            <div class="benefits-welfare-div">
                                <h3 class="benefits-welfare-title">혜택 및 복지</h3>
                                <textarea name="benefitsWelfare" cols="125"
                                    rows="10">혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 내용혜택 및 복지 ${benefitsWelfare} </textarea>
                            </div>
                        </div>
                        <!-- 기업 위치(구글맵) -->
                        <div style="padding-top: 20px;">
                            <h3>기업위치</h3><br>
                            주소 : <input name="companyAddress" class="text-map" type="text" placeholder="서울시 종로구 ${companyAddress}"><br>
                            <div id="map"></div>
                        </div>
                    </div>
                </div>
                <!-- 우츨 사이드바 - 기업 모집기간, 수정, 삭제 -->
                <div class="sidebar">
                    <h2 class="company-title">나무엑터스(기업명)${companyName}</h2>
                    <div id="update-bm-div"><input id="update-btn" type="button" value="수정하기"
                            onclick="alert('수정완료되었습니다.')"></div>
                    <div id="delete-bm-div"><input id="delete-btn" type="button" value="삭제하기"
                            onclick="alert('삭제완료되었습니다.')"></div>
                </div>
            </div>
        </div>
        <!-- 최상위 div END -->
    </div>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtJPJok-ic-162wUIyxN5AcctNP3cNKOk&callback=initMap&region=kr"></script>
    <script type="text/javascript" src="/resources/recruitmentOfCompany.js"></script>
</body>

</html>