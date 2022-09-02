<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../../include/header.jsp"%>

<div class="main">
		<h2 style="
		font-family: 'Lato', sans-serif;">
		Exercise Record</h2>
		<br><br>
	<%@include file="../../include/myPageNav.jsp"%>

	<hr style="width: 1300px; margin: auto;">

	<div class="myPageNav2">
		<div class="leftContainer">
			<h3>프로필 사진</h3>
			<div class="profillePhoto">
				<img src="/project/resources/image/arnold.jpeg">
			</div>
		</div>

		<div class="heightLine"></div>

		<div class="rightContainer">
			<div class="rcText">
			<p style="text-align: right;">※ <b style="color: #1E90FF"> 날짜</b>를 누르면 전체보기가 가능합니다.</p>
				<table id='customers' border="1" style="width: 60%;float: left;">
					<tr class="board_title">
						<th>운동 날짜</th>
						<th>운동 시간</th>
						<th>시작 시간</th>
						<th>끝난 시간</th>
					</tr>
					<c:forEach items="${Main}" var="RecordDTO">
						<tr>	
							<td style="padding:10px; font-size:20px"><a href="/project/user/record/listAll?userNum=${RecordDTO.userNum}&recordNum=${RecordDTO.recordNum}" 
								style="text-decoration:none;">
								<fmt:formatDate pattern="yyyy-MM-dd" value="${RecordDTO.useDate}" /></a></td>
							<td style="padding:20px; font-size:20px;">${RecordDTO.playTime}</td>
							<td style="padding:20px; font-size:20px;">${RecordDTO.startHour}시 ${RecordDTO.startMinute}분</td>
							<td style="padding:20px; font-size:20px;">${RecordDTO.endHour}시 ${RecordDTO.endMinute}분</td>
						</tr>
					</c:forEach>
				</table>
				<table id='customers' border="1" style="width:40%; float:left ">	
					<tr class="board_title">
						<th >운동 이름</th>
						<th >운동 횟수</th>					
					</tr>
					<c:forEach items="${exMain}" var="em">
						<tr>
							<td colspan="1" style="padding:10px; font-size:20px;">${em.exName}</td>
							<td colspan="1" style="padding:20px; font-size:20px;">${em.setCount}회</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

	<hr style="width: 1300px; margin: auto;">
	<br>

	<div class="bt_box">
		<button id="myBtn1" type="submit" class="inbody_insert">입력</button>
		<button id="myBtn1" onclick="location.href='/project/'">홈</button>
	</div>

</div>

<%@include file="../../include/footer.jsp"%>



