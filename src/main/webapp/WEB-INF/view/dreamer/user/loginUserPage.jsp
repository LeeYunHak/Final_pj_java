<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/loginmain.css">
    <title>로그인 후 메인화면 </title>
</head>
<body>
    <div class="full">
        <header>
            <h2><span><a href="/user/mainAfter" class="dreamer">Dreamer</a></h2>
            <div class="navi">
                <span><button id="selectnavi" type="button">탐색</button></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="resume" type="button">이력서</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="matchup" type="button">매치업</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="mp">
                    <img id="search1" src="/resources/images/search.png" style="width: 30px; height: 30px;">
                    <img id="mypage1" src="/resources/images/avatar.png" style="width: 30px; height: 30px;">
                    <span style="font-size:16px; color: black">${loginUser.userName }</span>
                </div>
            </div>    
        </header>
        
        <div class="half">
            <div class="bar">
                <div class="prod">
                    <span class="prod1">연출</span>
                </div>
                <div class="light">
                    <span class="light1">조명</span>
                </div>
                <div class="acous">
                    <span class="acous1">음향</span>
                </div>
                <div class="shoot">
                    <span class="shoot1">촬영</span>
                </div>
                <div class="se">
                    <span class="se1">특수효과</span>
                </div>
                <div class="manuf">
                    <span class="manuf1">제작</span>
                </div>
                <div class="actor">
                    <span class="actor1">배우</span>
                </div>
                <div class="art">
                    <span class="art1">미술</span>
                </div>
                <div class="makeup">
                    <span class="makeup1">분장</span>
                </div> 
                <div class="opennavi" style="width: 98vh; height:55vh;">
                    <div style="margin-right: 50px;padding-left: 20px; padding-top: 30px;">
                        <input type="button" id="prod" value="연출" style="margin-bottom: 10px;">
                        <li>감독</li>
                        <li>조감독</li>
                        <li>각본</li>
                        <li>프로듀서</li>
                        <li>연출팀</li>
                    </div>
                    <div style="margin-right: 50px; margin-bottom: 100px; padding-top: 30px;">
                        <input type="button" id="light" value="조명" style="margin-bottom: 10px;">
                        <li>조명팀</li>
                        <li>발전차</li>
                    </div>    
                    <div style="margin-right: 50px; margin-bottom: 100px; padding-top: 30px;">
                        <input type="button" id="acous" value="음향" style="margin-bottom: 10px;">
                        <li>음향팀</li>
                        <li>동시녹음팀</li>
                    </div>
                    <div style="margin-right: 50px; margin-bottom: 100px; padding-top: 30px;">   
                        <input type="button" id="shoot" value="촬영" style="margin-bottom: 10px;">
                        <li>촬영팀</li>
                        <li>그립팀</li>
                    </div> 
                    <div style="margin-right: 50px; margin-bottom: 100px; padding-top: 30px;">   
                        <input type="button" id="se" value="특수효과" style="margin-bottom: 10px;">
                        <li>특수효과팀</li>
                    </div> 
                    <div style="margin-right: 20px; margin-bottom: 100px; padding-top: 30px;">  
                        <input type="button" id="manuf" value="제작" style="margin-bottom: 10px;">
                        <li>제작팀</li>
                        <li>캐스팅담당팀</li>
                    </div> 
                    <div style="margin-right: 50px; padding-left: 20px; padding-top: 30px;">   
                        <input type="button" id="actor" value="배우" style="margin-bottom: 10px;">
                        <li>주연</li>
                        <li>조연</li>
                        <li>스턴트</li>
                        <li>단역</li>
                    </div> 
                    <div style="margin-right: 50px; padding-top: 30px;"> 
                        <input type="button" id="art" value="미술" style="margin-bottom: 10px;">
                        <li>미술팀</li>
                        <li>미술감독</li>
                        <li>소품팀</li>
                    </div>   
                    <div style="margin-right: 20px; padding-top: 30px;">   
                        <input type="button" id="makeup" value="분장" style="margin-bottom: 10px;">
                        <li>헤어팀</li>
                        <li>의상팀</li>
                        <li>분장팀</li>
                    </div>   
                </div>

                <!-- <div class="opensearch" style="width: 100vh; height:30vh;">
                    <form><input type="search" /><button type="submit">
                        <i class="opensearch"></i></button></form>
                </div> -->
            </div>
            <div>
                <div class="bot">
                    <div class="sel">
                        <button id="job" type="button" onclick="location.href='https://www.naver.com'">
                            <span>직종</span>
                            <span style="color: rgb(0, 206, 201); font-weight: bold;">딱맞는 기업찾기</span>
                        </button>
                        <button id="country" type="button" onclick="location.href='https://www.naver.com'">
                            <span>지역</span>
                            <span style="color: rgb(0, 206, 201); font-weight: bold;">전국</span>
                        </button>
                        <button id="work" type="button" onclick="location.href='https://www.naver.com'">
                            <span>작품개수</span>
                            <span style="color: rgb(0, 206, 201); font-weight: bold;">전체</span>
                        </button>
                    </div>

                    <select>
                        <option>최신순</option>
                        <option>인기순</option>
                    </select>
                    <!-- <ul data-cy="joblist" class="jl">
                        <li>
                            <div data-cy="jobcard" class="jc1">
                                <a href="#" class data-attribute-id="position__click" data-job-category-id="518"
                                data-job-category="IT" data-company-id="1981" data-company-name="원패밀리"
                                data-position-id="56605" data-position-name="Flutter 개발자" data-response-level="normal"
                                data-response-rate="89.4" data-ai-score="" data-ai-score-status="">
                                <header style="background-image: url(images/kakao_logo.png);"><button type="button" class="likeButton"
                                data-attribute-id="position__like__click" data-job-category-id="518"
                                data-job-category="IT" data-company-id="1981" data-company-name="원패밀리"
                                data-position-id="56605" data-position-name="Flutter 개발자" data-kind="add">
                                <i class="icon-ic_favorite_black_24px"></i>4</button></header>
                                <div class="body">
                                    <div class="job-card-position">Flutter 개발자</div>
                                    <div class="job-card-company-name">원패밀리</div>
                                    <div class="job-card-company-location">서울<span class="addressDot">.</span>
                                        <span>한국</span></div>
                                        <div class="reward">채용보상금 1,000,000원</div>
                                    </div></a>
                                </div>
                        </li> -->
                        <!-- <li class="l1" style="list-style: none;">
                            <div class="d1">
                            <img class="c1" src="images/kakao_logo.png">&nbsp;&nbsp;&nbsp;&nbsp;
                            <img class="c2" src="images/kakao_logo.png">&nbsp;&nbsp;&nbsp;&nbsp;
                            <img class="c3" src="images/kakao_logo.png">
                            </div>
                            <p>구인글제목&nbsp;&nbsp;&nbsp;&nbsp;구인글제목&nbsp;&nbsp;&nbsp;&nbsp;구인글제목</p>
                            <p>기업명</p><p>기업명</p><p>기업명</p>
                            <p>위치</p><p>위치</p><p>위치</p>
                            <p>마감일</p><p>마감일</p><p>마감일</p>
                        </li>
                        <li class="l2" style="list-style: none;">
                            <img class="c1" src="images/kakao_logo.png">
                            <p>구인글제목</p>
                            <p>기업명</p>
                            <p>위치</p>
                            <p>마감일</p>
                        </li> -->
                            <!-- <div class="title1">
                                구인글제목
                            </div>
                            <div class="cn1">
                                기업명
                            </div>
                            <div class="lo1">
                                위치
                            </div>
                            <div class="due1">
                                마감일
                            </div>
                        </li>
                        <li class="l2">
                            <img class="c1" src="images/kakao_logo.png">
                            <div class="title1">
                                구인글제목
                            </div>
                            <div class="cn1">
                                기업명
                            </div>
                            <div class="lo1">
                                위치
                            </div>
                            <div class="due1">
                                마감일
                            </div>
                        </li>
                        <li class="l3">
                            <img class="c1" src="images/kakao_logo.png">
                            <div class="title1">
                                구인글제목
                            </div>
                            <div class="cn1">
                                기업명
                            </div>
                            <div class="lo1">
                                위치
                            </div>
                            <div class="due1">
                                마감일
                            </div>
                        </li>
                        <li class="l4">
                            <img class="c1" src="images/kakao_logo.png">
                            <div class="title1">
                                구인글제목
                            </div>
                            <div class="cn1">
                                기업명
                            </div>
                            <div class="lo1">
                                위치
                            </div>
                            <div class="due1">
                                마감일
                            </div>
                        </li>
                        <li class="l5">
                            <img class="c1" src="images/kakao_logo.png">
                            <div class="title1">
                                구인글제목
                            </div>
                            <div class="cn1">
                                기업명
                            </div>
                            <div class="lo1">
                                위치
                            </div>
                            <div class="due1">
                                마감일
                            </div>
                        </li>
                        <li class="l6">
                            <img class="c1" src="images/kakao_logo.png">
                            <div class="title1">
                                구인글제목
                            </div>
                            <div class="cn1">
                                기업명
                            </div>
                            <div class="lo1">
                                위치
                            </div>
                            <div class="due1">
                                마감일
                            </div>
                        </li> -->
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="/resources/loginmain.js"> </script>
</html>