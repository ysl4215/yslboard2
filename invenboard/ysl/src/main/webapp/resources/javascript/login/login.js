//로그인 버튼 클릭
function loginBtn(){
var form = document.getElementById('form');
form.submit();
}

/*아이디저장 기능*/
window.onload = function() {
	if (getCookie("idSaveCookie")) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
           document.getElementById('id').value = getCookie("idSaveCookie"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
           document.getElementById('idSave').checked = true; // 체크는 체크됨으로
    } else if (getCookie("autoLoginCookie")){
			document.getElementById('id').value = getCookie("autoLoginCookie");
			document.getElementById('autoLogin').checked = true;
			/*document.getElementById('idSave').checked = false;*/
			document.getElementById('idSave').disabled = true;
		}
	}
    
 //아이디저장 쿠키함수
function setCookie(name, value, expiredays){
        var todayDate = new Date();
        todayDate.setDate(todayDate.getDate() + expiredays);
        document.cookie = name + "=" + escape(value) + "; path=/; expires="
                + todayDate.toGMTString() + ";"
    }
function getCookie(Name) { // 쿠키 불러오는 함수
        var search = Name + "=";
        if (document.cookie.length > 0) { // if there are any cookies
            offset = document.cookie.indexOf(search);
            if (offset != -1) { // if cookie exists
                offset += search.length; // set index of beginning of value
                end = document.cookie.indexOf(";", offset); // set index of end of cookie value
                if (end == -1)
                    end = document.cookie.length;
                return unescape(document.cookie.substring(offset, end));
            }
        }
    }
function idSave() {
        if (document.getElementById('idSave').checked == true) { // 아이디 저장을 체크 하였을때
            setCookie("idSaveCookie", document.getElementById('id').value, 7); //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
        } else { // 아이디 저장을 체크 하지 않았을때
            setCookie("idSaveCookie", document.getElementById('id').value, 0); //날짜를 0으로 저장하여 쿠키삭제
        }
    }
    
function autoLogin(){
	if(document.getElementById('autoLogin').checked == true){
		/*document.getElementById('idSave').checked = false;*/
		document.getElementById('idSave').disabled = true;
		deleteCookie('idSaveCookie');
		setCookie("autoLoginCookie",document.getElementById('id').value, 7);
	} else{
		document.getElementById('idSave').disabled = false;
		setCookie("autoLoginCookie", document.getElementById('id').value, 0);
	}
}

//쿠키 삭제하기
var deleteCookie = function(name) {
	document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
}




 
