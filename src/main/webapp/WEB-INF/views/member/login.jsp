<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login</title>
        <link rel="stylesheet" href="../resources/CSS/index.css">
        <link rel="stylesheet" href="../resources/CSS/reset.css">
        <link rel="stylesheet" href="../resources/CSS/login.css">
    </head>
    <body>
        <div id="container">
            <header>
                <div id="header">
                    <!-- 쿠폰 -->
                    <div id="coupon">
                        <p id="header-coupon"><a href="#">지금 첫 주문하고, 5천원 할인 쿠폰 받기</a></p>
                    </div>
                    <!-- 로고 -->
                    <div id="logo">
                        <p class="header-logo"><a href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/index.html">오늘<span id="logo-layer"> 뭐 </span>먹지?</a></p>
                    </div>
                    <!-- 네비게이션 -->
                    <nav>
                        <ul>
                            <!-- 메뉴표 -->
                            <li><a class="manu" href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/survice/manu.html">메뉴표</a> </li>
                            <!-- 서비스 지역 -->
                            <li><a class="manu" href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/survice/service_area.html">서비스 지역</a> </li>
                            <!-- 이벤트 -->
                            <li><a class="manu" href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/survice/event.html">이벤트</a> </li>
                            <!-- 문의하기 -->
                            <li><a class="manu" href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/inquiry.html">문의하기</a> </li>
                            <!-- 마이페이지 -->
                            <li><a class="manu" href="#">마이페이지</a> </li>
                        </ul>
                    </nav>
                    <!-- 로그인/회원가입 -->
                    <div id="login">
                        <a href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/login.html">로그인</a><pre id="Space"> | </pre><a href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/join.html">회원가입</a></div>
                </div>
                <!-- 채팅 문의 -->
                <div class="aside">
                    <div id="chat">
                        <a href="#"><img class="img" src="../resources/images/chat.png" alt="문의"></a>
                    </div>
                </div>
            </header>

            <main>
	            <form action="/member/login.do" method="post">
	                <div class="login-wrapper">
	                    <!-- 로그인 문구 -->
	                    <h2>로그인</h2>
	                    <form action="" method="post" id="login-form">
	                        <!-- 아이디/비밀번호 입력창 -->
	                        <input type="text" name="userName" id="user-id" placeholder="아이디를 입력해주세요">
	                        <input type="password" name="userPassword" id="user-pw" placeholder="비밀번호를 입력해주세요">
	                        <!-- 자동 로그인 -->
	                        <label for="remember-check">
	                            <input type="checkbox" id="remember-check"><span>아이디 저장하기</span>
	                        </label>
	                        <!-- 아이디찾기 / 비밀번호 찾기 -->
	                        <p id="find"><a href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/find_id_phone.html">아이디찾기</a>|<a href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/find_pw_phone.html">비밀번호 찾기</a></p>
	                        <!-- 로그인 버튼 -->
	                        <input type="submit" value="로그인">
	                    </form>
	                    <hr>
	                    <div id="sns-login">
	                        <input id="goole-login" type="submit" value="Google 로그인"><br>
	                        <input id="naver-login" type="submit" value="Naver 로그인"><br>
	                        <input id="kakao-login" type="submit" value="Kakao 로그인">
	                    </div>
	                </div>
	            </form>
            </main>

            <footer>
                <div id="footer-layer1">
                    <!-- 고객센터 -->
                    <div class="service">
                        <h2 id="service-layer1">고객센터 : 1588-1588</h2>
                        <p id="service-layer2"><small>고객센터 운영시간 : 평일 10:00 ~ 16:00</small></p>
                    </div>
                    <!-- 회사 정보 -->
                    <div class="info">
                        <p><span>회사명 : 오늘 뭐 먹지</span></p>
                        <p>본사주소 : 서울시</p>
                        <p>물류 : 경기도</p>
                        <p>대표 : 김이름</p>
                        <p>사업자등록번호 : 000-00-00000</p>
                        <p>통신판매업신고 : 0000-서울종로-0000호</p>
                        <p>이메일 : email@email.com</p>
                    </div>
                </div>
                <div id="footer-layer2">
                    <!-- 약관 -->
                    <div id="report">
                        <ul class="report-layer">
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li id="secret-info"><a href="#">개인정보처리방침</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>
    </body>
</html>