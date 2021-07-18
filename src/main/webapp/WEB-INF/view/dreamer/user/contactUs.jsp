<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="contactUs.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>고객센터 페이지-문의등록</title>
</head>

<body>
    <div class="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;">
                    <nav class="nv">
                        <ul class="nv-st">
                            <li><a id="nav3-1-logo" href="loginUserPage.html"><img class="logo"
                                        src="images/Dreamer.png"></a>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-2-customerService" href="customerService.html" type="button">고객센터</a></li>
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
                                    onclick=" location.href='contactUs.html'">문의하기</button>
                            </li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->

        <!-- 문의 등록 -->
        <div style="width: 1300px; margin: 100px 300px 50px 300px;padding-left: 200px;">
            <h2 style="width: 1100px;">문의 등록</h2>
        </div>

        <!-- 좌 개인회원, 우 기업회원 자주 묻는 코너 START -->
        <div class="customerService-div">
            <!-- 좌 개인회원, 우 기업회원 -->
            <div>
                <div id="detail-wrapper">
                    <!-- 좌측 div -->                   
                    <div>
                        이메일 주소<br><br>
                        <input type="text" value="" placeholder="가입하신 이메일 주소를 기입해 주세요."
                                    style="width: 500px; max-width: 100%; height: 40px; border:grey 1px solid; border-radius: 5px;"><br><br>
                    </div>
                    <div>
                        연락처<br><br>
                        <input type="text" value="" placeholder="수신 가능한 연락처를 기입해 주세요."
                                    style="width: 500px; max-width: 100%; height: 40px; border:grey 1px solid; border-radius: 5px;"><br><br>
                    </div>
                </div>
                <div class="newq">
                    <div>
                        제목<br><br>
                        <input type="text" value="" placeholder="  제목을 입력해 주세요."
                                    style="width: 800px; max-width: 100%; height: 40px; border:grey 1px solid; border-radius: 5px;"><br><br>
                    </div>
                    <div>
                        문의 내용<br><br>
                        <input type="text" value="" placeholder="  내용을 입력해 주세요."
                                    style="width: 800px; max-width: 100%; height: 400px; border:grey 1px solid; border-radius: 5px;"><br><br>
                    </div>
                </div>
            </div>
        </div>
        <!-- 좌 개인회원, 우 기업회원 자주 묻는 코너 END -->
    </div>
    <script type="text/javascript" src="contactUs.js"></script>
</body>

</html>