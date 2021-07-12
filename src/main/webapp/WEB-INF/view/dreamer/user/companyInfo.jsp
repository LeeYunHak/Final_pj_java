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
                            <li class="nv-it"><a id="nav3-1-logo" href="로그인 후 메인"><img src="/resources/images/Dreamer_W.png" class="logo"></a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-2-announcement" type="button" href="#">공고목록</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-4-applicant_status" type="button" href="#">지원자 현황</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-5-companyinfo" type="button" href="#">회사정보</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-6-ProfileName" type="button" href="companyInfo"
                                style="color: white; font-size: 15px;">이름</a></li>
                            <li style="float: right;"><a href="userMainBeforePage"><button class="home-btn" type="button">드리머 홈</button></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->
        <div class="tab-container">
            <a href="companyImage"> <!--이미지 수정페이지--><button class="img-btn">이미지</button></a>
            <a href="#"> <!--이미지 수정페이지--><button class="info-btn">정보</button></a>
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
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
</html>