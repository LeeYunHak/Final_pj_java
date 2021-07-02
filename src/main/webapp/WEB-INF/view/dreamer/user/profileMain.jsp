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
    <link rel="stylesheet" href="/resources/profileMain.css">
    <title>profileMain</title>
</head>
<body>
    <div class="full">
        <header>
            <h2><span><a href="/user/mainAfterMain" class="dreamer">Dreamer</a></h2>
            <div class="navi">
                <span><button id="selectnavi" type="button">탐색</button></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="resume" type="button">이력서</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="mp">
                    <img id="search1" src="/resources/images/search.png" style="width: 30px; height: 30px;">
                    <img id="mypage1" src="/resources/images/avatar.png" style="width: 30px; height: 30px;">
                </div>
            </div>    
        </header>
        <div class="Blank"></div>
        <section class="sec">
            <h2 class="subheading">프로필</h2>
            <div class="mainFrame">
                <aside class="sidebar">
                    <div class="sidebar-contents">
                        <div class="first-contents">
                            <div class="profile-img" style="background-image: url('https://lh3.googleusercontent.com/a/AATXAJxUk7k9zuTifNm76mAqm6ti2Ca9Z96pTotTHEv1=s96-c');">
                                <div class="img-input">
                                    <input type="file" accept="image/*">
                                    <i class="fi-fi-camera" role="presentation"></i>
                                    <!-- <i class="camer_icon" role="presentation"></i> -->
                                </div>
                            </div>
                            <a href="/user/profileEdit" class="myprofile_a"> <!--주소에 프로필설정창가게 하셈-->
                                <dl>
                                    <dt id="namename" class="namename">${loginUser.userName }</dt>
                                    <dd>${loginUser.userEmail}</dd>
                                    <dd>${loginUser.userPhone}</dd>
                                </dl>
                            </a>
                        </div>
                        <div class="third-contents">
                            <a href="/user/profileEdit"><div class="third-contents-btn">프로필 수정</div></a> <!--계정 설정으로 가는링크-->
                        </div>
                    </div>
                </aside>
                <section class="m-contents">
                    <div class="status">
                        <div class="resume">
                            <h2 class="resume-h2">기본이력서</h2>
                            <div class="resume1">
                                <dl style="align-items: center;line-height: 24px;color: #999;">기본 이력서 선택</dl>
                                <div class="select">
                                    <button type="button" class="resumeselectbtn" id="resumeselectbtn">
                                        <span>이력서 1</span>
                                    </button>
                                </div>
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
                                    <dl style="align-items: center;line-height: 24px;color: #999;">학교</dl>
                                    <div><span class="univ">이력서에서 작성한 학교</span></div>
                                </div>
                                <div>
                                <dl style="align-items: center;line-height: 24px;color: #999; margin-top: 60px;">이력서의 자기소개</dl>
                                </div>
                            </div>  
                        </div>             
                    </div>
                    <div class="sec-frame">
                        <div class="speciality">
                            <h2 class="speciality-h2">전문분야설정</h2>
                            <div class="speciality1">
                               
                                <div style="position: relative;font-size: 16px; display: block;">
                                    <dl style="align-items: center;line-height: 24px;color: #999;">직군</dl>
                                    <div><span class="light"></span>조명</span>
                                    </div>
                                </div>
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
                                    <dl style="align-items: center;line-height: 24px;color: #999;">직무</dl>
                                    <div><span class="backlight">백 조명</span>
                                    </div>
                                </div>
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px;">
                                    <dl style="align-items: center;line-height: 24px;color: #999;">작품개수</dl>
                                    <div><span style="padding-bottom: 20px;" class="new">신입</span>
                                    </div>
                                </div>
                            </div>  
                        </div>
                        <div style="margin-left: 650px;">
                        <button type="button" style="color: rgb(0,206,201);border: #c8c8c8 solid 1px;padding: 10px;
                        background-color: #ffffff; border-radius: 3px;cursor: pointer; font-weight: bold; font-size: 15px;">전문분야 수정</button>
                        </div>    
                </div>  
                </section>
            </div>
        </section>
    </div>

    <div id="my_modal" class="my_modal">
        <div class="ModalHeader" style="text-align: center;">
            기본 이력서 선택
            <button type="button" class="Modal_close_btn">X</button>
        </div>
        <div class="ModalBody">
            <div class="ModalBody_input">
                <ul style="padding-bottom: 10px; height: 400px; padding: 10px; list-style: none;overflow-y: scroll;">
                    <li class="mo_list" style="width: 50%; float: left; padding: 10px; position: relative; display: list-item;">
                        <button type="button" class="selected" onclick="changeByJS()">
                        <div class="mo_resume">
                            <div class="mo_status">작성 완료</div>
                        </div>
                        <dl class="mo_name">
                            <dt style="color: #333;font-size: 16px; text-overflow: ellipsis; white-space: nowrap;overflow: hidden; line-height: 1.42857143; font-weight: bold;">이력서 1</dt>
                            <dd style="color: #c8c8c8;font-size: 12px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;line-height: 1.42857143;margin-inline-start: 40px; margin: 0;">2021-05-25</dd>
                        </dl>
                        </button>
                    </li>
                    <li class="mo_list" style="width: 50%; float: left; padding: 10px; position: relative; display: list-item;">
                        <button type="button" class="selected" onclick="changeByJS()">
                        <div class="mo_resume">
                            <div class="mo_status">작성 완료</div>
                        </div>
                        <dl class="mo_name2">
                            <dt style="color: #333;font-size: 16px; text-overflow: ellipsis; white-space: nowrap;overflow: hidden; line-height: 1.42857143; font-weight: bold;">이력서 2</dt>
                            <dd style="color: #c8c8c8;font-size: 12px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;line-height: 1.42857143;margin-inline-start: 40px; margin: 0;">2021-05-25</dd>
                        </dl>
                        </button>
                    </li>
                    <li class="mo_list" style="width: 50%; float: left; padding: 10px; position: relative; display: list-item;">
                        <button type="button" class="selected" onclick="changeByJS()">
                        <div class="mo_resume">
                            <div class="mo_status">작성 완료</div>
                        </div>
                        <dl class="mo_name3">
                            <dt style="color: #333;font-size: 16px; text-overflow: ellipsis; white-space: nowrap;overflow: hidden; line-height: 1.42857143; font-weight: bold;">이력서 3</dt>
                            <dd style="color: #c8c8c8;font-size: 12px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;line-height: 1.42857143;margin-inline-start: 40px; margin: 0;">2021-05-25</dd>
                        </dl>
                        </button>
                    </li>
                    <li class="mo_list" style="width: 50%; float: left; padding: 10px; position: relative; display: list-item;">
                        <button type="button" class="selected" onclick="changeByJS()">
                        <div class="mo_resume">
                            <div class="mo_status">작성 완료</div>
                        </div>
                        <dl class="mo_name4">
                            <dt style="color: #333;font-size: 16px; text-overflow: ellipsis; white-space: nowrap;overflow: hidden; line-height: 1.42857143; font-weight: bold;">이력서 4</dt>
                            <dd style="color: #c8c8c8;font-size: 12px;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;line-height: 1.42857143;margin-inline-start: 40px; margin: 0;">2021-05-25</dd>
                        </dl>
                        </button>
                    </li>
                </ul>
                <footer class="mo_foot">
                    <p class="warn">기본 이력서는 원티드 이력서만 선택 가능합니다.</p>
                    <button type="button" class="mo_submit">선택 완료</button>
                </footer>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/resources/profileMain.js">require('../script/viewLog.js') </script>
</body>
</html>