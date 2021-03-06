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
                            <li class="nv-it"><a id="nav3-1-logo" href="/company/mainBefore"><img src="/resources/images/Dreamer_W.png" class="logo"></a></li>
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
                            <li><a id="nav3-3-join" type="button" href="/company/companyJoin">채용담당자 가입</a></li>
                            <li><a id="nav3-1-blank" type="button">&nbsp;</a></li>
                            <li style="float: right;"><button class="home-btn" type="button" onclick="location.href = '/user/mainBefore'">드리머 홈</button></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
    <!-- 네비게이션바 END -->
            <div class="content">
	            <form action="/company/joinCompany" method="post">
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
                            <input type="password" class="ip-txt-h" name="companyPassword" placeholder="비밀번호 입력" required>
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
                            <input type="text" class="ip-txt-h" name="companyPhone" placeholder="ex) 010-0000-0000" required>
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
                            <button type="submit" class="fr-btn">
                                가입하기
                            </button>
                        </div>
                    </div>
                </div>
                </form>
                <div id="my_modal2">
                    <div>
                        <div class="ModalHeader2" style="text-align: center;">
                            <span style="text-align: center; font-size: 20px;" >채용담당자 로그인</span>
                            <button type="button" class="Modal_close_btn2">X</button>
                            <div style="width: 102%;border-top: 1px solid #c8c8c8; margin-top: 20px;"></div>
                        </div>
                        <div class="ModalBody2">
                            <div>
                                <h2 style="text-align: left; margin-left: 20px;">지원 정보</h2>
                                <form name="info" action="co_main.html" method="POST">
                                    <div style="margin-top: 20px;">
                                        <label><input required id="email" type="email" placeholder="회사 이메일 (로그인 아이디로 사용됩니다.)"autocomplete="off"></label>
                                        <label><input required id="pwd" type="password" placeholder="비밀번호"autocomplete="off"></label>
                                    </div>
                                </form>
                                <div>
                                    <input type="submit" id="upload" value="로그인"
                                    onclick="javascript:location.href='/company/companyInfo'"></input>
                                    <input type="button" id="change" value="비밀번호 변경"></input>
                                </div>  
                            </div>
                        </div>    
                            <footer class="foot">
                                <div style="width: 96%;border-top: 1px solid #c8c8c8; padding-top: 20px; " ></div>
                                <div style="position: absolute; left: 110px;">
                                    <h5 style="display: inline-block; color: #a8a8a8; font-size: 15px;">계정이 없으신가요?&nbsp;&nbsp;&nbsp;</h5>
                                    <a href="/company/companyJoin" style="display: inline-block; font-size: 15px; color: black; font-weight:bold;">채용담당자 계정 만들기</a>
                                </div>
                            </footer>
                    </div>        
                </div>
                <div id="my_modal1">
                    <div class="ModalHeader1" style="text-align: center;">
                        <span style="text-align: center; margin-right: -25px; font-size: 20px;" >채용담당자 로그인</span>
                        <button type="button" class="Modal_close_btn1">X</button>
                        <div style="width: 100%;border-top: 1px solid #c8c8c8; margin-top: 20px;"></div>
                    </div>
                    <div class="ModalBody1">
                        <div>
                            <label><input required id="findemail" type="email" placeholder="회사 이메일 (로그인계정)"autocomplete="off"></label>
                                    <h7 style="display: inline-block; color: #a8a8a8; font-size: 15px; font-weight: bold;">비밀번호를 재설정할 이메일 계정을 입력해주세요</h7>
                        </div>
                        <footer class="foot">          
                            <input type="submit" id="upload" value="완료"
                            onclick="javascript:location.href='/company/mainBefore'"></input>
                    </footer>
                </div>
            </div>
        </div>
    </div>
    <script>
         /*채용담당자 로그인 모달 */
  document.getElementById('nav3-2-login').addEventListener('click', function() {
      modal2('my_modal2');
  });
  function modal2 (id){
      var zIndex = 9999;
      var modal = document.getElementById(id);
      
      //모달 div 뒤에 레이어
      var bg = document.createElement('div');
      bg.setStyle({
          position: 'fixed',
          zIndex: zIndex,
          left: '0px',
          top: '0px',
          width: '100%',
          height: '100%',
          overflow: 'auto',
          // 레이어 색갈은 여기서 바꾸면 됨
          backgroundColor: 'rgba(0,0,0,0.4)'
      });
      document.body.append(bg);
  
      //닫기 버튼 까만 레이어 모달div 지우기
      modal.querySelector('.Modal_close_btn2').addEventListener('click', function(){
          bg.remove();
          modal.style.display = 'none';
      });
      modal.setStyle({
          position: 'fixed',
          display: 'block',
          boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',
  
          // 시꺼먼 레이어 보다 한칸 위에 보이기
          zIndex: zIndex + 1,
  
          // div center 정렬
          top: '50%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          msTransform: 'translate(-50%, -50%)',
          webkitTransform: 'translate(-50%, -50%)'
      });
  }
  
  // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
  Element.prototype.setStyle = function(styles) {
    for (var k in styles) this.style[k] = styles[k];
    return this;
  };
  
  /*비밀번호 변경 모달*/

function modal1 (id){
    var zIndex = 99999999;
    var modal = document.getElementById(id);
    
    //모달 div 뒤에 레이어
    var bg = document.createElement('div');
    bg.setStyle({
      position: 'fixed',
      zIndex: zIndex,
      left: '0px',
      top: '0px',
      width: '100%',
      height: '100%',
      overflow: 'auto',
      // 레이어 색갈은 여기서 바꾸면 됨
      backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);
    
    //닫기 버튼 까만 레이어 모달div 지우기
    modal.querySelector('.Modal_close_btn1').addEventListener('click', function(){
      bg.remove();
      modal.style.display = 'none';
    });
    modal.setStyle({
      position: 'fixed',
      display: 'block',
      boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',
      
      // 시꺼먼 레이어 보다 한칸 위에 보이기
      zIndex: zIndex + 1,
      
      // div center 정렬
      top: '50%',
      left: '50%',
      transform: 'translate(-50%, -50%)',
        msTransform: 'translate(-50%, -50%)',
        webkitTransform: 'translate(-50%, -50%)'
    });
  }
      document.getElementById('change').addEventListener('click', function() {
          modal1('my_modal1');
      });
      // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
      Element.prototype.setStyle = function(styles) {
          for (var k in styles) this.style[k] = styles[k];
          return this;
      };
    </script>
        <script type="text/javascript" src="/resources/navi.js"> </script>
</body>
</html>