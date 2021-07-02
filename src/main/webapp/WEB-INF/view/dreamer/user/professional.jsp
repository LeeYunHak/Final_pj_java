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
    <link rel="stylesheet" href="/resources/professional.css">
    <title>전문분야 설정 페이지</title>
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
                            <a href="#" class="myprofile_a"> <!--주소에 프로필설정창가게 하셈-->
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
                            <h2 class="resume-h2">전문분야 설정</h2>
                            <div class="resume1">
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px; margin-bottom: 30px;">
                                    <label for="jobKindU" style="align-items: center;line-height: 24px;color: #999; margin-right: 30px; padding-left: 10px;">직군</label>
                                    <select class="form-control" id="jobKindU" name="jobKindU" onchange="jobKindChange(this)"
                                    style="width: 600px; padding: .8em .5em; border: 1px solid #c8c8c8; border-radius: 0px;  font-size: 15px;">
                                        <option value="a">선택하기</option>
                                        <option value="b">연출</option>
                                        <option value="c">조명</option>
                                        <option value="d">음향</option>
                                        <option value="e">촬영</option>
                                        <option value="f">특수효과</option>
                                        <option value="g">제작</option>
                                        <option value="h">배우</option>
                                        <option value="i">미술</option>
                                        <option value="j">분장</option>
                                    </select>
                                </div>   
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px; margin-bottom: 30px;">
                                    <label for="jobKindD" style="align-items: center;line-height: 24px;color: #999; margin-right: 30px; padding-left: 10px;">직무</label>
                                    <select class="form-control" id="jobKindD" name="jobKindD"
                                    style="width: 600px; padding: .8em .5em; border: 1px solid #c8c8c8; border-radius: 0px;  font-size: 15px;">
                                    <option>직군을 선택해 주세요</option>
                                    </select>
                                </div>   
                                <div style="position: relative;font-size: 16px; display: block; margin-top: 30px; margin-bottom: 30px;">
                                    <label style="align-items: center;line-height: 24px;color: #999; margin-right: 13px; margin-left: -5px;">작품개수</label>
                                    
                                        <span class="find">
                                            <select style="width: 600px; padding: .8em .5em; border: 1px solid #c8c8c8; border-radius: 0px;  font-size: 15px;">
                                                <option selected>선택하기</option>
                                                <option>신입</option>
                                                <option>1개</option>
                                                <option>2개</option>
                                                <option>3개</option>
                                                <option>4개</option>
                                                <option>5개</option>
                                                <option>6개</option>
                                                <option>7개</option>
                                                <option>8개</option>
                                                <option>9개</option>
                                                <option>10개이상</option>
                                            </select>
                                        </span>
                                   
                                </div> 
                                <div style="position: relative;font-size: 16px; display: block;">
                                    <label style="align-items: center;line-height: 24px;color: #999; margin-right: 13px; margin-left: -5px;">희망급여</label>
                                    <span class="light">
                                    <input type="number" id="salary" style="width:558px; padding: .8em .5em;border:none; border-bottom : 1px solid #c8c8c8; font-size: 15px;">
                                    <input type="text" style="width:50px; padding: .8em .5em;border:none;font-size: 15px; pointer-events: none;" placeholder="만원">
                                </div> 
                                <div style="margin-left: 600px; margin-top: 50px;">
                                    <button type="button" style="color: rgb(0,206,201);border: #c8c8c8 solid 1px;padding: 10px;
                                    background-color: #ffffff; border-radius: 3px;cursor: pointer; font-weight: bold; font-size: 15px;"onclick="javascript:location.href='/user/profileMain'">수정 완료</button>
                                </div>  
                            </div>  
                        </div>             
                    </div>
                </section>
            </div>
        </section>
    </div>
    <script type="text/javascript" src="/resources/professional.js"></script>
</body>
</html>