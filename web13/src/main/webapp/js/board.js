
//유효성 체크
function boardCheck(){
	if(document.frm.name.value.length == 0){
		alert("작성자를 입력하세요");
		document.frm.name.focus();
		return false;
	}
	if(document.frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요");
		document.frm.pass.focus();
		return false;
	}
	if(document.frm.title.value.length == 0){
		alert("제목을 입력하세요");
		document.frm.title.focus();
		return false;
	}
	return true;
}

//윈도우창 띄우기
function open_win(url, name){
	window.open(url, name, "width=500, height=230");
}

//비밀번호 확인
function passCheck(){
	if(document.frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요");
		document.frm.pass.focus();
		return false;
	}
	return true;
}