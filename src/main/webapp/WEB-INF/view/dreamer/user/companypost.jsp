<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/companypost.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>기업 구인글 페이지</title>
</head>
<body>
    <div class="full" name="full">
        <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;">
                    <nav class="nv">
                        <ul class="nv-st">
                            <li><a id="nav3-1-logo" href="/user/mainAfterMain"><img src="/resources/images/Dreamer.png" class="logo"></a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-2-Select" type="button">탐색</a></li>
                                <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                                <li><a id="nav3-3-Resume" type="button" href="/user/CVpage">이력서</a></li>
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
                            <li><a id="nav3-6-ProfileName" type="button"style="color: black; font-size: 15px;">${loginUser.userName }</a></li>
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
                                    <!-- 고객센터추가s -->
                                    <div class="servicecenter"><a href="/user/sevicecenter"
                                        style="text-decoration: none;color: #00cec9; font-size: 14px;">
                                        고객센터</a></div><br>
                                    <!-- 고객센터추가e -->
                                    <div class="blank">
                                        <p></p><br>
                                    </div>
                                </div>
                            <li style="float: right;"><button class="home-btn" type="button" onclick=" location.href='/user/companyMain'">기업서비스</button></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <!-- 네비게이션바 END -->

        <!-- 탐색 -->
        <div class="bar">
            <div class="opennavi" style="width: 100%; height: 286px; text-align: right; min-width: 1750px;">
                <div style="z-index: 1000; float: left;">
                    <img src="/resources/images/movie.jpg" alt="" style="width: 400px; height: 286px">
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
                    <ul>
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
        <div class="sec">
            <div class="mainFrame">
                <div class="company" style="width: 950px;">
                    <div style="height: 700px;">
                        <div><img src="/resources/images/movie.jpg" style="width: 900px; height: 500px;border:solid 2px #c8c8c8;"> </div>   
                        <br> 
                        <div class="postingTitle">${comList.companyJobPostingTitle}</div><%-- ${company_job_posting_title} --%>
                        <br>
                        <br>
                        <div class="positngIntro">${comList.companyJobPostingIntroduce}</div><%-- ${company_job_posting_introduce} --%> 
                        <br>
                        <br>
                        <div class="postingQr">• 자격요건</div> 
                        <br>
                        <div class="postingQr-child">&nbsp;${comList.companyJobPostingQr}</div><%-- ${company_job_posting_qr} --%>
                        <br>
                        <br>
                        <div class="postingPrefer">• 우대사항</div> 
                        <br>
                        <div class="postingPrefer-child">&nbsp;${comList.companyJobPostingPreference}</div><%-- ${company_job_posting_preference} --%>
                        <br>
                        <br>
                        <div class="postingWelfare">• 혜택 및 복지</div>
                        <br>
                        <div class="postingWelfare-child">&nbsp;${comList.companyJobPostingWelfare} </div> <%-- ${company_job_posting_welfare} --%>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                  	<div>&nbsp;</div>
                  	<div>&nbsp;</div>
                  	<div>&nbsp;</div>
                  	<div>&nbsp;</div>
                  	<div>&nbsp;</div>
                  	<div>&nbsp;</div>
                        <div id="map"></div>
                    
                </div>
                <div class="sidebar">
                        <h2 style="text-align: center; margin-top: 70px;">${comList.companyName}</h2>
                        <div id="bookmark" style="width: 300px; margin-top: 50px; display: inline-block;">
                            <div id="bm" class="bm">
                                <input type="button" value="북마크" id="bookmarkbtn" class="bookmarkbtn" >
                                <!-- 이거 눌렀을 때 북마크에 인서트 / 유저,잡포스팅에 업데이트 -->
                                <img id="bookmarkimg" class="bookmarkimg" name="bookmarkimg" src="/resources/images/bookmark.png" style="cursor: pointer;">    
                            </div>                          
                            <div id="hi"><input type="button" value="지원하기" id="hirebtn"></div>
                        </div>
                        <div style="text-align: center; margin:20px;">
	                        <h4><a href="/user/mainAfterMain" style="text-decoration: none;">목록으로 돌아가기</a></h4>
                        </div>
                </div>
            </div>
        </div>
        <div class="doc" name="doc" id="doc">
            <div id="my_modal1" name="my_modal1" class="my_modal1">
                <div class="ModalHeader1" style="text-align: center;">
                    <span style="text-align: center; margin-right: -25px; font-size: 20px;" >북마크에 저장되었습니다.</span>
                    <button type="button" class="Modal_close_btn1">X</button>
                </div>
                <div class="ModalBody1">
                    <input type="button" onclick="javascript:location.href='/user/mydreamer'" value="북마크 확인하기" id="bmcheck">
                </div>
                <footer class="foot1">
                </footer>
            </div>
        </div>

        <div id="my_modal2" class="my_modal2">
            <div class="ModalHeader2" style="text-align: center;">
                <span style="text-align: center; font-size: 20px;" >지원하기</span>
                <button type="button" class="Modal_close_btn2">X</button>
            </div>
            <div style="border-bottom: 1px solid #e1e2e3; height: 0px; width: 360px; margin-left: 20px; margin-bottom: 20px;"></div>
            <div class="ModalBody2">
                <div style=" height: 220px;">
                    <h4 style="text-align: left; margin-left: 20px;">지원 정보</h4>
                    <form name="info" action="/user/companypost" method="POST">
                        <label for="name" class="name">이름<input required id="name" type="text" autocomplete="off"></label>
                        <label for="email" class="email">이메일<input required id="email" type="email" autocomplete="off"></label>
                        <label for="phone" class="phone">연락처<input required id="phone" type="number" autocomplete="off"></label>
                    </form>
                </div>
                <div style="border-bottom: 1px solid #e1e2e3; height: 0px; width: 360px; margin-left: 20px; margin-bottom: 20px;"></div>
                <div>
                    <h4 style="text-align: left; margin-left: 20px; ">첨부파일</h4>
                    <div style="margin-bottom: 20px; margin-top: 20px; height: 100px;">
                        <input type="button" id="re1" class="re1" value="이력서1                                      X">
                        <input type="button" id="re2" class="re2" value="이력서2                                      X">
                    </div>
                    <div>
                        <input type="button" id="upload" value="파일업로드"
                        onclick="javascript:location.href='/user/CVpage'"></input>
                        <input type="button" id="write" value="새 이력서 작성"
                        onclick="javascript:location.href='/user/CV-write'"></input>
                    </div>
                </div>
                <footer class="foot">
                    <div style="width: 360px; border-top: 1px solid #e1e2e3; margin-top: 15px; padding-top: 15px; height: 100px;">
                        <input type="submit" class="app" id="app" value="제출하기" ></input>
                    </div>
                </footer>
            </div>
        </div>
    </div>  
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js'></script>
    <script type="text/javascript" src="/resources/companypost_jq.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtJPJok-ic-162wUIyxN5AcctNP3cNKOk&callback=initMap&region=kr"></script>
    <script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
    <script type="text/javascript" src="/resources/companypost.js"></script>
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
</html>