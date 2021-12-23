<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script>
	/* 
	 var idRegex= /^[a-z0-9_-]{5,20}$/;
	 var emptyMsg= '필수정보입니다.';
	 var idRegexMsg= '5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용가능합니다.';
	 var pwRegex= /^[a-z0-9A-Z~!@#$%&*]{8,16}$/;
	 var pwRegexMsg= '8~16자의 영문 대/소문자, 숫자와 특수문자를 사용하세요.';

	 $(function(){
	 $('button[type=submit]').click(function(){
	 var id= $('input[name=uid]').val();
	 var str= check(id, idRegex, emptyMsg, idRegexMsg);    
	 $('#id-error').text(str);

	 var pw=  $('input[name=pw]').val();

	 str=check(pw, pwRegex,emptyMsg, pwRegexMsg);
	 $('#pwd-error').text(str);

	 return false;
	 })
	 $('input[name=id]').change(function(){
	 var id=$('input[name=id]').val();
	 var str= check(id, idRegex, emptyMsg, idRegexMsg);
	 $('#id-error').text(str);
	 })
	 $('input[name=pw]').change(function(){
	 var pw=$('input[name=pw]').val();
	 var str= check(pw, pwRegex, emptyMsg, pwRegexMsg);
	 $('#pwd-error').text(str);
	 })
	 })

	 function check(str, regex, emptyMsg, regexMsg){
	 if(str==''){
	 return emptyMsg;
	 }else if(!idRegex.test(str)){
	 return regexMsg;
	 }else{
	 return '';
	 }
	 } 
	 */

	 
	 
	 
	var idRegex = /[a-zA-Z0-9_-]{5,20}/;
	var emptyMsg = '필수정보입니다.';
	var idRegexMsg = '5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용가능합니다.';
	var pwRegex = /^[a-z0-9A-Z~!@#$%&*]{8,16}$/;
	var pwRegexMsg = '8~16자의 영문 대/소문자, 숫자와 특수문자를 사용하세요.';

	$(document).on('click', '#btnSignup', function(e) {

		var uid = $('input[name=uid]').val();
		var str = check(uid, idRegex, emptyMsg, idRegexMsg);
		$('#id-error').text(str);

		var pwd = $('input[name=pwd]').val();
		str = check(pwd, pwRegex, emptyMsg, pwRegexMsg);
		$('#pwd-error').text(str);
		
		var pwd2 = $('input[name=pwd2]').val();
		str = check2(pwd2, emptyMsg);
		$('#pwd2-error').text(str);
		
		var name = $('input[name=name]').val();
		str = check2(name, emptyMsg);
		$('#name-error').text(str);
		
		var gender = $('input[name=gender]').val();
		str = check2(gender, emptyMsg);
		$('#gender-error').text(str);

		return false;
		
	/* 	e.preventDefault();	
		$("#form").submit(); */
	})
		 

	$('input[name=uid]').change(function() {
		var uid = $('input[name=uid]').val();
		var str = check(uid, idRegex, emptyMsg, idRegexMsg);
		$('#id-error').text(str);
	})
	$('input[name=pwd]').change(function() {
		var pwd = $('input[name=pwd]').val();
		var str = check(pwd, pwRegex, emptyMsg, pwRegexMsg);
		$('#pwd-error').text(str);
	})
	
	$('input[name=pwd2]').change(function() {
		var pwd2 = $('input[name=pwd2]').val();
		var str = check2(pwd2, emptyMsg);
		$('#pwd2-error').text(str);
	})
	
	$('input[name=name]').change(function() {
		var name = $('input[name=name]').val();
		var str = check2(name, emptyMsg);
		$('#name-error').text(str);
	})
	
	$('input[name=gender]').change(function() {
		var gender = $('input[name=gender]').val();
		var str = check2(gender, emptyMsg);
		$('#gender-error').text(str);
	})
	


	function check(str, regex, emptyMsg, regexMsg) {
		if (str == '') {
			return emptyMsg;
		} else if (!idRegex.test(str)) {
			return regexMsg;
		} else {
			return '';
		}
	}
	
	function check2(str,emptyMsg){
		if(str==''){
			return emptyMsg;
		} else{
			return '';
		}
	}

	$(document).on('click', '#btnCancle', function(e) {
		e.preventDefault();
		$('#uid').val('');
		$('#name').val('');
		$('#pwd1').val('');
		$('#pwd2').val('');
		$('#email').val('');
		//location.href="${pageContext.request.contextPath}/home";
	});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<article>
		<div class="container col-md-6" role="main">
			<div class="card">
				<div class="card-header">Signup Form</div>
				<div class="card-body">
					<form:form name="form" id="form" class="form-signup" role="form"
						modelAttribute="userVO" method="post"
						action="${pageContext.request.contextPath}/user/insertUser">


						<div class="form-group row">
							<label for="uid" class="col-md-3 col-form-label text-md-right">아이디</label>
							<div class="col-md-5">
								<form:input path="uid" id="uid" name="uid" class="form-control"
									placeholder="아이디을 입력해 주세요" />
								<div id="id-error" style="color: red;"></div>
							</div>
						</div>

						<div class="form-group row">
							<label for="pwd" class="col-md-3 col-form-label text-md-right">비밀번호</label>
							<div class="col-md-5">
								<form:password path="pwd" id="pwd" name="pwd"
									class="form-control" placeholder="비밀번호를 입력해 주세요" />
								<br>
								<div id="pwd-error" style="color: red;"></div>
							</div>
						</div>
						<div class="form-group row">
							<label for="re_pwd" class="col-md-3 col-form-label text-md-right">비밀번호
								확인</label>
							<div class="col-md-5">
								<%-- <form:password path="re_pwd" id="re_pwd" class="form-control"
									placeholder="비밀번호를 입력해 주세요" /> --%>

								<input name="pwd2" type="text" class="form-control" placeholder="비밀번호 확인">
							</div>
							
								<div id="pwd2-error" style="color: red;"></div>
						</div>

						<div class="form-group row">
							<label for="name" class="col-md-3 col-form-label text-md-right">이름</label>
							<div class="col-md-5">
								<form:input path="name" id="name" name="name"
									class="form-control" placeholder="이름을 입력해 주세요" />
							</div><div id="name-error" style="color: red;"></div>
						</div>

						<div class="form-group row">
							<label for="name" class="col-md-3 col-form-label text-md-right">생년월일</label>
							<div class="col-md-5">
								<form:input path="birth" id="birth" class="form-control"
									placeholder="생년월일을 입력해 주세요" />
							</div>
						</div>

						<div class="form-group row">
							<label for="name" class="col-md-3 col-form-label text-md-right">성별</label>
							<div class="col-md-5">
								<%-- <form:input path="gender" id="gender" name="gender" class="form-control"
									placeholder="성별을 입력해 주세요" /> --%>
								<label><form:radiobutton path="gender" name="gender"
										 value="남성" />남성</label> <label><form:radiobutton
										path="gender" name="gender2"  value="여성" />여성</label>
							</div><div id="gender-error" style="color: red;"></div>
							<div id="gender2-error" style="color: red;"></div>
						</div>

						<div class="form-group row">
							<label for="email" class="col-md-3 col-form-label text-md-right">이메일</label>
							<div class="input-group col-md-7">
								<div class="input-group-prepend">
									<span class="input-group-text">@</span>
								</div>
								<form:input path="email" id="email" class="form-control"
									placeholder="이메일을 입력해 주세요" />
							</div>
						</div>

						<div class="form-group row">
							<label for="name" class="col-md-3 col-form-label text-md-right">휴대전화번호</label>
							<div class="col-md-5">
								<form:input path="phone" id="phone" class="form-control"
									placeholder="휴대전화번호를 입력해 주세요" />
							</div>
						</div>

						<div style="margin-top: 10px">
							<button type="submit" class="btn btn-sm btn-primary"
								id="btnSignup">회원가입</button>

							<button type="button" class="btn btn-sm btn-primary"
								id="btnCancel" onclick="location.href='/login/login'">취소</button>
						</div>
					</form:form>

				</div>
			</div>
		</div>
	</article>


</body>
</html>