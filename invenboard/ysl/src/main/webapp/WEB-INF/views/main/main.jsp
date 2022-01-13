<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
<link rel="stylesheet" href="/resources/common/css/main/main.css"  />
<title>Insert title here</title>
<style type="text/css">

</style>


</head>
<body>

<div id="div_root">
 <div id="div_head"></div>
 <div id="div_head2"></div>
 <div id="div_topmenu">메인메뉴</div>
 
 
 
 
 <div id="div_left">
 <h2>
 <a href="https://black.inven.co.kr/" title="메인 페이지로 이동">검은사막 인벤</a>
 </h2>
 <div class="log-out">
        <p>로그인하고<br><span class="color">출석보상</span> 받으세요!</p>
        <a href="/login" onclick="login(); return false;" class="login-btn">
            로그인        </a>

                <div>
            <a href="/signupForm" onclick="return onclickHref(event, window.INVEN.Links.signIn);">회원가입</a>
            <a href="https://member.inven.co.kr/user/scorpio/find/info" onclick="return onclickHref(event, window.INVEN.Links.findIdPw);">ID/PW 찾기</a>
        </div>
            </div>
            <div class="search" id="__left-search">
    <form action="https://www.inven.co.kr/search" method="GET">
        <input type="text" name="keyword" placeholder="검은사막 인벤 통합검색">
        <button type="submit">검색</button>
    </form>
</div>

<div class="left-menu">
    
        <h3 class="" style="">검은사막 화제집중</h3>
    <ul class="list">
        <li class="firstMenuItem"><span><a href="https://www.inven.co.kr/webzine/news/?site=black">리포터 뉴스</a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4123"><span style="font-weight: bold;color: #FF0000;">실시간 유저뉴스</span><em class="hot1"></em></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4166"><span>이슈토론/의견 게시판</span><em class="hot1"></em></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4125">아이템 자랑하기</a></span></li><li><span><a href="https://www.inven.co.kr/board/black/5043"><span style="font-weight: bold;color: #FF8C00;"> └ 강화 후기 게시판</span></a></span></li><li><span><a href="http://black.inven.co.kr/community/cert/">관리자 인증 게시물</a></span></li><li><span><a href="https://www.inven.co.kr/board/black/3584">팁과 노하우</a></span></li><li><span><a href="https://www.inven.co.kr/board/black/3584?category=지식"> └ 지식 정보 모음</a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4632"><span style="font-weight: bold;color: #2E8B57;">용병, 파티모집/쿠폰</span></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/5622"><span style="font-weight: bold;color: #FF56FE;">생활 종합 게시판</span></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4168">탈것 정보 공유 게시판</a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4144">제작 레시피/재료 공유</a></span></li><li class="lastMenuItem"><span><a href="https://www.inven.co.kr/board/black/4157">바란다/버그 제보</a></span></li>    </ul>
        <h3 class="" style="">미디어 게시판</h3>
    <ul class="list">
        <li class="firstMenuItem"><span><a href="https://www.inven.co.kr/board/black/3849"><span style="font-weight: bold;color: #1E90FF;">커스터마이징 자랑</span><em class="hot1"></em></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4133"> └ 소스 공유&amp;요청</a></span></li><li><span><a href="https://www.inven.co.kr/board/black/4165"><span style="font-weight: bold;color: #1E90FF;">의상 자랑&amp;염색 정보</span></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/5576"><span style="font-weight: bold;color: #DAA520;">음악 게시판</span><em class="new1"></em></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/3586">스크린샷 게시판</a></span></li><li><span><a href="https://black.inven.co.kr/dataninfo/video"><span style="font-weight: bold;color: #FFDEAD;">유튜브 모아보기</span></a></span></li><li><span><a href="https://www.inven.co.kr/board/black/3587">동영상 게시판</a></span></li><li class="lastMenuItem"><span><a href="https://www.inven.co.kr/board/black/3608">팬아트 갤러리</a></span></li>    </ul>




    
    <div class="banner-layout2">
                        <a href="https://www.kr.playblackdesert.com/Main/Index" target="_blank">
                   <!--  <img src="https://static.inven.co.kr/image_2011/black/renewal/banner/blackhome_159x48_1.jpg" alt="검은사막 공식홈페이지"> -->
                </a>
            </div>
</div>
 
 
 
 </div> <!-- div_left -->
 
 
 
 
 <div id="div_con"><font>내용</font></div>
 <div id="div_bottom">마무리</div>
</div>





</body>
</html>