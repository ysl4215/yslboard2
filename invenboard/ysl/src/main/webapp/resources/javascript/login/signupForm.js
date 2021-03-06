var id = document.querySelector('#id');
var pw = document.querySelector('#pw');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pw_img1');
var pw2 = document.querySelector('#pw2');
var pwImg2 = document.querySelector('#pw2_img1');
var pwMsgArea = document.querySelector('.int_pass');
var userName = document.querySelector('#name');
var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');
var gender = document.querySelector('#gender');
var email = document.querySelector('#email');
var phone = document.querySelector('#phone');
var error = document.querySelectorAll('.error_next_box');

var idPattern = /[a-zA-Z0-9_-]{5,20}/;
var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
var namePattern = /[a-zA-Z가-힣]/;
var yearPattern = /[0-9]{4}/;
var datePattern = /\d{1,2}/;
var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;
var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;


id.addEventListener("change", checkId);
pw.addEventListener("change", checkPw);
pw2.addEventListener("change", comparePw);
userName.addEventListener("change", checkName);
yy.addEventListener("change", isBirthCompleted);
mm.addEventListener("change", isBirthCompleted);
dd.addEventListener("change", isBirthCompleted);
gender.addEventListener("change", function() {
    if(gender.value === "성별") {
        error[5].style.display = "block";
    } else {
        error[5].style.display = "none";
    }
})
email.addEventListener("change", isEmailCorrect);
phone.addEventListener("change", checkPhoneNum);

function join(){
	var form = document.getElementById("form");
	checkId();
	checkPw();
	comparePw();
	checkName();
	isBirthCompleted();
	checkGender();
	isEmailCorrect();
	checkPhoneNum();
	
	if(checkId()== false){
		
	} else if(checkPw()==false){
		
	} else if(comparePw()==false){
		alert(30)
	} else if(checkName()==false){
		alert(20)
	} else if(isBirthCompleted()==false){
		alert(10)
	} else if(checkGender()==false){
		alert(3)
	} else if(isEmailCorrect()==false){
		
	} else if(checkPhoneNum()==false){
		alert(5)
	} else {
		alert(6)
		form.submit();
	}
}	

function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(id.value === "") {
		error[0].style.color = "red";
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.display = "block";
      
        return false;
    } else if(!idPattern.test(id.value)) {
		error[0].style.color = "red";
        error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[0].style.display = "block";
        return false;
    } else {
        error[0].innerHTML = "멋진 아이디네요!";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }
}


function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw.value === "") {
        error[1].innerHTML = "필수 정보입니다.";
        pwMsg.style.display = "block";
        pwMsgArea.style.paddingRight = "40px";
      /*  pwImg1.src = "m_icon_pass.png";*/
        error[1].style.display = "block";
        return false;
    } else if(!pwPattern.test(pw.value)) {
        error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
        pwMsg.innerHTML = "사용불가";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";
        pwMsg.style.color = "red";
        pwMsg.style.display = "block";
    /*    pwImg1.src = "m_icon_not_use.png";*/
        return false;
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "안전";
        pwMsgArea.style.paddingRight = "93px";
        pwMsg.style.color = "#03c75a";
        pwMsg.style.display = "block";
      /*  pwImg1.src = "m_icon_safe.png";*/
    }
}

function comparePw() {
    if(pw2.value === pw.value) {
        /*pwImg2.src = "m_icon_check_enable.png";*/
        error[2].style.display = "none";
       
    } else if(pw2.value !== pw.value) {
        /*pwImg2.src = "m_icon_check_disable.png";*/
        error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
        error[2].style.display = "block";
        return false;
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "필수 정보입니다.";
        error[2].style.display = "block";
        return false;
    }
}

function checkName() {
    var namePattern = /[a-zA-Z가-힣]/;
    if(userName.value === "") {
        error[3].innerHTML = "필수 정보입니다.";
        error[3].style.display = "block";
        return false;
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
        error[3].style.display = "block";
        return false;
    } else {
        error[3].style.display = "none";
    }
}

function isBirthCompleted() {
    var yearPattern = /[0-9]{4}/;

    if(!yearPattern.test(yy.value)) {
        error[4].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
        error[4].style.display = "block";
        return false;
    } else {
        isMonthSelected();
    }

function isMonthSelected() {
        if(mm.value === "월") {
            error[4].innerHTML = "태어난 월을 선택하세요.";
             error[4].style.display = "block";
            return false;
        } else {
            isDateCompleted();
        }
    }

function isDateCompleted() {
        if(dd.value === "") {
            error[4].innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
             error[4].style.display = "block";
            return false;
        } else {
            isBirthRight();
        }
    }
}



function isBirthRight() {
    var datePattern = /\d{1,2}/;
    if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
        error[4].innerHTML = "생년월일을 다시 확인해주세요.";
        return false;
    } else {
        checkAge();
    }
}

function checkAge() {
    if(Number(yy.value) < 1920) {
        error[4].innerHTML = "정말이세요?";
    } else if(Number(yy.value) > 2019) {
        error[4].innerHTML = "미래에서 오셨군요. ^^";
    } else if(Number(yy.value) > 2005) {
        error[4].innerHTML = "만 14세 미만의 어린이는 보호자 동의가 필요합니다.";
    } else {
        error[4].style.display = "none";
    }
}


function checkGender(){
	if(gender.value ===""){
		  error[5].style.display = "block";
		return false;
	} else {
		 alert(2)
	}
}


function isEmailCorrect() {
    var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

    if(email.value === ""){ 
        error[6].style.display = "none"; 
    } else if(!emailPattern.test(email.value)) {
        error[6].style.display = "block";
        return false;
    } else {
        error[6].style.display = "none"; 
    }
}

function checkPhoneNum() {
    var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;

    if(phone.value === "") {
        error[7].innerHTML = "필수 정보입니다.";
        error[7].style.display = "block";
        return false;
    } else if(!isPhoneNum.test(phone.value)) {
        error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
        error[7].style.display = "block";
        return false;
    } else {
        error[7].style.display = "none";
    }
}


