
/*북마크클릭시 색변경 */
$('#bm').on({
    'click': function(){ 
        $('#bookmarkimg').attr('src','images/bookmark2.png'); 
    } 
});

/*$('.bookmarkbtn').on("click", function(){
    var data = {bookmarkId};
    
	//초기화 된 값으로 조회(로그인 후 메인페이지 기본값)
	$.ajax({
		type : "post",
		url : "/user/bookmarkAdd",
		data : data,
		success : function(result){
			if(result != 'fail'){ //성공
				//console.log("성공" + result);
				alert('선택한 항목을 초기화합니다.');		
			} else {
				alert('조회에 실패했습니다.');
			}
		}
	});
});*/