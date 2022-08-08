<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h1>마이페이지</h1><br><br>
		
		<%@include file="../../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">

		<form role="form" method="post">
		
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
					<p style="text-align: right;">※ 24시를 기준으로 입력해 주세요</p>
					<table id='record_tb' border="1">
						<tr>
							<td><h4>운동 날짜</h4></td>
							<td><h4>시작 시간</h4></td>
							<td><h4>끝난 시간</h4></td>
						</tr>
						<tr>
							<td><input type="date" name='useDate' placeholder="0000-00-00"></td>
							<%-- <fmt:formatDate pattern="yyyy-MM-dd" value="${userRecordDTO.useDate}"/> --%>
							<td><input type="number" name='startHour' value="${recordDTO.startHour }">시
								<input type="number" name='startMinute' value="${recordDTO.startMinute }">분</td>
							<td><input type="number" name='endHour' value="${recordDTO.endHour }">시
								<input type="number" name='endMinute' value="${recordDTO.endMinute }">분</td>
						</tr>
					</table>				
				</div>
			</div>
		</div>
	</form>
		
		<hr style="width: 1300px; margin:auto;"><br>
				
		<div class="bt_box">
			<button id="btn1" type="submit" class="bt_save">수정완료</button>
			<button id="btn1" type="button" onclick="location.href='/project/user/record/record?userNum=${userNum}'">뒤로</button>
		</div>
		
	</div>
	
	<%@include file="../../include/footer.jsp"%>
	
				