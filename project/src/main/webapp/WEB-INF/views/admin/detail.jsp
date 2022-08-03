<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>상세 내용</h1>
 		<form role="form" method="post">
			<input type='hidden' name='userNum' value="${userDTO.userNum}">
		</form>
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
					<td>${userDTO.userPW}</td>
				</tr>
				<tr>
					<th>이름</th>
				</tr>
				<tr>
					<td>${userDTO.userName}</td>
				</tr>
				<tr>
					<th>성별</th>
				</tr>
				<tr>
					<td>${userDTO.userGender}</td>
				</tr>
				<tr>
					<th>생년월일</th>
				</tr>
				<tr>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${userDTO.userBirth}"/></td>
				</tr>
				<tr>
					<th>전화번호</th>
				</tr>
				<tr>
					<td>${userDTO.userPhone}</td>
				</tr>
				<tr>
					<th>이메일</th>
				</tr>
				<tr>
					<td>${userDTO.userEmail}</td>
				</tr>
			</table>
		<div class="bt_box">
			<button type="submit" class="admin_update">수정</button>
			<button type="submit" class="admin_delete">삭제</button>
			<button type="button" class="admin_list">목록</button>
		</div>
	</div>
	
	<%@include file="../include/footer.jsp"%>