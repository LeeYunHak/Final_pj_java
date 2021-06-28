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
    <!-- Remember to include jQuery :) -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

	<!-- jQuery Modal -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
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
                        <button id="job" type="button" >
                            <span>직종</span>
                            <span style="color: rgb(0, 206, 201); font-weight: bold;">전체</span>
                        </button>
                        <div class="modal_job">
                        	<div class="modal_job_header">
                        		<span class="modal_job_header_title">직종</span>
                        		<button type="button">
                        			<svg width="24" height="24" viewBox="0 0 24 24" color="#999">
                        			<path fill="currentColor" d="M17.97 19.03a.75.75 0 001.06-1.06l-6.5-6.5a.75.75 0 00-1.06 0l-6.5 6.5a.75.75 0 001.06 1.06L12 13.06l5.97 5.97zM12 10.94L6.03 4.97a.75.75 0 00-1.06 1.06l6.5 6.5a.75.75 0 001.06 0l6.5-6.5a.75.75 0 00-1.06-1.06L12 10.94z"></path></svg>
                        		</button>
                        	</div>
                        	<div class="modal_job_body">
                        		<div class="modal_job_body_job_group">
                        			<h5>직종</h5>
                        			<ul class="job_group_list">
                        				<li>
                        					<button type="button" class="job_group_btn1">연출</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn2">조명</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn3">음향</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn4">촬영</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn5">특수효과</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn6">제작</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn7">배우</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn8">미술</button>
                        				</li>
                        				<li>
                        					<button type="button" class="job_group_btn9">연출</button>
                        				</li>
                        			</ul>
                        		</div>
                        		<div class="modal_job_body_detail_job">
                        			<h5>세부직무</h5>
                        			<ul class="detail_job_list">
                        				<li>
                        					<button type="button" class="detail_job_btn1-1">감독</button>
                        				</li>                           
                        				<li>                            
                        					<button type="button" class="detail_job_btn1-2">조감독</button>
                        				</li>                            
                        				<li>                             
                        					<button type="button" class="detail_job_btn1-3">각본</button>
                        				</li>                            
                        				<li>                             
                        					<button type="button" class="detail_job_btn1-4">프로듀서</button>
                        				</li>                            
                        				<li>                             
                        					<button type="button" class="detail_job_btn1-5">연출팀</button>
                        				</li>                            
                        				<li>                             
                        					<button type="button" class="detail_job_btn2-1">조명팀</button>
                        				</li>                            
                        				<li>                             
                        					<button type="button" class="detail_job_btn2-2">발전차</button>
                        				</li>                            
                        				<li>                             
                        					<button type="button" class="detail_job_btn3-1">음향팀</button>
                        				</li>                            
                        				<li>                             
                        					<button type="button" class="detail_job_btn3-2">동시녹음팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn4-1">촬영팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn4-2">그립팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn5-1">특수효과팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn6-1">제작팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn6-2">캐스팀담당팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn7-1">주연</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn7-2">조연</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn7-3">스턴트</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn7-4">단역</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn8-1">미술팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn8-2">미술감독</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn8-3">소품팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn9-1">헤어팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn9-2">의상팀</button>
                        				</li>
                        				<li>                             
                        					<button type="button" class="detail_job_btn9-3">분장팀</button>
                        				</li>
                        			</ul>
                        		</div>
                        	</div>
                        	<div class="modal_job_bottom">
                        		<div class="modal_job_bottom_list_box">
                        			<ul class="modal_job_bottom_list">
                        				<li></li>
                        			</ul>
                        		</div>
                        		<button class="modal_job_confirm" type="submit">확 인</button>
                        	</div>
                        </div>
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
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript" src="/resources/loginmain.js"> </script>
<script type="text/javascript">
	$('#job').click(function (event) {
		event.preventDefault();
		this.blur();
		$.get(this.href, function (html) {
			$(html).appendTo('body').modal_job();
		});
	});
</script>
</body>
</html>