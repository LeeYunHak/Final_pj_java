document.getElementById('selectnavi').addEventListener('mouseover', function() {

	document.getElementsByClassName('opennavi')[0].style.display = 'block'
});
document.getElementsByClassName('opennavi')[0].addEventListener('mouseover', function() {

	document.getElementsByClassName('opennavi')[0].style.display = 'block'
});
document.getElementsByClassName('opennavi')[0].addEventListener('mouseout', function() {

	document.getElementsByClassName('opennavi')[0].style.display = 'none'
});

//////////////////////////////////////////////////////////////////////

// 직업, 지역 셀렉트박스 선택 기능
function doChange(src, target) {
	var val = src.options[src.selectedIndex].value;
	var target = document.getElementById(target);
	removeAll(target);


	if (val == 'production') { //연출
		addOption('감독', target);
		addOption('조감독', target);
		addOption('각본', target);
		addOption('프로듀서', target);
		addOption('연출팀', target);
	}
	else if (val == 'light') { //조명
		addOption('조명팀', target);
		addOption('발전차', target);
	}
	else if (val == 'acoustics') { //음향
		addOption('음향팀', target);
		addOption('동시녹음팀', target);
	}
	else if (val == 'photographing') { //촬영
		addOption('촬영팀', target);
		addOption('크립팀', target);
	}
	else if (val == 'making') { //제작
		addOption('제작팀', target);
		addOption('캐스팅담당팀', target);
	}
	else if (val == 'actor') { //배우
		addOption('주연', target);
		addOption('조연', target);
		addOption('스턴트', target);
		addOption('단역', target);
	}
	else if (val == 'art') { //미술
		addOption('미술팀', target);
		addOption('미술감독', target);
		addOption('소품팀', target);
	}
	else if (val == 'makeUp') { //분장
		addOption('헤어팀', target);
		addOption('의상팀', target);
		addOption('분장팀', target);
	}
	
/////////////////// 지역 ////////////////////////////////

	else if (val == 'seoul') { //서울
		addOption('강남구', target);
		addOption('강동구', target);
		addOption('강북구', target);
		addOption('강서구', target);
		addOption('관악구', target);
		addOption('광진구', target);
		addOption('구로구', target);
		addOption('금천구', target);
		addOption('노원구', target);
		addOption('도봉구', target);
		addOption('동대문구', target);
		addOption('동작구', target);
		addOption('마포구', target);
		addOption('서대문구', target);
		addOption('서초구', target);
		addOption('성동구', target);
		addOption('성북구', target);
		addOption('송파구', target);
		addOption('양천구', target);
		addOption('영등포구', target);
		addOption('용산구', target);
		addOption('은평구', target);
		addOption('종로구', target);
		addOption('중구', target);
		addOption('중랑구', target);
	}
	else if (val == 'busan') { //부산
		addOption('강서구', target);
		addOption('금정구', target);
		addOption('남구', target);
		addOption('동구', target);
		addOption('동래구', target);
		addOption('부산진구', target);
		addOption('북구', target);
		addOption('사상구', target);
		addOption('사하구', target);
		addOption('서구', target);
		addOption('수영구', target);
		addOption('연제구', target);
		addOption('영도구', target);
		addOption('중구', target);
		addOption('해운대구', target);
		addOption('기장군', target);
	}
	else if (val == 'daegu') { //대구
		addOption('남구', target);
		addOption('달서구', target);
		addOption('동구', target);
		addOption('북구', target);
		addOption('서구', target);
		addOption('수성구', target);
		addOption('중구', target);
		addOption('달성군', target);
	}
	else if (val == 'incheon') { //인천
		addOption('계양구', target);
		addOption('미추홀구', target);
		addOption('남동구', target);
		addOption('동구', target);
		addOption('부평구', target);
		addOption('서구', target);
		addOption('연수구', target);
		addOption('중구', target);
		addOption('강화군', target);
		addOption('옹진군', target);
	}
	else if (val == 'gwangju') { //광주
		addOption('광산구', target);
		addOption('남구', target);
		addOption('동구', target);
		addOption('북구', target);
		addOption('서구', target);
	}
	else if (val == 'daejeon') { //대전
		addOption('대덕구', target);
		addOption('동구', target);
		addOption('서구', target);
		addOption('유성구', target);
		addOption('중구', target);
	}
	else if (val == 'ulsan') { //울산
		addOption('남구', target);
		addOption('동구', target);
		addOption('북구', target);
		addOption('중구', target);
		addOption('울주군', target);
	}
	else if (val == 'gyeong-gi') { //경기
		addOption('수원시', target);
		addOption('고양시', target);
		addOption('성남시', target);
		addOption('용인시', target);
		addOption('부천시', target);
		addOption('안산시', target);
		addOption('남양주시', target);
		addOption('안양시', target);
		addOption('화성시', target);
		addOption('평택시', target);
		addOption('의정부시', target);
		addOption('시흥시', target);
		addOption('파주시', target);
		addOption('김포시', target);
		addOption('광명시', target);
		addOption('광주시', target);
		addOption('군포시', target);
		addOption('오산시', target);
		addOption('이천시', target);
		addOption('양주시', target);
		addOption('양주시', target);
		addOption('안성시', target);
		addOption('구리시', target);
		addOption('포천시', target);
		addOption('의왕시', target);
		addOption('하남시', target);
		addOption('여주시', target);
		addOption('양평군', target);
		addOption('동두천시', target);
		addOption('과천시', target);
		addOption('가평군', target);
		addOption('연천군', target);
	}
	else if (val == 'gang-won') { //강원
		addOption('강릉시', target);
		addOption('동해시', target);
		addOption('삼척시', target);
		addOption('속초시', target);
		addOption('원주시', target);
		addOption('춘천시', target);
		addOption('태백시', target);
		addOption('고성군', target);
		addOption('양구군', target);
		addOption('양양군', target);
		addOption('영월군', target);
		addOption('인제군', target);
		addOption('정선군', target);
		addOption('철원군', target);
		addOption('평창군', target);
		addOption('홍천군', target);
		addOption('화천군', target);
		addOption('횡성군', target);
	}
	else if (val == 'chungbug') { //충북
		addOption('제천시', target);
		addOption('청주시', target);
		addOption('충주시', target);
		addOption('괴산군', target);
		addOption('단양군', target);
		addOption('보은군', target);
		addOption('영동군', target);
		addOption('옥천군', target);
		addOption('음성군', target);
		addOption('진천군', target);
		addOption('증평군', target);
		addOption('청원군', target);
	}
	else if (val == 'chungnam') { //충남
		addOption('공주시', target);
		addOption('논산시', target);
		addOption('보령시', target);
		addOption('서산시', target);
		addOption('아산시', target);
		addOption('천안시', target);
		addOption('금산군', target);
		addOption('당진시', target);
		addOption('부여군', target);
		addOption('서천군', target);
		addOption('연기군', target);
		addOption('예산군', target);
		addOption('청양군', target);
		addOption('태안군', target);
		addOption('홍성군', target);
	}
	else if (val == 'jeonbug') { //전북
		addOption('군산시', target);
		addOption('김제시', target);
		addOption('남원시', target);
		addOption('익산시', target);
		addOption('전주시', target);
		addOption('정읍시', target);
		addOption('고창군', target);
		addOption('무주군', target);
		addOption('부안군', target);
		addOption('순창군', target);
		addOption('완주군', target);
		addOption('임실군', target);
		addOption('장수군', target);
		addOption('진안군', target);
	}
	else if (val == 'jeonnam') { //전남
		addOption('광양시', target);
		addOption('나주시', target);
		addOption('목포시', target);
		addOption('순천시', target);
		addOption('여수시', target);
		addOption('강진군', target);
		addOption('고흥군', target);
		addOption('곡성군', target);
		addOption('구례군', target);
		addOption('담양군', target);
		addOption('무안군', target);
		addOption('보성군', target);
		addOption('신안군', target);
		addOption('영광군', target);
		addOption('영암군', target);
		addOption('완도군', target);
		addOption('장성군', target);
		addOption('장흥군', target);
		addOption('진도군', target);
		addOption('함평군', target);
		addOption('해남군', target);
		addOption('화순군', target);
	}
	else if (val == 'gyeongbug') { //경북
		addOption('경산시', target);
		addOption('경주시', target);
		addOption('구미시', target);
		addOption('김천시', target);
		addOption('문경시', target);
		addOption('상주시', target);
		addOption('안동시', target);
		addOption('영주시', target);
		addOption('영천시', target);
		addOption('포항시', target);
		addOption('고령군', target);
		addOption('군위군', target);
		addOption('봉화군', target);
		addOption('성주군', target);
		addOption('영덕군', target);
		addOption('영양군', target);
		addOption('예천군', target);
		addOption('울릉군', target);
		addOption('울진군', target);
		addOption('의성군', target);
		addOption('청도군', target);
		addOption('청송군', target);
		addOption('칠곡군', target);
	}
	else if (val == 'gyeongnam') { //경남
		addOption('거제시', target);
		addOption('김해시', target);
		addOption('밀양시', target);
		addOption('사천시', target);
		addOption('양산시', target);
		addOption('진주시', target);
		addOption('창원시', target);
		addOption('통영시', target);
		addOption('거창군', target);
		addOption('고성군', target);
		addOption('남해군', target);
		addOption('산청군', target);
		addOption('의령군', target);
		addOption('창녕군', target);
		addOption('하동군', target);
		addOption('함안군', target);
		addOption('함양군', target);
		addOption('합천군', target);
	}
	else if (val == 'jeju') { //제주
		addOption('서귀포시', target);
		addOption('제주시', target);
	}
}

