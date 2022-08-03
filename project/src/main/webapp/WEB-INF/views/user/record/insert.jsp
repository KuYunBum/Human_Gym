<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h1>마이페이지</h1><br><br>
		
		<%@include file="../../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">

		<div class="myPageNav2">
			<div class="leftContainer" >
				<h3>프로필 사진</h3>
				<div class="profillePhoto">
					<img src="/project/resources/image/arnold.jpeg" >
				</div>
			</div>
					
			<div class="heightLine" ></div>
				
			<div class="rightContainer" >
				<div class="rcText" >
					<table id='record_tb' border="1">
						<tr>
						<td><h4>운동 날짜</h4></td>
						<td><h4>운동 시간</h4></td>
						<td><h4>시작 시간</h4></td>
						<td><h4>끝난 시간</h4></td>
						</tr>
						<c:forEach items="${list}" var="userRecordDTO">
							<tr>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${userRecordDTO.useDate}"/></td>
								<td><fmt:formatDate pattern="hh:mm:ss" value="${userRecordDTO.totalTime}"/></td>
								<td><fmt:formatDate pattern="hh:mm:ss" value="${userRecordDTO.startTime}"/></td>
								<td><fmt:formatDate pattern="hh:mm:ss" value="${userRecordDTO.endTime}"/></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
				
		<div class="bt_box">
			<button type="submit" class="">입력</button>
			<button type="submit" class="">수정</button>
			<button onclick="location.href='/project/'">홈</button>
		</div>
		
	</div>
	
	<%@include file="../../include/footer.jsp"%>
	
				