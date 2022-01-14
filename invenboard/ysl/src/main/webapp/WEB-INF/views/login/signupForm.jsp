<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.11.3.js"></script>
<link rel="stylesheet" href="/resources/common/css/login/signupForm.css"  />

<title>Insert title here</title>
</head>
    <body>
        <!-- header -->
        <div id="header">
            <a href="http://localhost:8080/login" 
             title="로그인 페이지">
             <img src="/resources/common/img/flyLogo.png" id="logo">
             </a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">
			<form method="post" id="form" action="/signupForm">
                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" name="id" id="id" class="int" maxlength="20">
                        <span class="step_url">@naver.com</span>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pw">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" name="pw" id="pw" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                    <!-- <img src="" id="pw_img1" class="pswdImg"> -->
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pw2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pw2" class="int" maxlength="20">
                   <!--  <img src="" id="pw2_img1" class="pswdImg">  -->
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" name="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" name="yy" id="yy" class="int" maxlength="4" 
                                placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" name="mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" name="dd" id="dd" class="int" maxlength="2" 
                                placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" name="gender" class="sel">
                            <option value="">성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3><span class="box int_email">
                        <input type="text" id="email" name="email" class="int" maxlength="100" 
                        placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- phone -->
                <div>
                    <h3 class="join_title"><label for="phone">휴대전화</label></h3>
                    <span class="box int_phone">
                        <input type="tel" id="phone" name="phone" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin" onclick="join()">
                        <span>가입하기</span>
                    </button>
                </div>
        
			</form>
            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
<script src="/resources/javascript/login/signupForm.js"></script>
    </body>
</html>