function addOption(value, e) {
	var o = new Option(value);
	try {
		e.add(o);
	} catch (ee) {
		e.add(o, null);
	}
}

function removeAll(e) {
	for (var i = 0, limit = e.options.length; i < limit - 1; ++i) {
		e.remove(1);
	}
}

/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////

//셀렉트박스 직업값으로 db 연동해서 조회하기
$('.job').on("change", function(){
	var job = $("#job option:selected").val(); // .job(클래스명)에 입력되는 값
	var data = {companyJobPostingJobGroup : job} // '컨트롤에 넘길 데이터 이름' : '데이터(.job에 입력되는 값)'
	$.ajax({
		type : "get",
		url : "/user/mainAfterJobGroup",
		data : data,
		success : function(result){
			if(result != 'fail'){ //성공
				//console.log("성공" + result);
				alert('선택 항목으로 조회합니다.');		
			} else {
				alert('조회에 실패했습니다.');
			}
		}// success 종료
	}); // ajax 종료
});

/////////////////////////////////////////////////////////////////////

//셀렉트박스 세부직업값으로 db 연동해서 조회하기
$('.detail_job').on("change", function(){
	var detailJob = $("#detail_job option:selected").val(); // .job(클래스명)에 입력되는 값
	var data = {companyJobPostingJob : detailJob} // '컨트롤에 넘길 데이터 이름' : '데이터(.job에 입력되는 값)'
	$.ajax({
		type : "get",
		url : "/user/mainAfterDetaliJob",
		data : data,
		success : function(result){
			if(result != 'fail'){ //성공
				//console.log("성공" + result);
				alert('선택 항목으로 조회합니다.');		
			} else {
				alert('조회에 실패했습니다.');
			}
		}// success 종료
	}); // ajax 종료
});

