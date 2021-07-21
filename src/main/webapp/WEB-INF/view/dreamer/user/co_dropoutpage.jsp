<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/co_dropoutpage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>계정설정페이지</title>
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
        <div class="main">
            <div class="sidebar">
                <h4>&nbsp</h4>
                <h4>&nbsp</h4>
                <h5>&nbsp</h5>
                <h2>계정 설정</h2>
                <h2>&nbsp</h2>
                <h2>&nbsp</h2>
                <a href="/company/co_accountpage" style="color: #797979;">비밀번호 설정</a>
                <h5>&nbsp</h5>
                <h5>&nbsp</h5>
                <a href="/company/co_dropoutpage" style="color: grey; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴</a>
            </div>
            <div class="dropout">
                <h3>탈퇴 시 주의사항</h3>
                <h3>&nbsp;</h3>
                <!-- ul에 스타일 추가, list 텍스트 내용 변경 -->
                <ul style="line-height: 30px; margin-left: 0px; color: #979797;">
                    <li style="list-style:disc"><h4 style="display: inline-block;">탈퇴 시 회원님의 공고를 포함하여 회원님의 계정에 저장된</h4>
                    <h4 style="display: inline-block; font-size: 16px; color: tomato;">모든 정보가 영구적으로 삭제되며,</h4></li>
                    <li><h4>다시는 복구할 수 없습니다.</h4></li>
                    <li style="list-style:disc"><h4 style="display: inline-block;">등록한 공고의 저장을 원하실 경우, 탈퇴 이전에</h4>
                    <h4 style="display: inline-block; font-weight: bolder; text-decoration: underline;font-size: 16px; color: tomato;">공고 목록 페이지</h4>
                    <h4 style="display: inline-block;">에서 다운로드 해주세요.</h4></li>
                    <li style="list-style:disc"><h4 style="display: inline-block;">이상의 내용에 동의하여 탈퇴를 원하실 경우, 아래의 '동의하기' 버튼을 클릭 부탁드립니다.</h4></li>
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
                <input type="submit" class="dropoutbtn" id="dropoutbtn" value="동의하기">
            </div>
        </div>

        <div id="my_modal2">
            <div>
                <div class="ModalHeader2" style="text-align: center;">
                    <span style="text-align: center; font-size: 20px;" >탈퇴하기</span>
                    <button type="button" class="Modal_close_btn2">X</button>
                    <div style="width: 102%;border-top: 1px solid #c8c8c8; margin-top: 20px;"></div>
                </div>
                <div class="ModalBody2">
                    <div>
                        <h3>드리머를 탈퇴하시겠습니까?</h3>
                    </div>
                </div>    
                <footer class="foot">
                    <input type="button" id="close" class="close" value="닫기">
                    <input type="submit" id="drop" value="탈퇴하기">
                </footer>
            </div>        
        </div>
        <div id="my_modal1">
            <div class="ModalHeader1" style="text-align: center;">
                <span style="text-align: center; margin-right: -25px; font-size: 20px;" >회원탈퇴가 완료되었습니다.</span>
                <div style="width: 100%;border-top: 1px solid #c8c8c8; margin-top: 20px;"></div>
            </div>
            <div class="ModalBody1">
                <div>
                    <h4>그동안 드리머를 이용해주셔서 감사합니다.</h4>
                    <h6>&nbsp;</h6>
                    <h6>보다 나은 서비스로 다시 찾아뵙겠습니다.</h6>
                </div>
                <footer class="foot">          
                    <input type="button" id="gohome" value="드리머 첫화면"
                    onclick="javascript:location.href='/user/mainBefore'"></input>
            </footer>
        </div>
       
    </div>        
    <script type="text/javascript" src="/resources/co_dropoutpage.js"> </script>
</body>
</html>