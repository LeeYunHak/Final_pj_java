<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>회원가입</title>
    <link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');

        *{
            font-family: 'Nanum Gothic', sans-serif;
            box-sizing: border-box;
        }
        
         .join1 {
            margin: auto;
            text-align: center;
            color: rgb(170, 170, 170);
            border-top-left-radius:5px;
            border-top-right-radius: 5px;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
        }

        tr {
            margin: auto;
            text-align: left; 
        }

        form {
            display: inline-block;
        }

        .join2 {
            padding-top: 10%;
        }

        table {
            width: 500px;
            border-collapse: collapse; 
            margin-top: -170px;
        }

        body {
            text-align: center;
            margin: auto;
            width: 100%;
            height: 100%;
            width: fit-content;    
        }
        td{
            color: black;
            padding: 10px;
            padding-left: 98px;
        }
        
        .terms__check__all{
            position: relative; right: auto;
            top: 530px;
        }
        ul{
            list-style:none;
            padding-left:0px
        }

        input:focus {
            outline: none;
        }
        
        html{
            min-width: 1000px;
            height: 100%;
        }
        /* 중복아이디 존재하지 않는경우 */
		.id_input_re_1{
			color : green;
			display : none;
		}
		/* 중복아이디 존재하는 경우 */
		.id_input_re_2{
			color : red;
			display : none;
		}
		
		/* 네비게이션바 CSS START */

        .logo {
            width: 180px;
            height: 50px;
            padding-top: 10px;
            margin-top: 25px;
            }
        
        #nav3-1-logo {
        display: block;
        cursor: pointer;
        margin-left: 20px;
        padding: 0px;
        }
        
        .navbar{
            flex: 0 0 auto;
            height: 60px;
            width: 1600px;
            /* max-width: 1600px; */
            background-color: white;
            /* border-bottom: 1px solid #c8c8c8; */
            z-index: 100;
            position: absolute;
        }
        
        .nav-con{
            position: relative;
            width: 1600px;
            /* max-width: 1600px; */
            margin: 0px auto;
            padding: 0px 20px;
        }
        
        .nv{
            float: left;
            position: relative;
            margin: 0px;
            width: 100%;
        }
        
        .nv-st{
            float: left;
            padding: 0px;
            margin: 0px;
            list-style: none;
            white-space: nowrap;
            width: 100%;
            list-style:none;
            margin:0;
            padding:0;
            top: 0;
        }
        
        .nv-st>li {
            margin: 0 0 0 0;
            padding: 0 0 0 0;
            border : 0;
            float: left;
        list-style-type: none;
        }
        
        .nv-st::after{
            clear: both;
            content: "";
            display: block;
        }

        #nav3-1-blank{

            /* 링크 밑줄 제거 */
            text-decoration: none;
            font-size: 18px;
            color: white;
            padding-left: 40px;
            padding-right: 40px;
            display: inline-block;
            padding:20px;
        }
        /*네비끝*/
    </style>
</head>

