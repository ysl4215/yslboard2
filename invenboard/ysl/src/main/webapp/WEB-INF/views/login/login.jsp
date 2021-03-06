<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
<link rel="stylesheet" href="/resources/common/css/login/login.css"  />
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<title>Insert title here</title>
</head>
<body>

<div class="headline">
		<a href="/main"><input type="image" src="/resources/common/img/flyLogo.png" height="100%"></a>
</div>

<div class="mobileLogin">	
<form method="post" id="form">
	<div class="login" >
	<input value="" class="id"  type="text" title="아이디 입력" value="" maxlength="50" id="id" name="id" placeholder="아이디"><br>
		<%-- <input value="${cookie.user_check.value}" class="id" style="width: 450px;height: 40px" type="text" title="아이디 입력" value="" maxlength="50" id="id" name="id" placeholder="아이디"><br> --%>
		<input class="pw"  type="password" title="비밀번호 입력" value="" id="pw" name="pw" placeholder="비밀번호"> 
	</div>
	<div>
		<button style="width: 450px"  onclick="loginBtn()" class="btn btn-lg btn-primary">로그인</button>
	</div>
</form>	
		
	<div>
		<label><input type="checkbox" onchange="autoLogin()" id="autoLogin" >로그인 상태 유지</label>
		<label><input type="checkbox" onchange="idSave()" id="idSave"  />아이디 저장</label>
	</div>
	<div class="otherLogin">
		<span><button class="btn btn-default">Naver 로그인</button></span>
		<span><button class="btn btn-primary">Kakao 로그인</button></span>
		<span><button class="btn btn-success">Google 로그인</button></span><br>
		<span><button class="btn btn-info">Facebook 로그인</button></span>
		<span><button class="btn btn-warning">twitter 로그인</button></span>
		<span><button class="btn btn-danger">Apple 로그인</button></span>
	</div>
	<div class="userMenu">
		<a href="/signupForm">회원가입</a>
		<a href="https://member.inven.co.kr/user/aquarius/find/info" class="idpwFind">아이디/비밀번호 찾기</a>
	</div>
</div>




<script src="/resources/javascript/login/login.js"></script>
</body>
</html>