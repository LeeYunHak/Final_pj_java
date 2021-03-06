<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사정보</title>
    <link rel="stylesheet" href="/resources/companyInfo.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
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
        <div class="tab-container">
            <a href="/company/companyImage"> <!--이미지 수정페이지--><button class="img-btn">이미지</button></a>
            <a href="/company/companyInfo"> <!--정보 수정페이지--><button class="info-btn">정보</button></a>
        </div>
        <div class="cp-info">
            <div class="sc-container">
                <h2 class="if-h2">회사정보</h2>
                <div class="formWrapper">
                    <div class="if-first">
                        <div class="cp-label">
                            회사이름
                        </div>
                        <input type="text" class="ip-text-long" name="companyName" placeholder="회사이름" value="등록된회사이름 나오게 이엘로작성" required>
                        <div class="label-txt">
                            회사 소개 (2,000자 제한)
                        </div>
                        <textarea name="companyIntroduce" class="cp-itd" maxlength="2000" required>저장된 회사 소개나오면 됨</textarea>
                    </div>
                </div>
                <div class="selectWrapper">
                    <div class="label-txt">
                        대표 주소
                    </div>
                    <input type="text" class="ip-text-long" name="companyAddress" placeholder="대표주소" value="등록된 대표주소 나오게 이엘로작성" required>
                </div>
                <div class="selectWrapper">
                    <div class="label-txt">
                        사업자 등록 번호
                    </div>
                    <input type="text" class="ip-text-long" name="companyRegistrationNumber" placeholder="사업자 등록 번호" value="등록된 사업자번호 나오게 이엘로 작성" required>
                </div>
                <div class="row-sc">
                    <div class="Column-sc">
                        <div class="box-sc">
                            <div class="label-txt">
                                <span>
                                    연매출액
                                </span>
                            </div>
                            <input type="text" class="ip-text-half" name="companySales" placeholder="매출액 (단위:억원)" value="등록된 매출액 나오게 이엘로 작성" required>
                        </div>
                    </div>
                    <div class="Column-sc">
                        <div class="box-sc">
                            <div class="label-txt">
                                <span>
                                    직원수
                                </span>
                            </div>
                            <input type="text" class="ip-text-half" name="companyEmployeeNumber" placeholder="직원수" value="등록된 직원수 나오게 이엘로 작성" required>
                        </div>
                    </div>
                    <div class="Column-sc">
                        <div class="box-sc">
                            <div class="label-txt">
                                <span>
                                    설립연도
                                </span>
                            </div>
                            <input type="text" class="ip-text-half" name="companyEstablishmentYear" placeholder="사업자 등록 번호" value="등록된 사업자번호 나오게 이엘로 작성" required>
                        </div>
                    </div>
                    <div class="Column-sc">
                        <div class="box-sc">
                            <div class="label-txt">
                                <span>
                                    담당자 연락처
                                </span>
                            </div>
                            <input type="text" class="ip-text-half" name="companyPhone" placeholder="매출액 (단위:억원)" value="등록된 매출액 나오게 이엘로 작성" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bar">
                <div class="footer-container">
                    <button type="submit" class="updt-btn">수정완료</button>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/resources/co_accountpage.js"> </script>
</body>
</html>