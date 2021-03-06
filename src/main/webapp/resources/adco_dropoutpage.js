/*탐색창 뜨게하는 스크립트랑 마이페이지작은창(arrow_box)뜨는 스크립트 지움*/

/*탈퇴확인 모달 */
 document.getElementById('dropoutbtn').addEventListener('click', function() {
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
    modal.querySelector('.close').addEventListener('click', function(){
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

/*탈퇴메세지 모달*/

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
    document.getElementById('drop').addEventListener('click', function() {
        modal1('my_modal1');
    });
    // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
    Element.prototype.setStyle = function(styles) {
        for (var k in styles) this.style[k] = styles[k];
        return this;
    };

