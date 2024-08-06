/**
 * 
 */
function check(){
    if(document.info.name.value == "" ||
        document.info.personNum1.value == "" ||
        document.info.personNum2.value == "" ||
        document.info.id.value == "" ||
        document.info.pwd.value == "" ||
        document.info.pwd2.value == "")
    {
        alert("입력되지 않은 정보가 있습니다.");
        return false;
    }else{
        return check2();
    }
}
function check2(){
    if(document.info.pwd.value != document.info.pwd2.value){
        alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        return false;
    }else{
        return check3();
    }
}
function check3(){
	if(document.info.id.value.length < 4) {
		alert("아이디는 4자 이상이요")
		return false;
	} else {
		return check4();
	}
}
function check4() {
	if(document.info.personNum1.value.length != 6 || document.info.personNum2.value.length != 7){
		alert("주민등록 번호는 앞자리 6자리 뒷자리 6자리 입니다.")
		return false;
	} else {
		return true;
	}
}