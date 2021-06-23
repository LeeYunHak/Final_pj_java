<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
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
            margin-top: 5%;
            margin-bottom: 10%;
            width: fit-content;    
        }
        td{
            color: black;
            padding: 10px;
            padding-left: 98px;
        }
        
        .terms__check__all{
            position: relative; right: auto;
            top: 600px;
        }
        ul{
            list-style:none;
            padding-left:0px
        }

        input:focus {
            outline: none;
            box-shadow: 0 0 0 2px rgb(0, 206, 201);
        }
    </style>
</head>

<body>
    <div>
        <button type="button" style="color: rgb(0, 206, 201); background-color: white;
        font-size: 35px; font-weight: bold ; cursor: pointer; border: none; padding-bottom: 20px;"
        onclick="location.href='/user/mainBefore'"
        >Dreamer</button>
    </div>
    <div style="border: 1px solid rgb(170, 170, 170); height: 900px;" class="join1">
        <form name="join">

            <div style="font-weight: bolder;" class="join2"> 회원가입</div>

            <table>
                <tr>
                    <td>이름</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="text" required
                    style="border: 1px solid rgb(170, 170, 170); width: 300px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userName" maxlength="12" placeholder="이름을 입력해주세요"><span id="errname"></span></td>
                </tr>

                <tr>
                    <td>휴대폰 번호</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="tel" required
                    style="border: 1px solid rgb(170, 170, 170); width: 300px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userPhone" id="cel" placeholder="휴대폰 번호를 입력해주세요" /></td>
                </tr>

                <tr>
                    <td>이메일</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="email" required
                    style="border: 1px solid rgb(170, 170, 170); width: 300px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userEmail" placeholder="이메일을 입력해주세요"><span id="erremail"></span></td>
                </tr>

                <tr>
                    <td>비밀번호</td>
                </tr>

                <tr>
                    <td colspan="4"><input type="password" required
                    style="border: 1px solid rgb(170, 170, 170); width: 300px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="userPassword" placeholder="비밀번호를 입력해주세요"/><span id="errpw"></span></td>
                </tr>

                <tr>
                    <td>비밀번호 확인</td>
                </tr>
                <tr>
                    <td colspan="4"><input type="password" required
                    style="border: 1px solid rgb(170, 170, 170); width: 300px; height: 30px;
                    border-top-left-radius:5px;border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;"
                    name="checkpw" placeholder="비밀번호를 한번 더 입력해주세요"/><span id="errcheckpw"></span></td>
                </tr>
                <div class="terms__check__all" >
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
                        <li class="terms__box">
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
                    <button type="submit" onClick="location.href='/joinUser' "
                    value="회원가입하기" class="next-button"
                    style="border: 1px solid rgb(0, 206, 201);cursor: pointer;
                    color: rgb(0, 206, 201);font-size: 25px; background-color: white;
                    border-top-left-radius:5px; border-top-right-radius: 5px;
                    border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;
                    padding: 10px; margin-top: 50px;">회원가입하기</button>
                </div>
            </table>

        </form>
    </div>
    <script>
        // var errname = document.getElementById("errname");
        // var errnum = document.getElementById("errnum");
        // var erremail = document.getElementById("erremail");
        // var errpw = document.getElementById("errpw");
        // var errcheckpw = document.getElementById("errcheckpw");

        // join.onsubmit = function () {
        //     var name = join.name;
        //     var td1 = document.getElementsByTagName("td")[2];
        //     var nameValue = name.value.trim();
        //     var nameCheck = /^[가-힣]{2}/g;
        //     errname.style.color = "red";

        //     if (nameValue == "") {
        //         errname.innerHTML = "이름을 입력하세요<br>";
        //         td4.insertBefore(errname, name.nextElementSibling);
        //         name.focus();
        //         return false;
        //     } else if (!nameCheck.test(nameValue)) {
        //         errname.innerHTML = "한글로 2자 이상 입력해주세요<br>";
        //         td4.insertBefore(errname, name.nextElementSibling);
        //         name.focus();
        //         return false;
        //     }
        //     else {
        //         errname.style.display = "none";
        //     }

        //     var email = join.email;
        //     var td2 = document.getElementsByTagName("td")[6];
        //     var emailValue = email.value.trim();
        //     var emailPattern = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/
        //     erremail.style.color = "red";

        //     if (emailValue == "") {
        //         erremail.innerHTML = "이메일을 입력하세요<br>";
        //         td5.insertBefore(erremail, email.nextElementSibling);
        //         email.focus();
        //         return false;

        //     } else if (!emailPattern.test(emailValue)) {
        //         erremail.innerHTML = "이메일 형식이 유효하지않습니다.<br>";
        //         td5.insertBefore(erremail, email.nextElementSibling);
        //         email.focus();
        //         return false;
        //     } else {
        //         erremail.style.display = "none";
        //     }

        //     var pw = join.pw;
        //     var td3 = document.getElementsByTagName("td")[8];
        //     var pwValue = pw.value.trim();
        //     var pwValue2 = pw.value;
        //     var pwPattern = /^[a-zA-Z0-9]{8}/g;
        //     var space2 = /\s/;
        //     errpw.style.color = "red";

        //     if (pwValue == "") {
        //         errpw.innerHTML = "비밀번호를 입력하세요<br>";
        //         td2.insertBefore(errpw, pw.nextElementSibling);
        //         pw.focus();
        //         return false;

        //     } else if (!pwPattern.test(pwValue)) {
        //         errpw.innerHTML = "비밀번호는 8글자 이상이어야 합니다<br>";
        //         td2.insertBefore(errpw, pw.nextElementSibling);
        //         pw.focus();
        //         return false;
        //     } else if (pwValue2.match(space2)) {
        //         errpw.innerHTML = "공백이 존재합니다";
        //         td2.insertBefore(errpw, pw.nextElementSibling);
        //         pw.focus();
        //         return false;
        //     }
        //     else {
        //         errpw.style.display = "none";
        //     }

        //     var checkpw = join.checkpw;
        //     var td4 = document.getElementsByTagName("td")[10];
        //     var checkpwValue = checkpw.value.trim();
        //     errcheckpw.style.color = "red";

        //     if (checkpwValue == "") {
        //         errcheckpw.innerHTML = "비밀번호 재입력이 필요합니다<br>";
        //         td3.insertBefore(errcheckpw, checkpw.nextElementSibling);
        //         checkpw.focus();
        //         return false;

        //     } else if (pwValue != checkpwValue) {
        //         errcheckpw.innerHTML = "비밀번호가 일치하지않습니다<br>";
        //         td3.insertBefore(errcheckpw, checkpw.nextElementSibling);
        //         checkpw.focus();
        //         return false;
        //     } else {
        //         errcheckpw.style.display = "none";
        //     }
        // }

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
        toggleSubmitButton();
        }); 

        form.addEventListener("submit", (e) => e.preventDefault());

        checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));

        function toggleCheckbox(e) {
            const { checked, id } = e.target;
        agreements[id] = checked;
        this.parentNode.classList.toggle('active');
        checkAllStatus(); //3개의 체크박스의 상태를 확인해서 모두동의에 체크(미구현)
        toggleSubmitButton();
    }
    
    function checkAllStatus() {
        const { termsOfService, privacyPolicy, allowPromotions } = agreements;
        if (termsOfService && privacyPolicy && allowPromotions) {
            checkAll.checked = true;
        } else {
            checkAll.checked = false;
        }
    }
    
    //필수부분의 체크 여부를 확인한 뒤 버튼을 활성화 비활성화(미구현)
        // function toggleSubmitButton() {
        // const { termsOfService, privacyPolicy } = agreements;
        // if (termsOfService && privacyPolicy) {
        //     submitButton.disabled = false;
        // } else {
        //     submitButton.disabled = true;
        // }
        // }

    </script>
</body>
</html>