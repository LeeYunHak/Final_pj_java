<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사 채용공고글 작성</title>
    <link rel="stylesheet" href="/resources/recruitmentRegistration.css">
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
                                    <div class="servicecenter"><a href="/user/sevicecenter"
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
        <div>
            <main>
                <div id="frame">
                    <div class="container">
                        <div>
                            <div>
                                <div>
                                    <div>
                                        <input name="recruitmentTitle" class="recruitment-title-input" type="text" maxlength="100"
                                            placeholder="공고 명(필수)" value="공고 명(필수)${recruitmentTitle}">
                                    </div>
                                </div>
                                <div class="recruitment-about">
                                    <div class="recruitment-about-header">&nbsp;기업 소개글</div>
                                    <p class="guide-comment">• 기업에 대한 소개글을 작성해주세요.</p>
                                    <div>
                                        <div class="recruitment-ab-in">
                                            <textarea name="introduce" class="introduce-input-about" maxlength="2000"
                                                placeholder="간단한 기업소개를 통해 인재를 찾아보세요. (3~5줄 권장)"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="detail-list">
                                    <div class="detail-list-career">
                                        <div class="resume-list-header">
                                            <span>&nbsp;세부 사항</span>
                                        </div>
                                        <!-- 세부 사항 좌,우 -->
                                        <div>
                                            <div id="detail-wrapper">
                                                <!-- 좌측 div -->
                                                <div id="detail-wrapper-left" style="margin: 30px 0; width: 50%;">
                                                    담당자 &nbsp; &nbsp;<input name="personInCharge" type="text" placeholder="담당자명 ${personInCharge}"><br><br>
                                                    모집인원 <input name="recruitmentPeople" type="text" placeholder="인원수 ${recruitmentPeople}"><br><br>
                                                    모집기간 <input name="recruitmentDate" type="date" placeholder="2021"> - <input type="date"
                                                        placeholder="2021"><br><br>
                                                </div>
                                                <!-- 우측 div -->
                                                <div id="detail-wrapper-right" style="margin: 30px 0; width: 50%;">
                                                    담당 연락처 <input name="phoneOfPersonInCharge" type="tel"
                                                        placeholder="010-xxxx-xxxx ${phoneOfPersonInCharge}"><br><br><br>
                                                    담당 이메일 <input name="emailOfPersonInCharge" type="email"
                                                        placeholder="email@goole.kr ${emailOfPersonInCharge}"><br><br><br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="requirements-list">
                                        <div class="resume-list-header"><br><br><br><br><br><br><br>
                                            <span style="text-align: left;">&nbsp;자격 요건</span>
                                        </div>
                                        <p class="guide-comment">• 최소 경력사항 및 자격 요건을 기입해주세요.</p>
                                        <div class="resume-input-form-group">
                                            <div class="resume-ab-in">
                                                <textarea name="requirements" class="requirements-input-about" maxlength="2000"
                                                    placeholder="최소 경력사항 및 자격 요건을 기입해주세요. ${requirements}"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="prioritize-ability-list">
                                        <div class="resume-list-header">
                                            <span>&nbsp;우대사항</span>
                                        </div>
                                        <p class="guide-comment">• 회사의 우대사항을 기입해주세요.</p>
                                        <div class="resume-input-form-group">
                                            <div class="resume-ab-in">
                                                <textarea name="prioritizeAbility" class="prioritizeAbility-input-about" maxlength="2000"
                                                    placeholder="회사의 우대사항을 기입해주세요. ${prioritizeAbility}"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="benefits-welfare-list">
                                        <div class="resume-list-header">
                                            <span>&nbsp;혜택 및 복지</span>
                                        </div>
                                        <p class="guide-comment">• 회사의 혜택 및 복지를 기입해주세요.</p>
                                        <div class="resume-input-form-group">
                                            <div class="resume-ab-in">
                                                <textarea name="benefitsWelfare" class="benefitsWelfare-input-about" maxlength="2000"
                                                    placeholder="회사의 혜택 및 복지를 기입해주세요. ${benefitsWelfare}"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="company-address-list">
                                        <div class="resume-list-header">
                                            <span>&nbsp;기업 위치</span>
                                        </div>
                                        <!-- 기업 위치 좌,우 -->
                                        <div>
                                            <div id="address-wrapper"><br>
                                                <div id="addressText-wrapper" style="margin: 10px 0; width: 30%;">
                                                    주소 : <input name="companyAddress" type="text" style="width: 300px;" placeholder="서울시 종로구 ${companyAddress}"><br><br>
                                                </div>
                                                <div id="map"></div>
                                            </div><br>
                                        </div>
                                    </div>
                                </div>
                                <!-- 하단 -->
                                <div class="resume-btn-container">
                                    <div class="b-container">
                                        <div class="p-container">
                                            <div class="p-root">
                                                <div class="p-emoji"></div>
                                                <div class="p-item">
                                                    <div class="p-comment">훌륭한 인재를 찾으세요</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-container">
                                            <button class="temporary-btn">
                                                <span class="label">
                                                    <span>임시 저장</span>
                                                </span>
                                            </button>
                                            <button class="btn-Completed">
                                                <span class="label">
                                                    <span>작성 완료</span>
                                                </span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </main>
        </div>
    </div>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtJPJok-ic-162wUIyxN5AcctNP3cNKOk&callback=initMap&region=kr"></script>
    <script type="text/javascript" src="/resources/recruitmentRegistration.js"></script>
</body>

</html>