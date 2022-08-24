<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>

<div class="main">
	<h2 style="
	font-family: 'Lato', sans-serif;">
	My page</h2>
	<br>
	<br>

	<%@include file="../include/myPageNav.jsp"%>

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
				<div class="myPageTest-title">
					<h2>
						<%
							out.print(String.valueOf(session.getAttribute("user")) + " 님");
						%>은 [VIP] 등급입니다.
					</h2>
				</div>

				<table border="1" class="tableTest">
					<tr>
						<th scope="row"><h4>회원번호</h4></th>
						<td>${userDTO.userNum}</td>
					</tr>
					<tr>
						<th scope="row"><h4>아이디</h4></th>
						<td>${userDTO.userID}</td>
					</tr>
					<tr>
						<th scope="row"><h4>비밀번호</h4></th>
						<td>${userDTO.userPW}</td>
					</tr>
					<tr>
						<th scope="row"><h4>이름</h4></th>
						<td>${userDTO.userName}</td>
					</tr>
					<tr>
						<th scope="row"><h4>성별</h4></th>
						<td>${userDTO.userGender}</td>
					</tr>
					<tr>
						<th scope="row"><h4>생년월일</h4></th>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${userDTO.userBirth}" /></td>
					</tr>
					<tr>
						<th scope="row"><h4>전화번호</h4></th>
						<td>${userDTO.userPhone}</td>
					</tr>
					<tr>
						<th scope="row"><h4>이메일</h4></th>
						<td>${userDTO.userEmail}</td>
					</tr>
				</table>
			<br><br>
			</div>
		</div>
	</div>

	<hr style="width: 1300px; margin: auto;">
	<br>

	<div class="bt_box">
		<button id="myBtn1" type="submit" class="user_update">수정</button>
		<button id="myBtn1" onclick="location.href='/project/'">홈</button>
		<button id="myBtn1" type="button" class="user_delete">회원탈퇴</button>
	</div>

</div>

<%@include file="../include/footer.jsp"%>