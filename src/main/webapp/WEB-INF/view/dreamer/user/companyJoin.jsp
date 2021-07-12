<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>채용담당자 가입</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/companyJoin.css">
</head>
<body>
    <div id="frame">
        <div class="main">
            <!-- 네비게이션바 START -->
       <header class="navbar">
        <div class="nav-con">
            <div>
                <nav class="nv">
                    <ul class="nv-st">
                        <li class="nv-it"><a id="nav3-1-logo" href="로그인 전 메인"><img src="/resources/images/Dreamer_W.png" class="logo"></a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>       
                        <li><a id="nav3-2-login" type="button">채용담당자 로그인</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li><a id="nav3-3-join" type="button" href="companyJoin.html">채용담당자 가입</a></li>
                        <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                        <li style="float: right;"><button class="home-btn" type="button">드리머 홈</button></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
<!-- 네비게이션바 END -->
            <div class="content">
                <div class="ct-container">
                    <h2 class="ct-h2">회사 정보를 등록해주세요.</h2>
                    <h4 class="ct-h4">드리머는 구직자들에게 좋은 일자리를 제공하기 위해, 회사 정보를 검토후 회사 등록을 승인하고 있습니다.</h4>
                    <div class="form-half">
                        <div class="form-half-left">
                            <div class="form-half-left-label">
                                이메일
                            </div>
                            <input type="email" class="ip-txt-h" name="companyEmail" placeholder="대표 이메일 입력" required>
                        </div>
                        <div class="form-half-left">
                            <div class="form-half-left-label">
                                비밀번호
                            </div>
                            <input type="password" class="ip-txt-h" name="companyEmail" placeholder="비밀번호 입력" required>
                        </div>
                    </div>
                    <div class="form-fullsz">
                        <div class="form-half-left-label">
                            회사이름
                        </div>
                        <div class="inp-fullsz">
                            <input type="text" class="ipt-txt-f" name="companyName" placeholder="회사이름 입력" required>
                        </div>
                    </div>
                    <div class="form-fullsz">
                        <div class="form-half-left-label">
                            사업자 등록 번호
                        </div>
                        <div class="inp-fullsz">
                            <input type="text" class="ipt-txt-f" name="companyRegistrationNumber" placeholder="'-'제외 하고 입력" required>
                        </div>
                    </div>
                    <div class="form-fullsz">
                        <div class="form-half-left-label">
                            대표 주소
                        </div>
                        <div class="inp-fullsz">
                            <input type="text" class="ipt-txt-f" name="companyAddress" placeholder="대표 주소 입력" required>
                        </div>
                    </div>
                    <div class="form-half">
                        <div class="form-half-left">
                            <div class="form-half-left-label">
                                연매출액
                            </div>
                            <input type="text" class="ip-txt-h" name="companySales" placeholder="매출액 (단위 : 억원)" required>
                        </div>
                        <div class="form-half-left">
                            <div class="form-half-left-label">
                                직원수
                            </div>
                            <input type="text" class="ip-txt-h" name="companyEmployeeNumber" placeholder="직원수 입력 ex)00명" required>
                        </div>
                    </div>
                    <div class="form-half">
                        <div class="form-half-left">
                            <div class="form-half-left-label">
                                설립연도
                            </div>
                            <input type="text" class="ip-txt-h" name="companySales" placeholder="ex) 0000년" required>
                        </div>
                        <div class="form-half-left">
                            <div class="form-half-left-label">
                                담당자 연락처
                            </div>
                            <input type="text" class="ip-txt-h" name="companyEmployeeNumber" placeholder="ex) 010-0000-0000" required>
                        </div>
                    </div>
                    <div class="txt-area-ctr">
                        <div class="form-half-left-label">
                            회사 소개 (2,000자 제한)
                        </div>
                        <textarea name="companyIntroduce" class="txtra-Introduce" placeholder="회사소개 (텍트스만 입력)" maxlength="2000" required></textarea>
                    </div>
                    <div style="height: 80px;"></div>
                </div>
                <div class="ft-var">
                    <div class="ft-container">
                        <span class="ft-txt-ctr">
                            <span class="ft-txt">
                                🎈드리머 기업회원 가입을 환영합니다!
                            </span>
                        </span>
                        <div class="fr-btn-ctr">
                            <button class="fr-btn">
                                가입하기
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>