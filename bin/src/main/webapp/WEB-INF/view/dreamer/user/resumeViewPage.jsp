<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
    <script type="text/javascript" src="/resources/navi.js"></script>
</body>
<!-- <script src="/resources/CVpageJs.js"></script> -->
<script type="text/javascript">

	var addBtn = document.getElementById("addBtn");
	//addBtn.addEventListener('click',function(){
	function list(){
		var data = {selectResume:selectResume}
		
	
		$.ajax({
			type : "get",
			url : "/resume/list",
			data : data,
			success : function(){
				var pr = document.getElementsByClassName('resume-list-content')[0];
			    
			    var div = document.createElement('div');
			    div.className = 'resume-item';
			
			    var div2 = document.createElement('div');
			    div2.className = 'resume-box';
			    div.append(div2);
			
			    var div3 = document.createElement('div');
			    div3.className = 'resume-preview';
			    div2.append(div3);
			
			    var h3 = document.createElement('h3');
			    h3.className = 'writing';
			    h3.innerText = '${selectResume.title}'; //여기에 이력서 제목 이엘로 넣기
			    div3.append(h3);
			
			    var p = document.createElement('p');
			    p.className = 'date';
			    p.innerText = '${selectResume.writeDate}'; //여기에 작성일 이엘로 
			    div3.append(p);
			
			    var div4 = document.createElement('div');
			    div4.className = 'resume-info';
			    div2.append(div4);
			
			    var div5 = document.createElement('div');
			    div5.className = 'resume-status';
			    div4.append(div5);
			
			    var span = document.createElement('span');
			    span.className = 'writing-span';
			    span.innerText = '작성중';
			    div5.append(span);
			
			    var div6 = document.createElement('div');
			    div6.className = 'dropdown-btn-group';
			    div6.id = 'dropdown-btn-group'
			    div4.append(div6);
			    
			    var btn = document.createElement('button');
			    btn.id = 'dropdown-btn';
			    btn.className = 'dropdown-btn';
			    div6.append(btn);
			
			    var i = document.createElement('i');
			    i.className = 'dr-icon';
			    btn.append(i);
			
			    var ul = document.createElement('ul');
			    ul.className = 'dropdown-menu';
			    ul.id= 'dropdown-menu';
			
			    var li1 = document.createElement('li');
			    var a1 = document.createElement('a');
			    a1.className = 'gr-a';
			    a1.innerText = '이름 변경';
			    a1.href = '#'; //이엘로 요청주소?
			    li1.append(a1);
			    ul.append(li1);
			
			    var li2 = document.createElement('li');
			    var a2 = document.createElement('a');
			    a2.className = 'gr-a';
			    a2.innerText = '다운로드';
			    a2.href = '#'; // 요청주소?
			
			    li2.append(a2);
			    ul.append(li2)
			
			    var li3 = document.createElement('li');
			    var a3 = document.createElement('a');
			    a3.className = 'gr-a';
			    a3.innerText = '삭제';
			    a3.href = '#'; //요청주소 ?
			
			    li3.append(a3);
			    ul.append(li3)
			
			    div6.append(ul);
			
			    pr.append(div);
			    
			    drbtn = document.getElementById('dropdown-btn');
			    dr = document.getElementsByClassName('.dropdown-btn-group')
			
			    // drbtn.addEventListener('click', function(){
			    //     dr.style.display = 'block'
			    // });
			    document.getElementById('dropdown-btn').addEventListener('click', function(){
			        cli('dropdown-menu')
		    })
		    drbtn.addEventListener('click',function(){
		        if(ul.style.display='block'){
		            ul.style.display='none';
		        }
		    })
		    // location.href='/user/resumeWritePage'	
				
			}// success 종료
		}); // ajax 종료

	}	    
//});

function cli(id){
    var btn3 = document.getElementById(id);

    btn3.setStyle({
        zindex: 1,
        display: 'block'
    });
};

Element.prototype.setStyle = function(styles) {
    for (var k in styles) this.style[k] = styles[k];
    return this;
};


addBtn = document.getElementById('addBtn');
addBtn.addEventListener('click',function(){
    location.href='/user/resumeWriteView'
},100000)

list();
</script>
</html>