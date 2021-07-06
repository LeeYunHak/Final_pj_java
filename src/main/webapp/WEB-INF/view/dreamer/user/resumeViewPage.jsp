<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이력서</title>
    <link rel="stylesheet" href="/resources/CvpageCss.css">
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
                    <img id="search1" src="/resources/images/search.png" style="width: 30px; height: 30px;">
                    <img id="mypage1" src="/resources/images/avatar.png" style="width: 30px; height: 30px;">
                </div>
            </div>    
        </header>
    </div>
    <div class="blank"></div>
    <div class="resume-list-container">
        <div id="resume-list">
            <div class="resume-list-header">
                <h4>최근 이력서</h4>
            </div>
            <div style="max-height:inherit;overflow-y:inherit;height:inherit;">
                <div class="resume-list-content">
                    <div class="resume-item">
                        <div class="resume-box">
                            <button type="button" id="addBtn" class="resume-add-btn">
                                <div class="wrapper">
                                    <div class="box-dreamer">
                                        <i class="resume-icon"></i>
                                    </div>
                                    <p>이력서 작성</p>
                                </div>
                            </button>
                        </div>
                    </div>
                    <div class="resume-item">
                        <div class="resume-box">
                            <div class="drop-resume">
                                <div class="wrapper">
                                    <div class="box">
                                        <i class="upload-icon"></i>
                                    </div>
                                    <p>파일 업로드</p>
                                </div>
                                <input type="file" style="display: none;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="/resources/CVpageJs.js"></script>
</html>