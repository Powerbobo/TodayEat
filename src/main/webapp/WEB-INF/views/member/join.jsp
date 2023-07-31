<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login</title>
        <link rel="stylesheet" href="/resources/css/index.css">
        <link rel="stylesheet" href="/resources/css/reset.css">
        <link rel="stylesheet" href="/resources/css/login.css">
        <link rel="stylesheet" href="/resources/css/join.css">
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
                <!-- 회원가입 -->
                <form action="/member/join.do" method="post">
	                <div class="join">
	                    <h2>회원가입</h2>
	                    <hr>
	                    <!-- 아이디 입력 -->
	                    <div class="join-info" id="join-id">
	                        <span>아이디 </span>
	                        <input class="joinInfo" type="text" name="" id="joinId" placeholder="아이디를 입력하세요.">
	                    </div>
	                    <!-- 비밀번호 입력 -->
	                    <div class="join-info" id="join-pw">
	                        <span>비밀번호 </span>
	                        <input class="joinInfo" type="password" name="" id="joinPw" placeholder="비밀번호를 입력하세요.">
	                    </div>
	                    <!-- 비밀번호 재입력 -->
	                    <div class="join-info" id="join-pwRe">
	                        <span>비밀번호확인 </span>
	                        <input class="joinInfo" type="password" name="" id="joinPwRe" placeholder="비밀번호를 한번 더 입력하세요.">
	                    </div>
	                    <!-- 이름 입력 -->
	                    <div class="join-info" id="join-name">
	                        <span>이름 </span>
	                        <input class="joinInfo" type="text" name="" id="joinName" placeholder="이름을 입력하세요.">
	                    </div>
	                    <!-- 전화번호 입력 -->
	                    <div class="join-info" id="join-phone">
	                        <span>휴대폰 </span>
	                        <input class="joinInfo" ype="text" name="" id="joinPhone" placeholder="전화번호를 입력하세요.">
	                    </div>
	                    <!-- 이메일 입력 -->
	                    <div class="join-info" id="join-email">
	                        <span>이메일 </span>
	                        <input class="joinInfo" type="text" name="" id="joinEmail" placeholder="이메일을 입력하세요.">
	                    </div>
	                    <!-- 주소 입력 -->
	                    <div class="join-info" id="join-addr">
	                        <span>주소 </span>
	                        <input class="joinInfo" type="text" name="" id="joinAddr" placeholder="주소를 입력하세요.">
	                    </div>
	                    <!-- 성별 선택 -->
	                    <div class="join-info" id="join-gen">
	                        <span>성별 </span>
	                        <input type="radio" name="gender" id="gender"> 
	                        <label for="genMen">남자</label>
	                        <input type="radio" name="gender" id="gender"> 
	                        <label for="genWom">여자</label>
	                    </div>
	                    <!-- 생년월일 입력 -->
	                    <div class="join-info" id="join-bir">
	                        <span>생일 </span>
	                        <input class="joinInfo" type="date" name="" id="joinBir">
	                    </div>
	                    <hr>
	                    <!-- 가입완료 버튼 -->
	                    <div class="join-info" id="join-end">
	                        <input type="submit" value="가입하기">
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