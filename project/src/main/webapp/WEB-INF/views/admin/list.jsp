<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>

	<div class="main">
		<h1>회원 목록</h1><br><br>
		<table id='customers' border="1">
			<tr>
				<th style="width: 80px">회원번호</th>
				<th style="width: 100px">아이디</th>
				<th style="width: 100px">비밀번호</th>
				<th style="width: 150px">이름</th>
				<th style="width: 80px">성별</th>
				<th style="width: 200px">생년월일</th>
				<th style="width: 250px">전화번호</th>
				<th style="width: 250px">이메일</th>
			</tr>
	
			<c:forEach items="${list}" var="userDTO">
				<tr>
					<td>${userDTO.userNum}</td>
					<td>${userDTO.userID}</td>
					<td>${userDTO.userPW}</td>
					<td><a href='/project/admin/detail?userNum=${userDTO.userNum}'>${userDTO.userName}</a></td>
					<td>${userDTO.userGender}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${userDTO.userBirth}" /></td>
					<td>${userDTO.userPhone}</td>
					<td>${userDTO.userEmail}</td>
				</tr>
			</c:forEach>
		</table>
		<br>
<!-- 		<div class="bt_box">
		<button class="user_insert">회원 추가</button>
		</div><br> -->
	</div>

	<%@include file="../include/footer.jsp"%>
