<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/customerService.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>고객센터 페이지</title>
</head>

<body>
    <div class="full?">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;">
                    <nav class="nv">
                        <ul class="nv-st">
                            <li><a id="nav3-1-logo" href="/company/mainBefore"><img class="logo"
                                        src="/resources/images/Dreamer.png"></a>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-2-customerService" href="/company/customerService" type="button">고객센터</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li>
                                <button id="nav3-3-contactUs" class="home-btn" type="button"
                                    onclick=" location.href='/company/contactUs'">문의하기</button>
                            </li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->

        <!-- 고객센터 img START -->
        <div>
            <div>
                <img src="images/movie.jpg" alt=""
                    style="width: 1280px; height: 500px; margin: 100px 300px 50px 300px;">
            </div>
        </div>
        <!-- 고객센터 img END -->

        <!-- 좌 개인회원, 우 기업회원 자주 묻는 코너 START -->
        <div class="customerService-div">
            <!-- 좌 개인회원, 우 기업회원 -->
            <div>
                <div id="detail-wrapper">
                    <!-- 좌측 div -->
                    <div id="detail-wrapper-left" style="width: 50%;display: inline-block;">
                        <div style="width: 600px; max-width: 100%; height: 100px;display: inline-block; background-color: rgba(0, 82, 233, 0.678); text-align: center;
                        font-size: 24px; color: white; font-weight: bold; padding-top: 34px; border-radius: 5px;">
                            개인회원 자주 묻는 질문</div><br><br>
                        <a href="/company/qna1">지원한 회사에서 피드백이 없습니다. 어떻게 하면 되나요?</a><br><br>
                        <a href="/company/qna2">서류 전형에 합격했습니다. 이후 절차는 어떻게 되나요?</a><br><br>
                        <a href="/company/qna3">제출하기 버튼이 비활성화(회색)되어 있어요.</a><br><br>
                        <a href="/company/qna4">작성 중 목록을 삭제하고 싶어요.</a><br><br>
                        <a href="/company/qna5">이메일 변경 시 작성 중 목록 내 이메일이 변경되지 않아요.</a><br><br>
                    </div>
                    <!-- 우측 div -->
                    <div id="detail-wrapper-right" style="width: 50%;display: inline-block;">
                        <div style="width: 600px; max-width: 100%; height: 100px; display: inline-block; background-color: rgba(0, 82, 233, 0.678); text-align: center;
                        font-size: 24px;color: white; font-weight: bold; padding-top: 34px; border-radius: 5px;">기업회원 자주 묻는 질문</div><br><br>
                        <a href="/company/co_qna1">기업 서비스 가입, 이용 절차가 궁금합니다.</a><br><br>
                        <a href="/company/co_qna2">공고 등록을 대행해 주시나요?</a><br><br>
                        <a href="/company/co_qna3">서류 통과 후 면접 진행은 어떻게 하나요?</a><br><br>
                        <a href="/company/co_qna4">등록된 기업 정보는 어디에 노출되나요?</a><br><br>
                        <a href="/company/co_qna5">기업 계정 회원을 탈퇴하고 싶어요.</a><br><br>
                    </div>
                </div>
            </div>
        </div>
        <!-- 좌 개인회원, 우 기업회원 자주 묻는 코너 END -->

        <!-- 하단 START -->
        <div class="resume-btn-container">
            <div class="b-container">
                <div class="p-container">
                    <div class="p-root">
                        <div class="p-item">
                            <div class="p-comment">ㆎ등록된 질문 외에 궁금하신 사항이나 바라는 점은 우측상단 문의하기를 이용해 주세요|</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 하단 END -->
    </div>
    <script type="text/javascript" src="/resources/customerService.js"></script>
</body>

</html>