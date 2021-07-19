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
    <title>이력서 작성</title>
    <link rel="stylesheet" href="/resources/CV-write.css">
    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body>
    <div class="full" name="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;">
                    <nav class="nv">
                        <ul class="nv-st">
                            <li><a id="nav3-1-logo" href="/user/mainAfterMain"><img src="/resources/images/Dreamer.png" class="logo"></a>
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
                            <div>
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
                                            <!-- 고객센터추가 -->
                                    <div class="servicecenter"><a href="/user/sevicecenter"
                                        style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                        고객센터</a></div><br>
                                    <div class="blank">
                                        <p></p><br>
                                    </div>
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
            <div class="opennavi" style="width: 100%; height: 286px; text-align: right;min-width: 1750px;">
                <div style="z-index: 1000; float: left;">
                    <img src="/resources/images/movie.jpg" alt="" style="width: 400px; height:286px;">
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
                    <ul style="text-align: right;">
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
            <main>
                <div id="frame">
                    <div class="container">
                        <div id="resume-wr">
                        <form action="/user/resumeWrite" method="post">
                            <div class="resume-info">
                                <div class="resume-header">
                                    <div class="resume-input-form-group">
                                        <input class="resume-title-input" type="text" maxlength="100" placeholder="이력서 제목(필수)" name="resumeTitle" value="">
                                    </div>
                                </div>
                                <div class="resume-input-form-group">
                                    <input class="resume-input-name" type="text" maxlength="100" placeholder="이름(필수)" name="userName" value="${loginUser.userName }">
                                </div>
                                <div class="resume-input-form-group">
                                    <input class="resume-input-email" type="email" maxlength="120" placeholder="이메일(필수)" name="userEmail" value="${loginUser.userEmail }">
                                </div>
                                <div class="resume-input-form-group">
                                    <input class="resume-input-phone" type="tel" maxlength="200" placeholder="연락처(필수) ex) 010-0000-0000" name="userPhone" value="${loginUser.userPhone }">
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
                            </form>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script type="text/javascript" src="/resources/navi.js"></script>
 </body>
</html>