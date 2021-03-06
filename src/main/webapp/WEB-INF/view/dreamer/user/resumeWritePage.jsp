<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>이력서 작성</title>
    <link rel="stylesheet" href="/resources/CV-write.css">
</head>
<body>
    <div class="full">
        <header>
            <h2><span><a href="loginmain.html" class="dreamer">Dreamer</a></h2>
            <div class="navi">
                <span><button id="selectnavi" type="button">탐색</button></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="resume" type="button">이력서</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="matchup" type="button">매치업</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="mp">
                    <img id="search1" src="images/search.png" style="width: 30px; height: 30px;">
                    <img id="mypage1" src="images/avatar.png" style="width: 30px; height: 30px;">
                </div>
            </div>    
        </header>
        <div>
            <main>
                <form action="/user/resumeWrite" method="POST">
                    <div id="frame">
                        <div class="container">
                            <div id="resume-wr">
                                <div class="resume-info">
                                    <div class="resume-header">
                                        <div class="resume-input-form-group">
                                            <input class="resume-title-input" type="text" maxlength="100" placeholder="이력서 제목(필수)" name="resumeTitle" value="">
                                        </div>
                                    </div>
                                    <div class="resume-input-form-group">
                                        <input class="resume-input-name" type="text" maxlength="100" placeholder="이름(필수)" name="userName" value="${userName}">
                                    </div>
                                    <div class="resume-input-form-group">
                                        <input class="resume-input-email" type="email" maxlength="120" placeholder="이메일(필수)" name="userEmail" value="${userEmail}">
                                    </div>
                                    <div class="resume-input-form-group">
                                        <input class="resume-input-phone" type="tel" maxlength="200" placeholder="연락처(필수) ex) 010-0000-0000" name="userPhone" value="${userPhone}">
                                    </div>
                                </div>
                                <div class="resume-about">
                                    <div class="resume-about-header">간단 소개</div>
                                    <p class="guide-comment">• 본인의 업무 경험을 기반으로 핵심역량과 업무 스킬을 간단히 작성해주세요.<br>• 3~5줄로 요약하여 작성하는 것을 추천합니다!</p>
                                    <div class="resume-input-form-group">
                                        <div class="resume-ab-in">
                                            <textarea class="resume-input-about" name="introduce" maxlength="2000" placeholder="간단한 자기소개를 통해 이력서를 돋보이게 만들어보세요. (3~5줄 권장)"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="resume-list">
                                    <div class="resume-list-career">
                                        <div class="resume-list-header">
                                            <span>경력</span>
                                        </div>
                                        <p class="guide-comment">• 경력사항이 없는 경우 '신입'으로 작성해주세요.<br>• 업무 성과는 되도록 구체적인 숫자 혹은 %로 표현해주세요!</p>
                                        <div class="resume-input-form-group">
                                            <div class="resume-ab-in">
                                                <textarea class="resume-input-about" name="career" maxlength="2000" placeholder="담당하신 업무 중 우선순위가 높은 업무를 선별하여 최신순으로 작성해주세요."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="resume-list-education">
                                        <div class="resume-list-header">
                                            <span>학력</span>
                                        </div>
                                        <p class="guide-comment">• 최신순으로 작성해주세요.</p>
                                        <div class="resume-input-form-group">
                                            <div class="resume-ab-in">
                                                <textarea class="resume-input-about" name="education" maxlength="2000" placeholder="최신순으로 작성해주세요."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="resume-list-skill">
                                        <div class="resume-list-header">
                                            <span>스킬</span>
                                        </div>
                                        <p class="guide-comment">• 편집 툴, 디자인 툴, 마케팅 툴 등 가지고 있는 직무와 관련된 스킬을 추가해보세요</p>
                                        <div class="resume-input-form-group">
                                            <div class="resume-ab-in">
                                                <textarea class="resume-input-about" name="skill" maxlength="2000" placeholder="편집 툴, 디자인 툴, 마케팅 툴 등 가지고 있는 직무와 관련된 스킬을 추가해보세요"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="resume-list-activity">
                                        <div class="resume-list-header">
                                            <span>수상 및 기타</span>
                                        </div>
                                        <p class="guide-comment">• 수상 이력, 직무 관련 자격증, 수료한 교육이나 참석한 외부활동 등이 있다면 간략히 작성해주세요.</p>
                                        <div class="resume-input-form-group">
                                            <div class="resume-ab-in">
                                                <textarea class="resume-input-about" name="awards" maxlength="2000" placeholder="수상 이력, 직무 관련 자격증, 수료한 교육이나 참석한 외부활동 등이 있다면 간략히 작성해주세요."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="resume-btn-container">
                                    <div class="b-container">
                                        <div class="p-container">
                                            <div class="p-root">
                                                <div class="p-emoji">🙌</div>
                                                <div class="p-item">
                                                    <div class="p-comment">당신의 커리어를 응원합니다!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-container">
                                            <button class="temporary-btn">
                                                <span class="label">
                                                    <span>임시 저장</span>
                                                </span>
                                            </button>
                                            <button type="submit" class="btn-Completed">
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
                </form>
            </main>
        </div>
    </div>
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
</html>