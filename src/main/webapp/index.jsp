<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>오늘 뭐 먹지?</title>
		<link rel="stylesheet" href="/resources/css/index.css">
		<link rel="stylesheet" href="/resources/css/reset.css">
		<title>오늘 뭐 먹지?</title>
	</head>
	<body>
		<div id="container">
			<header>
				<div id="header">
					<!-- 쿠폰 -->
					<div id="coupon">
						<p id="header-coupon">
							<a href="#">지금 첫 주문하고, 5천원 할인 쿠폰 받기</a>
						</p>
					</div>
					<!-- 로고 -->
					<div id="logo">
						<p class="header-logo">
							<a href="http://127.0.0.1:9999/service/index.jsp">오늘<span id="logo-layer"> 뭐 </span>먹지? </a>
						</p>
					</div>
					<!-- 네비게이션 -->
					<nav>
						<ul>
							<!-- 메뉴표 -->
							<li>
								<a class="manu" href="http://127.0.0.1:9999/service/menu.jsp">메뉴표</a>
							</li>
							<!-- 서비스 지역 -->
							<li>
								<a class="manu" href="http://127.0.0.1:9999/service/service_area.jsp">서비스 지역</a>
							</li>
							<!-- 이벤트 -->
							<li>
								<a class="manu" href="http://127.0.0.1:9999/service/event.jsp">이벤트</a>
							</li>
							<!-- 문의하기 -->
							<li>
								<a class="manu" href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/inquiry.html">문의하기</a>
							</li>
							<!-- 마이페이지 -->
							<li>
								<a class="manu" href="#">마이페이지</a>
							</li>
						</ul>
					</nav>
					<!-- 로그인/회원가입 -->
					<div id="login">
						<a href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/login.html">로그인</a>
						<pre id="Space"> | </pre>
						<a href="http://127.0.0.1:5500/%EC%98%A4%EB%8A%98%20%EB%AD%90%20%EB%A8%B9%EC%A7%80/member/join.html">회원가입</a>
					</div>
				</div>
				<!-- 채팅 문의 -->
				<div class="aside">
					<div id="chat">
						<a href="#"><img class="img" src="/resources/images/chat.png" alt="문의"></a>
					</div>
				</div>
			</header>
	
			<main>
				<!-- 롤링 배너 -->
				<div id="main-banner">
					<div id="banner">
						<a href="#"><img src="./resources/images/banner1.png" alt="배너1" width="1903px"></a>
					</div>
				</div>
				<div id="banner-right">
					<a href="#"><img class="banner-icon" src="/resources/images/right.png" alt="배너 오른쪽 화살표"></a>
				</div>
				<div id="banner-left">
					<a href="#"><img class="banner-icon" src="/resources/images/left.png" alt="배너 오른쪽 화살표"></a>
				</div>
				<div id="main-why">
					<!--- 홍보 문구 --->
					<div class="why-layer1">
						<h1 class="main-text1">나가긴 귀찮고 가격은 비싸서</h1>
						<h1 class="main-text1">.</h1>
						<h1 class="main-text1">.</h1>
						<h1 class="main-text1">.</h1>
						<h1 class="main-text1"> 오늘 <span id="main-text-what">뭐</span> 먹지?</h1>
					</div>
					<div class="why-layer2">
						<p class="main-text2">매일 점심을 고민하는 직장인을 위해서!</p>
						<p class="main-text2">직장인의 최대 고민을</p>
						<p class="main-text2">해결해 드려요!</p>
					</div>
				</div>
				<div id="main-shipping">
					<img id="shipping-photo" src="/resources/images/free.png" alt="배달" width="600px">
					<div id="sipping-text">
						<p class="sipping-text-layer1">1인분도</p>
						<p class="sipping-text-layer1">무료배달</p>
					</div>
				</div>
				<!-- 리뷰 이벤트 -->
				<section id="review">
					<img id="review-back" src="/resources/images/review_banner.png" alt="리뷰배경">
				</section>
			</main>
	
			<footer>
				<div id="footer-layer1">
					<!-- 고객센터 -->
					<div class="service">
						<h2 id="service-layer1">고객센터 : 1588-1588</h2>
						<p id="service-layer2">
							<small>고객센터 운영시간 : 평일 10:00 ~ 16:00</small>
						</p>
					</div>
					<!-- 회사 정보 -->
					<div class="info">
						<p><span>회사명 : 오늘 뭐 먹지</span>
						</p>
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