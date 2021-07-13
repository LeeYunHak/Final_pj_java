function jobKindChange(e) {
    var detail_a = ["직군을 선택해 주세요"];
    var detail_b = ["감독", "조감독", "각본", "프로듀서", "연출팀"];
    var detail_c = ["조명팀", "발전차"];
	var detail_d = ["음향팀", "동시녹음팀"];
	var detail_e = ["촬영팀", "그립팀"];
	var detail_f = ["특수효과팀"];
	var detail_g = ["제작팀", "캐스팅 담당팀"];
	var detail_h = ["주연", "조연", "스턴트", "단역"];
	var detail_i = ["미술팀", "미술감독", "소품팀"];
	var detail_j = ["헤어팀", "의상팀", "분장팀"];
    var target = document.getElementById("jobKindD");

    if(e.value == "a") var d = detail_a;
    else if(e.value == "b") var d = detail_b;
	else if(e.value == "c") var d = detail_c;
	else if(e.value == "d") var d = detail_d;
	else if(e.value == "e") var d = detail_e;
	else if(e.value == "f") var d = detail_f;
	else if(e.value == "g") var d = detail_g;
	else if(e.value == "h") var d = detail_h;
	else if(e.value == "i") var d = detail_i;
	else if(e.value == "j") var d = detail_j;


    target.options.length = 0;

    for (x in d) {
        var opt = document.createElement("option");
        opt.id = 'jobValue';
        opt.value = d[x];
        opt.innerHTML = d[x];
        target.appendChild(opt);
    }
    var jobKindU = document.getElementById('jobKindU'); //셀렉트박스
	var val = jobKindU.options[jobKindU.selectedIndex].value; // 셀렉트박스 벨류
	var num1 =document.getElementById('1').innerText
	var num2 =document.getElementById('2').innerText
	var num3 =document.getElementById('3').innerText
	var num4 =document.getElementById('4').innerText
	var num5 =document.getElementById('5').innerText
	var num6 =document.getElementById('6').innerText
	var num7 =document.getElementById('7').innerText
	var num8 =document.getElementById('8').innerText
	var num9 =document.getElementById('9').innerText
	var test = document.getElementById('test')
	
	if(val == 'b'){
		test.value = num1;
	}else if (val == 'c'){
		test.value = num2;
	}else if (val == 'd'){
		test.value = num3;
	}else if (val == 'e'){
		test.value = num4;
	}else if (val == 'f'){
		test.value = num5;
	}else if (val == 'g'){
		test.value = num6;
	}else if (val == 'h'){
		test.value = num7;
	}else if (val == 'i'){
		test.value = num8;
	}else if (val == 'j'){
		test.value = num9;
	}
       
}

function jobChange(){
	var target = document.getElementById("jobKindD").value;
	var test2 = document.getElementById('test2');
	test2.value = target;
}


function careerCh(){
	var target = document.getElementById("career").value;
	var test3 = document.getElementById('test3');
	test3.value = target;
}




