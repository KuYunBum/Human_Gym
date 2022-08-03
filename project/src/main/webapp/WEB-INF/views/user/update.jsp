<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>내용 수정</h1><br><br>
		
		<%@include file="../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">
		
		<form role="form" method="post">
			<div class="myPageNav2">
				<div class="leftContainer" >
					<h3>프로필 사진</h3>
					<div class="profillePhoto">
						<img src="/project/resources/image/arnold.jpeg" >
						<br />
<!-- 						이미지 업로드 :<input type="file"> -->
					</div>
				</div>
			
				<div class="heightLine"></div>
					<div class="rightContainer" >
						<div class="rcText" >
						
							<div class="ab3p">
								<div class="ab3q"><h4>회원번호</h4></div>
									<div class="ab3t">${userDTO.userNum}</div>
									<span style="font-size: 15px; display:block;margin-left:20px;"> * 수정할 수 없습니다.</span>
								</div><br><br>
									<div class="ab3p">
										<div class="ab3q"><h4>아이디</h4></div>
										<div class="ab3t">${userDTO.userID}</div>
										<span style="font-size: 15px; display:block;margin-left:20px;"> * 수정할 수 없습니다.</span>	
									</div><br><br>
									<div class="ab3p">
										<div class="ab3q"><h4>비밀번호</h4></div>
										<input class="ab3t"  type="text" name="userPW" value="${userDTO.userPW}">
									</div><br><br>
									<div class="ab3p">
										<div class="ab3q"><h4>이름</h4></div>
										<input class="ab3t" type="text" name="userName" value="${userDTO.userName}">
									</div><br><br>
									<div class="ab3p">
										<div class="ab3q"><h4>성별</h4></div>
										<input class="ab3t" type="text" name="userGender" value="${userDTO.userGender}">
									</div><br><br>
									<div class="ab3p">
										<div class="ab3q"><h4>생년월일</h4></div>
										<input class="ab3t" type="text" name="userBirth" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${userDTO.userBirth}"/>">
									</div><br><br>										<div class="ab3p">
										<div class="ab3q"><h4>전화번호</h4></div>
										<input class="ab3t" type="text" name="userPhone" value="${userDTO.userPhone}">
									</div><br><br>
									<div class="ab3p">
										<div class="ab3q"><h4>이메일</h4></div>
										<input class="ab3t" type="text" name="userEmail" value="${userDTO.userEmail}">
									</div><br><br>
						</div>
					</div>
				</div>
		</form>
		
		<hr style="width: 1300px; margin:auto;">
		
		<div class="bt_box">
			<button type="submit" class="bt_save">저장</button>
			<button onclick="location.href='/project/user/myPage?userNum=${userDTO.userNum }'">취소</button>
		</div>
		
	</div>
	
	<%@include file="../include/footer.jsp"%>