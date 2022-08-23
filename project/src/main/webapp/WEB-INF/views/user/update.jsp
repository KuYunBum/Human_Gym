<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<div class="main">
	<h2 style="
	font-family: 'Lato', sans-serif;">
	Modify Information</h2>
	<br>
	<br>

	<%@include file="../include/myPageNav.jsp"%>

	<hr style="width: 1300px; margin: auto;">

	<form role="form" method="post">
		<div class="myPageNav2">
			<div class="leftContainer">
				<h3>프로필 사진</h3>
				<div class="profillePhoto">
					<img src="/project/resources/image/arnold.jpeg"> <br />
					<!-- 						이미지 업로드 :<input type="file"> -->
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
							<td>${userDTO.userNum} <span style="font-size: 15px; margin-left: 20px;"> * 수정할 수 없습니다.</span></td>

						</tr>
						<tr>
							<th scope="row"><h4>아이디</h4></th>
							<td>${userDTO.userID} <span style="font-size: 15px; margin-left: 20px;"> * 수정할 수 없습니다.</span>
							</td>

						</tr>
						<tr>
							<th scope="row"><h4>비밀번호</h4></th>
							<td><input class="ab3t" type="text" name="userPW"
								value="${userDTO.userPW}"></td>
						</tr>
						<tr>
							<th scope="row"><h4>이름</h4></th>
							<td><input class="ab3t" type="text" name="userName"
								value="${userDTO.userName}"></td>
						</tr>
						<tr>
							<th scope="row"><h4>성별</h4></th>
							<td><input class="ab3t" type="text" name="userGender"
								value="${userDTO.userGender}"></td>
						</tr>
						<tr>
							<th scope="row"><h4>생년월일</h4></th>
							<td><input class="ab3t" type="text" name="userBirth"
								value="<fmt:formatDate pattern="yyyy-MM-dd" value="${userDTO.userBirth}"/>"></td>
						</tr>
						<tr>
							<th scope="row"><h4>전화번호</h4></th>
							<td><input class="ab3t" type="text" name="userPhone"
								value="${userDTO.userPhone}"></td>
						</tr>
						<tr>
							<th scope="row"><h4>이메일</h4></th>
							<td><input class="ab3t" type="text" name="userEmail"
								value="${userDTO.userEmail}"></td>
						</tr>
					</table>
					<br><br>
				</div>
			</div>
		</div>
	</form>

	<hr style="width: 1300px; margin: auto;">
	<br>

	<div class="bt_box">
		<button id="myBtn1" type="submit" class="bt_save">저장</button>
		<button id="myBtn1"
			onclick="location.href='/project/user/myPage?userNum=${userDTO.userNum }'">취소</button>
	</div>

</div>

<%@include file="../include/footer.jsp"%>