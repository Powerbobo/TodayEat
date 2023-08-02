<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
	<!-- head -->
	<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
    <body>
        <div id="container">
        <!-- header -->
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
	            <form action="/inquiry/list.do" method="post">
	                <div id="inquiry">
	                    <!-- 문의 목록 -->
	                    <div id="list"><span>문의 목록</span></div>
	                    <!-- 문의 등록하기 -->
	                    <div><input id="submit" type="submit" name="register" value="1:1문의 등록하기"></div>
	                    <hr>
	                    <div>
	                        <table>
	                        	<thead>
	                         	   <tr>
	                            	    <th class="list-layer">번호</th>
	                          	     <th class="list-layer">문의 날짜</th>
	                         	       <th class="list-layer">제목</th>
	                         	       <th class="list-layer">답변 여부</th>
	                       	     </tr>
	                    	    </thead>
	                    	    <tbody>
	                    	    	<c:forEach var="inquiry" items="${ iList }"></c:forEach>
	                        		<tr>
	                          		 	<td class="number">${ inquiry.inquiryNo }</td>
	                          		 	<td class="date">${ inquiry.inquiryDate }</td>
	                        			<td class="title"><a href="/inquiry/detail.do?noticeNo=${ notice.noticeNO }">${ notice.noticeSubject }</a></td>
	                       				<td class="answer">${ inquiry.inquiryYN }</td>
	                          		</tr>
	                        	</tbody>
	                        </table>
	                    </div>
	                    <!-- 목록 페이지 -->
	                    <a href="#"><div id="list-footer1"> 1 </div></a>
	                    <a href="#"><div id="list-footer2"> 2 </div></a>
	                </div>
	            </form>
            </main>
			<!-- footer -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
    </body>
</html>