/////////////////////////////////////////////////////////////////////

//셀렉트박스 지역값으로 db 연동해서 조회하기
$('.country').on("change", function(){
	var country = $("#country option:selected").val(); // .job(클래스명)에 입력되는 값
	var data = {companyCountry : country} // '컨트롤에 넘길 데이터 이름' : '데이터(.job에 입력되는 값)'
	$.ajax({
		type : "get",
		url : "/user/mainAfterCountry",
		data : data,
		success : function(result){
			if(result != 'fail'){ //성공
				//console.log("성공" + result);
				alert('선택 항목으로 조회합니다.');		
			} else {
				alert('조회에 실패했습니다.');
			}
		}// success 종료
	}); // ajax 종료
});

/////////////////////////////////////////////////////////////////////

//셀렉트박스 세부지역값으로 db 연동해서 조회하기
$('.detail_country').on("change", function(){
	var detailCountry = $("#detail_country option:selected").val(); // .job(클래스명)에 입력되는 값
	var data = {companyDetailCountry : detailCountry} // '컨트롤에 넘길 데이터 이름' : '데이터(.job에 입력되는 값)'
	$.ajax({
		type : "get",
		url : "/user/mainAfterDetailCountry",
		data : data,
		success : function(result){
			if(result != 'fail'){ //성공
				//console.log("성공" + result);
				alert('선택 항목으로 조회합니다.');		
			} else {
				alert('조회에 실패했습니다.');
			}
		}// success 종료
	}); // ajax 종료
});

/////////////////////////////////////////////////////////////////////

//셀렉트박스 경력(작품개수)값으로 db 연동해서 조회하기
$('.career').on("change", function(){
	var career = $("#career option:selected").val(); // .job(클래스명)에 입력되는 값
	var data = {companyJobPostingCareer : career} // '컨트롤에 넘길 데이터 이름' : '데이터(.job에 입력되는 값)'
	$.ajax({
		type : "get",
		url : "/user/mainAfterCareer",
		data : data,
		success : function(result){
			if(result != 'fail'){ //성공
				//console.log("성공" + result);
				alert('선택 항목으로 조회합니다.');		
			} else {
				alert('조회에 실패했습니다.');
			}
		}// success 종료
	}); // ajax 종료
});













