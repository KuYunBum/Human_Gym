<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

<div class="main">
	<h2 style="
		font-family: 'Lato', sans-serif;">
		My Routine</h2>
		<br><br>
	<%@include file="../../include/myPageNav.jsp"%>
	<hr style="width: 1300px; margin: auto;">

	<div class="myPageNav3">
		<div class="rcText" style="margin: 120px auto;">
			<form role="form" method="post">
				<input type="hidden" name="userNum" value="${routineDTO.userNum }">
			</form>
			<table id="customers" style="width: 1000px; color:black;">
				<tr class="board_title">
					<th>Routine Number</th>
					<th style="width:200px;">Routine Name</th>
		            <th style="width:700px;">Selected Exercise</th>
				</tr>

				<tr>
					<td>${list.routineNum}</td>
					<td>${list.routineName}</td>
					<td>${list.routineEx}</td>
				</tr>
			</table>

		</div>
	</div>
</div>

<hr style="width: 1300px; margin: auto;">
<br>

<div class="bt_box">

	<button id="myBtn1" type="button"
		onclick="location.href='/project/user/routine/update?routineNum=${list.routineNum}'">수정</button>
	<button id="myBtn1" type="submit" onclick="location.href='/project/user/routine/delete?userNum=${userNum}&routineNum=${list.routineNum}'">삭제</button>
	<button id="myBtn1" type="button"
		onclick="location.href='/project/user/routine/routineBox?userNum=${userNum}'">뒤로</button>
</div>
<%@include file="../../include/footer.jsp"%>