<body>
     <div style="width: 100%; height: 70px; ">
    <!-- 네비게이션바 START -->
        <ul class="nv-st">
            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>         
            <li><a id="nav3-1-logo" href="/user/mainBefore"><img src="/resources/images/Dreamer.png" class="logo"></a>
            </li>
        </ul>
    </div>    
    <h6>&nbsp</h6>
    <div style="border: 1px solid rgb(170, 170, 170); height: 850px;" class="join1">
        <form name="join" action="/user/joinUser" method="post">

            <div style="font-weight: bolder;" class="join2"> 회원가입</div>

            <table>
                <tr>
                    <td>이름</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="text" required
                    style="border: 1px solid rgb(170, 170, 170); width: 304px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userName" maxlength="12" placeholder="이름을 입력해주세요"><span id="errname"></span></td>
                </tr>

                <tr>
                    <td>휴대폰 번호</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="text" required
                    style="border: 1px solid rgb(170, 170, 170); width: 304px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userPhone" id="cel" placeholder="휴대폰 번호를 입력해주세요" /></td>
                </tr>

                <tr>
                    <td>이메일</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="text" required class="email_input"
                    style="border: 1px solid rgb(170, 170, 170); width: 304px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userEmail" placeholder="이메일을 입력해주세요">
                    <span class="id_input_re_1">사용 가능한 아이디입니다.</span>
                	<span class="id_input_re_2">아이디가 이미 존재합니다.</span></td>
                </tr>
                
				

                <tr>
                    <td>비밀번호</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="password" required
                    style="border: 1px solid rgb(170, 170, 170); width: 304px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userPassword" placeholder="비밀번호를 입력해주세요"/><span id="errpw"></span></td>
                </tr>

                <tr>
                    <td>비밀번호 확인</td>
                </tr>
                <tr>
                    <td colspan="4"><input type="password" required
                    style="border: 1px solid rgb(170, 170, 170); width: 304px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    placeholder="비밀번호를 한번 더 입력해주세요"/><span id="errcheckpw"></span></td>
                </tr>
                <div class="terms__check__all">
                    <div>
                        <input type="checkbox" name="checkAll" id="checkAll" >
                        <label for="checkAll">전체 동의</label>
                    </div>
                    <ul class="terms__list">
                        <li class="terms__box">
                            <div class="input__check">
                                <input type="checkbox" name="agreement"
                                value="termsOfService" id="termsOfService" required />
                                <label for="termsOfService" class="required">Dreamer 이용약관 동의(필수)</label>
                            </div>
                        </li>
                        <li class="terms__box2" style="margin-right:3.5px;">
                            <div class="input__check">
                                <input type="checkbox" name="agreement"
                                value="privacyPolicy" id="privacyPolicy" required />
                                <label for="privacyPolicy" class="required">개인정보 처리방침 동의(필수)</label>
                            </div>
                        </li>
                        <li class="terms__box">
                            <div class="input__check">
                                <input type="checkbox" name="agreement"
                                value="allowPromotions" id="allowPromotions"  />
                                <label for="allowPromotions">프로모션 정보 수신 동의(선택)</label>
                            </div>
                        </li>
                    </ul>
                    <button type="submit"
                    value="회원가입하기" class="next-button" id=""
                    style="border: 1px solid rgb(0, 206, 201);cursor: pointer;
                    color: rgb(0, 206, 201);font-size: 25px; background-color: white;
                    border-top-left-radius:5px; border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;
                    padding: 10px; margin-top: 50px;">회원가입하기</button>
                </div>
            </table>
       </form>
    </div>
    <div style="height:50px; width:100%"></div>
    
    <script>
	  //아이디 중복검사
	    $('.email_input').on("propertychange change keyup paste input", function(){
			
		    var userEmail = $('.email_input').val();			// .id_input에 입력되는 값
			var data = {userEmail : userEmail}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
			$.ajax({
				type : "post",
				url : "/user/emailChk",
				data : data,
				success : function(result){
					 //console.log("성공 여부" + result);
					if(result != 'fail'){
						$('.id_input_re_1').css("display","inline-block");
						$('.id_input_re_2').css("display", "none");				
					} else {
						$('.id_input_re_2').css("display","inline-block");
						$('.id_input_re_1').css("display", "none");				
					}
				}// success 종료
			}); // ajax 종료
	
	    });// function 종료
    
        
	    const checkAll = document.querySelector(".terms__check__all input");//모두 동의 체크박스
        const checkBoxes = document.querySelectorAll(".input__check input");//모두 동의를 제외한 3개의 체크박스
        const submitButton = document.querySelector("button"); //확인 버튼

        const agreements = {
            termsOfService: false, //첫번째 필수동의 체크박스
            privacyPolicy: false, //두번째 필수동의 체크박스
            allowPromotions: false //이벤트 수신 동의 체크박스
        };
        
        //모두동의 체크박스를 체크 또는 해제하면 모든 체크박스도 같이
        checkAll.addEventListener('click', (e) => {
        const { checked } = e.target; //모두동의 체크박스 요소가 체크될때
        if (checked) {
            checkBoxes.forEach((item) => {
            item.checked = true;
            agreements[item.id] = true;
            item.parentNode.classList.add('active');
            });
        } else {
            checkBoxes.forEach((item) => {
            item.checked = false;
            agreements[item.id] = false;
            item.parentNode.classList.remove('active');
            });
        }
        // toggleSubmitButton();
        }); 

        // form.addEventListener("submit", (e) => e.preventDefault());

        checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));

        function toggleCheckbox(e) {
            const { checked, id } = e.target;
        agreements[id] = checked;
        this.parentNode.classList.toggle('active');
        checkAllStatus(); //3개의 체크박스의 상태를 확인해서 모두동의에 체크
        // toggleSubmitButton();
    }
    
    function checkAllStatus() {
        const { termsOfService, privacyPolicy, allowPromotions } = agreements;
        if (termsOfService && privacyPolicy && allowPromotions) {
            checkAll.checked = true;
        } else {
            checkAll.checked = false;
        }
    }
  	
    // 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#userEmail").blur(function() {
		// id = "id_reg" / name = "userId"
		var userEmail = $('#userEmail').val();
		$.ajax({
			url : '/user/joinUser?userEmail='+ userEmail,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 이메일입니다.");
						$("#id_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
					} else {
						
						if(userEmail == ""){
							$('#id_check').text('아이디를 입력해주세요 :)');
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);				
						} 
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
    </script>
</body>
</html>