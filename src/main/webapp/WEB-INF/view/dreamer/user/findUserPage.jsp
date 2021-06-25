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
    <title>아이디ㆍ비밀번호 찾기</title>
    <link rel="stylesheet" href="/resources/findcss.css">
</head>

<body>
    <header>
        <h2><span><a href="/user/mainBefore" class="dreamer">Dreamer</a></span>&nbsp;</h2>
        <div class="nav">
        </div>
    </header>
    <div class="container-margin-top-80">
        <div class="col-xs-offset-4-col-xs-4">
            <div class="row">
                <div class="col-xs-12">
                    <h3>아이디ㆍ비밀번호 찾기</h3>
                </div>
            </div>
            <div class="row-margin-top-15">
                <div class="col-xs-12">
                    <div class="panel-panel-default">
                        <div class="panel-heading">아이디 찾기</div>
                        <div class="panel-body">
                            <form action="" method="POST">
                                <div class="multi-form-group-margin-top-0-margin-bottom-0">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="userName" placeholder="본명" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="tel" class="form-control" name="userPhone" placeholder="휴대전화번호" required>
                                    </div>
                                    <div class="margin-top-15-margin-bottom-15">
                                        <small>본인인증 받으신 정보를 입력해 주세요. SMS로 아이디(이메일 주소)를 보내드립니다.</small>
                                    </div>
                                    <input type="submit" class="btn-btn-primary-btn-sm-btn-block-margin-top-5"
                                        value="SMS로 이메일 주소 전송">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="panel-panel-default-margin-bottom-0">
                        <div class="panel-heading">비밀번호 찾기</div>
                        <div class="panel-body">
                            <form action="/user/mainBefore" method="POST">
                                <div class="multi-form-group-margin-top-0-margin-bottom-0">
                                    <div class="form-group">
                                        <input type="email" id="email" name="userEmail" class="form-control" placeholder="이메일" required>
                                    </div>
                                    <div class="margin-top-15-margin-bottom-15">
                                        <small>가입 시 등록하신 이메일 주소를 입력해 주세요. 비밀번호 재설정 링크를 보내드립니다.</small>
                                    </div>
                                    <input type="submit" class="btn-btn-primary-btn-sm-btn-block-margin-top-5"
                                        value="비밀번호 변경 URL 전송">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-margin-top-10">
                <div class="col-xs-12">
                    <div class="col-xs-6-text-left">
                        <div class="row">
                            <a href="/user/mainBefore" class="logA">
                                <h5>로그인</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-6-text-right">
                        <div class="row">
                            <a href="join.html" class="logA">
                                <h5>회원가입</h5>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>