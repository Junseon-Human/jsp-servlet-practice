/**
 * 
 */

function loginCheck() {
	if (document.frm.userid.value.length == 0) {
		alert("아이디를 입력하세요")
		frm.userid.focus();
		return false;
	}
	if (document.frm.pwd.value == "") {
		alert("비밀번호를 입력하세요");
		frm.pwd.focus();
		return false;
	}
	return true;
}

function idCheck() {
	if (document.frm.userid.value.length < 4) {
		alert("아이디는 4글자 이상입니다.")
		frm.userid.focus();
		return false;
	}
	let url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blank",
		"toolbar=no, menubar=no, scrollbar=no, resizable=no, width=450, height=200,top=300, left=200");

}

function idOK() {
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}

function joinCheck() {
	if (document.frm.reid.value.length == 0) {
		alert("아이디 중복 체크를 해주세요.");
		frm.userid.focus();
		return false;
	}
	if (document.frm.pwd.value != document.frm.pwd_c.value) {
		alert("비밀번호가 일치하지않습니다.");
		frm.pwd.focus();
		return false;
	}
	return true;
}