<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>내용 수정</h1>
		<form role="form" method="post">
			<table id='customers' border="1" style="width: 500px;">
				<tr>
					<th>회원번호</th>
				</tr>
				<tr>
					<td>${userDTO.userNum}</td>
				</tr>
				<tr>
					<th>아이디</th>
				</tr>
				<tr>
					<td>${userDTO.userID}</td>
				</tr>
				<tr>
					<th>비밀번호</th>
				</tr>
				<tr>
					<td ><input style="width:80%" type="text" name="userPW" value="${userDTO.userPW}"></td>
				</tr>
				<tr>
					<th>이름</th>
				</tr>
				<tr>
					<td><input style="width:80%" type="text" name="userName" value="${userDTO.userName}"></td>
				</tr>
				<tr>
					<th>성별</th>
				</tr>
				<tr>
					<td><input style="width:80%" type="text" name="userGender" value="${userDTO.userGender}"></td>
				</tr>
				<tr>
					<th>생년월일</th>
				</tr>
				<tr>
					<td><input style="width:80%" type="text" name="userBirth" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${userDTO.userBirth}"/>"></td>
				</tr>
				<tr>
					<th>전화번호</th>
				</tr>
				<tr>
					<td><input style="width:80%" type="text" name="userPhone" value="${userDTO.userPhone}"></td>
				</tr>
				<tr>
					<th>이메일</th>
				</tr>
				<tr>
					<td><input style="width:80%" type="text" name="userEmail" value="${userDTO.userEmail}"></td>
				</tr>
			</table>
		</form>
		<div class="bt_box">
			<button type="submit" class="bt_save">저장</button>
			<button type="submit" class="admin_list">목록</button>
		</div>
	</div>
	
	<%@include file="../include/footer.jsp"%>