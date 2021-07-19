<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script type="text/javascript" src="/resources/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="/resources/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/loginUserMain.css">
    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>로그인 후 메인화면</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
        integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
</head>

<body>
<div class="full">
     <!-- 네비게이션바 START -->
        <header class="navbar">
            <div class="nav-con">
                <div style="width: 100%;display: inline;">
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

    <!-- 검색창 START -->
    <div class="menu, icon-close">
        <!-- Menu icon -->
        <div class="">
            <img src="https://imgur.com/download/GcHTJg2">
        </div>
        <!-- Main body -->
        <div class="jumbotron">

            <div class="icon-menu">
                <i class="fa fa-bars"></i>
            </div>
        </div>

        <form action="#" autocomplete="off" class="search_form">
            <fieldset class="url" style="border: white;">
                <input id="url" type="text" name="url" required>
                <label for="url"><i class="fa fa-search" aria-hidden="true"></i> Search</label>
                <div class="after"></div>
            </fieldset>
            <fieldset class="enter" style="border: white;">
                <button class="searchbtn"></button>
            </fieldset>
        </form>
    </div>
    <!-- 검색창 END -->

    <!-- 탐색 START -->
    <div class="bar">
        <div class="opennavi" style="width: 100%; height: 286px; text-align: right; min-width:1750px;">
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
    <!-- 탐색 END -->
    
        <div class="half">
            <div style="float: left; display: block;">
            
            
			    <!-- 직종, 세부직무, 지역, 세부지역, 작품개수 등 START -->
                <div class="bot">
                    <div class="sel">
                    	<table style="border-spacing: 5px 10px;">
                    		<tr>
	                    		<td><span style="font-weight: bold;">&nbsp;직&emsp;종&nbsp;</span></td>
	                    		<td>
	                    		<form action="">
	                    			<select id="job" class="job" onchange="doChange(this, 'detail_job')">
			                            <option value="allJob" >전체</option>
			                            <option value="production">연출</option>
			                            <option value="light">조명</option>
			                            <option value="acoustics">음향</option>
			                            <option value="photographing">촬영</option>
			                            <option value="effects">특수효과</option>
			                            <option value="making">제작</option>
			                            <option value="actor">배우</option>
			                            <option value="art">미술</option>
			                            <option value="makeUp">분장</option>
			                        </select>
			                    </form>
	                    		</td>
								<td><span style="font-weight: bold;">&emsp;&nbsp;지&emsp;역&nbsp;</span></td>
								<td>
								<form action="">
									<select id="country" class="country" onchange="doChange(this, 'detail_country')">
			                            <option value="allCountry" >전국</option>
			                            <option value="seoul">서울</option>
			                            <option value="busan">부산</option>
			                            <option value="daegu">대구</option>
			                            <option value="incheon">인천</option>
			                            <option value="gwangju">광주</option>
			                            <option value="daejeon">대전</option>
			                            <option value="ulsan">울산</option>
			                            <option value="sejong">세종</option>
			                            <option value="gyeong-gi">경기</option>
			                            <option value="gang-won">강원</option>
			                            <option value="chungbug">충북</option>
			                            <option value="chungnam">충남</option>
			                            <option value="jeonbug">전북</option>
			                            <option value="jeonnam">전남</option>
			                            <option value="gyeongbug">경북</option>
			                            <option value="gyeongnam">경남</option>
			                            <option value="jeju">제주</option>
			                        </select>
								</form>
								</td>
								<td><span style="font-weight: bold;">&emsp;작품개수&nbsp;</span></td>
								<td>
								<form action="">
									<select id="career" class="career">
			                            <option value="allCareer" >전체</option>
			                            <option value="new">신입</option>
			                            <option value="one">1개</option>
			                            <option value="two">2개</option>
			                            <option value="three">3개</option>
			                            <option value="four">4개</option>
			                            <option value="five">5개</option>
			                            <option value="six">6개</option>
			                            <option value="seven">7개</option>
			                            <option value="eight">8개</option>
			                            <option value="nine">9개</option>
			                            <option value="ten-more">10개 이상</option>
			                        </select>
			                    </form>
								</td>
							</tr>
							<tr>
								<td><span style="font-weight: bold;">세부직무&nbsp;</span></td>
	                    		<td>
	                    		<form action="">
	                    			<select id="detail_job" class="detail_job">
	                    				<option >전체</option>
	                    			</select>
	                    		</form>
	                    		</td>
								<td><span style="font-weight: bold;">&emsp;세부지역&nbsp;</span></td>
	                    		<td>
	                    		<form action="">
	                    			<select id="detail_country" class="detail_country">
	                    				<option >전지역</option>
	                    			</select>
	                    		</form>
	                    		</td>
	                    		<td colspan="2"> 
                                    <span>&emsp;&emsp;&nbsp;<button type="button" id="select_reset_btn" class="select_reset_btn">초 기 화</button></span>
                                </td>
							</tr>
                        </table>
                    </div>
                </div>
			    <!-- 직종, 세부직무, 지역, 세부지역, 작품개수 등 START -->
                <!-- 구인글 select START -->
                <div class="company-job-list">
                    <ul>
                        <li class="company-job" style="text-align: center;">
                       	<c:forEach items="${comList}" var="comList" >
                            <div class="company-margin" data-pid=${comList.companyJobPostingId }>
                                <ul>
                                    <li class="scrollH">
                                    	<!-- 링크 -->
                                        <a class="company-href" href="/user/companypost?companyJobPostingId=${comList.companyJobPostingId }">
                                            <!-- 이미지 -->
                                            <div class="company-img" style="background-image: url(/resources/images/movie.jpg)"></div>
                                            <figcaption>
                                                <div id="job-card" style="font-size: 16px;">
                                                    <div class="job-card-position">${comList.companyJobPostingTitle}
                                                    </div><br>
                                                    <div class="job-card-company-name">${comList.companyName }
                                                    </div><br>
                                                    <div class="job-card-company-location">${comList.companyCountry } 
                                                    </div><br>
                                                    <div class="job-card-end-date">${comList.companyJobPostingPeriodEnd }
                                                    </div>
                                                </div>
                                            </figcaption>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                      		</c:forEach>
                        </li>
                    </ul>
                </div>
                <!-- 구인글 select END -->
            </div>
        </div>
    </div>
    <script type="text/javascript" src="/resources/loginUserMain.js"> </script>
    <script type="text/javascript" src="/resources/navi.js"></script>
    <script>
    var lastScrollTop = 0;
    var easeEffect = 'easeInQuint';

    // 다은 스크롤
    $(window).scroll(function(){
        var ScrollTop = $(window).scrollTop();
        if(ScrollTop - lastScrollTop > 0){
            //down-scroll : 현재 게시글 다음의 글 불러오기
            console.log("down-scroll");
            // 현재 스크롤의 top 좌표가 > (게시글을 불러온 화면 height - 윈도우 창의 height)되는 순간
            if($(window).scrollTop()>=($(document).height() - $(window).height())){
                
                // class가 company-margin인 것의 요소 중 마지막 요소 선택 후 그것의 data 속성 값 받아오기
                //  현재 뿌려진 게시글의 마지막 companyJobPostingId 값 읽어 오기 (다음 게시글 가져오기 위해 필요함)

                var lastpid = $(".company-margin:last").attr("data-pid");

                $.ajax({
                    type:'post', //요청 method 방식
                    url:'/user/ScrollDown', //요청 url
                    headers:{
                        "Content-Type":"application/json",
                        "X-HTTP-Method-Override":"POST"
                    },
                    dataType:'json',//서버로 부터 되돌려 받는 데이터 타입
                    data:JSON.stringify({ // 서버로 보낼 데이터
                    	companyJobPostingId:lastpid
                    }),
                    success:function(data){
                        var str ="";

                        if(data !=""){
                            $(data).each(
                                function(){
                                    console.log(this);
                                    str += "<div class='company-margin' data-pid='"+this.companyJobPostingId+"'>"
                                    +       	"<ul>"
                                    +           	"<li class='scrollH'>"
                                    +              		" <a class='company-href' href='/user/companypost?companyJobPostingId="+this.companyJobPostingId+"'>"
                                    +                   	"<div class='company-img' style='background-image:url(/resources/images/movie.jpg)'></div>"
			                        +                   		"<figcaption>"
			                        +                     			"<div id='job-card' style= 'font-size: 16px'>"
			                        +                        			"<div class='job-card-position'>"+this.companyJobPostingTitle
			                        +                           		"</div>"+"<br>"
			                        +                           		"<div class='job-card-company-name'>"+this.companyName
			                        +                           		"</div>"+"<br>"
			                        +                           		"<div class='job-card-company-location'>"+this.companyCountry
			                        +                           		"</div>"+"<br>"
			                        +                           		"<div class='job-card-end-date'>"+this.writeDate
			                        +                           		"</div>"
			                        +                       		"</div>"
			                        +                   		"</figcaption>"
                                    +        			"</a>"
                                    +     			"</li>"
                                    +   		"</ul>"          
                                    +	"</div>";
                                }
                            ); //each
                            //$(".company-margin").empty();
                            $(".company-job").append(str);
                        }// if
                        else{
                        	 alert("더 불러올 데이터가 없습니다.")
                        }
                    }//success

                });//ajax
                
                // class가 company-margin 인 요소중 가장 처음 위치로 이동
               	var position = $(".company-margin:last").offset(); //위치 값
               	//console.log(position,"위치값임");
                
                // 이동 위로 부터 position.top px 위치로 스크롤 . 
                $('html,body').stop().animate({scrollTop:position.top},600);
                
            }
				//lastScrollTop = ScrollTop;
        }//다운스크롤 
    })
</script>
</body>
</html>