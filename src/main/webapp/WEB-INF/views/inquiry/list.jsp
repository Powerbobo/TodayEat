<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>오늘 뭐 먹지?</title>
        <link rel="stylesheet" href="/resources/css/index.css">
        <link rel="stylesheet" href="/resources/css/inquiry.css">
        <link rel="stylesheet" href="/resources/css/reset.css">

        
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
                            <li><a class="manu" href="#">메뉴표</a></li>
                            <li><a class="manu" href="#">서비스 지역</a></li>
                            <li><a class="manu" href="#">이벤트</a></li>
                            <li><a class="manu" href="/member/inquiry.do">문의하기</a></li>
                            <li><a class="manu" href="#">마이페이지</a></li>
                        </ul>
                    </nav>
                    <!-- 로그인/회원가입 -->
                    <div id="login">
                        <a href="/member/login.do">로그인</a><pre id="Space"> | </pre><a href="/member/join.do">회원가입</a></div>
                </div>
                <!-- 채팅 문의 -->
                <div class="aside">
                    <div id="chat">
                        <a href="#"><img class="img" src="/resources/images/chat.png" alt="문의"></a>
                    </div>
                </div>
            </header>

            <main>
	            <form action="/member/inquiryList.do" method="post">
	                <div id="inquiry">
	                    <!-- 문의 목록 -->
	                    <div id="list"><span>문의 목록</span></div>
	                    <!-- 문의 등록하기 -->
	                    <div><input id="submit" type="submit" name="register" value="1:1문의 등록하기"></div>
	                    <hr>
	                    <div>
	                        <table>
	                            <tr>
	                                <th class="list-layer">번호</th>
	                                <th class="list-layer">문의 날짜</th>
	                                <th class="list-layer">제목</th>
	                                <th class="list-layer">답변 여부</th>
	                            </tr>
	                            <tr>
	                                <td class="number">10</td>
	                                <td class="date">2023-05-30</td>
	                                <td class="title"><a href="#">안녕하세요</a></td>
	                                <td class="answer">미답변</td>
	                            </tr>
<!-- 	                            <tr> -->
<!-- 	                                <td class="number">9</td> -->
<!-- 	                                <td class="date">2023-05-21</td> -->
<!-- 	                                <td class="title"><a href="#">이벤트 안하시나요</a></td> -->
<!-- 	                                <td class="answer">답변 완료</td> -->
<!-- 	                            </tr> -->
<!-- 	                            <tr> -->
<!-- 	                                <td class="number">8</td> -->
<!-- 	                                <td class="date">2023-05-20</td> -->
<!-- 	                                <td class="title"><a href="#">저희 회사로 배달이 될까요?</a></td> -->
<!-- 	                                <td class="answer">답변 완료</td> -->
<!-- 	                            </tr> -->
<!-- 	                            <tr> -->
<!-- 	                                <td class="number">7</td> -->
<!-- 	                                <td class="date">2023-05-15</td> -->
<!-- 	                                <td class="title"><a href="#">어떻게 해야하나요</a></td> -->
<!-- 	                                <td class="answer">답변 완료</td> -->
<!-- 	                            </tr> -->
<!-- 	                            <tr> -->
<!-- 	                                <td class="number">6</td> -->
<!-- 	                                <td class="date">2023-05-07</td> -->
<!-- 	                                <td class="title"><a href="#">메뉴 변경하고싶어요</a></td> -->
<!-- 	                                <td class="answer">답변 완료</td> -->
<!-- 	                            </tr> -->
<!-- 	                            <tr> -->
<!-- 	                                <td class="number">5</td> -->
<!-- 	                                <td class="date">2023-05-01</td> -->
<!-- 	                                <td class="title"><a href="#">주문 취소해주세요</a></td> -->
<!-- 	                                <td class="answer">답변 완료</td> -->
<!-- 	                            </tr> -->
	                        </table>
	                    </div>
	                    <!-- 목록 페이지 -->
	                    <a href="#"><div id="list-footer1"> 1 </div></a>
	                    <a href="#"><div id="list-footer2"> 2 </div></a>
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