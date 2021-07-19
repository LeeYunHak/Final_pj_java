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
    <title>비밀번호수정페이지</title>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');

        html{
        font-family: 'Nanum Gothic', sans-serif;
        }
        .main{
            margin:0 auto;
            text-align: center;
            margin-top: 100px;
            background-color: whitesmoke;
            height: 220px;
            width: 400px;
        }
        .main>h2{
            padding: 40px;
        }

        #userPassword{
            height: 30px;
        }

        #userPassword:focus{
            outline: none;
        }

        #submit{
            margin-left: 20px;
            height: 30px;
            width: 50px;
            background-color: #c8c8c8;
            border: none;
            cursor: pointer;
        }

    </style>
</head>
<body>
    <div class="main">
        <h2>비밀번호 수정 페이지</h2>
        <form action="/user/pwUpdate" method="post">
            <input type="hidden" name="userEmail" readonly="readonly" value="${stUser.userEmail }">
            <input type="text" name="userPassword" id="userPassword" placeholder="변경할 비밀번호 입력하세요">
            <input type="submit" id="submit" value="수정">
        </form>
    </div>    
</body>
</html>