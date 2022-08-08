<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<%@include file="../../include/header.jsp"%>

<div class="main">
	<h1>내 루틴 커스텀</h1>
	<br>
	<br>
	<%@include file="../../include/myPageNav.jsp"%>
	<hr style="width: 1300px; margin: auto;">

	<div class="myPageNav3">
		<div class="rcText" style="margin: 120px auto;">
			<form role="form" method="post">
				<input type="hidden" name="userNum" value="${routineDTO.userNum }">
			</form>
			<table id="customers" style="width: 1000px;">
				<tr>
					<th>Routine Number</th>
					<th>Routine Name</th>
					<th>Selected Exercise</th>
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
	<button id="myBtn1" type="submit" class="routine_delete">삭제</button>
	<button id="myBtn1" type="button"
		onclick="location.href='/project/user/routine/routineBox?userNum=${userNum}'">뒤로</button>
</div>
</div>
<%@include file="../../include/footer.jsp"%>