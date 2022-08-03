<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h1>인바디 입력</h1><br><br>
		
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
									
					<div class="ab3p">
						<div class="ab3q"><h4>성별</h4></div>
						<input class="ab3t" type="text" name='userGender' value="${userDTO.userGender}">
						
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>키</h4></div>
						<input class="ab3t"  type="text" name='height' placeholder="내용 입력">
					</div><br><br>
					
					<div class="ab3p">
						<div class="ab3q"><h4>몸무게</h4></div>
						<input  class="ab3t" type="text" name='weight' placeholder="내용 입력">
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>골격근량</h4></div>
						<input class="ab3t"  type="text" name='skeletalMuscleMass' placeholder="내용 입력">
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체지방량</h4></div>
						<input class="ab3t"  type="text" name='bodyFatMass' placeholder="내용 입력">
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체수분</h4></div>
						<input class="ab3t"  type="text" name='bodyWater' placeholder="내용 입력">
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>단백질</h4></div>
						<input class="ab3t"  type="text" name='protein' placeholder="내용 입력">
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>근육량</h4></div>
						<input class="ab3t"  type="text" name='muscleMass' placeholder="내용 입력">
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>제지방량</h4></div>
						<input class="ab3t"  type="text" name='leanBodyMass' placeholder="내용 입력"	>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>무기질</h4></div>
						<input class="ab3t"  type="text" name='minerals' placeholder="내용 입력">
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체질량지수(BMI)</h4></div>
						<input class="ab3t"  type="text" name='BMI' placeholder="내용 입력" >
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>복부지방률</h4></div>
						<input class="ab3t"  type="text" name='waistHipRatio' placeholder="내용 입력" >
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>기초대사량(BMR)</h4></div>
						<input class="ab3t"  type="text" name='BMR' placeholder="내용 입력" >
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체형</h4></div>
						<input class="ab3t"  type="text" name='bodyShape' placeholder="내용 입력" >
					</div><br><br>
				</div>
			</div>
		</div>
		
		</form>
			<hr style="width: 1300px; margin:auto;">
			
		<div class="bt_box">
			<button type="submit" class="bt_save">저장</button>
			<button type="button" onclick="location.href='/project/user/inbody/detail?userNum=${userNum}'">뒤로</button>
		</div>
	</div>
	
	<%@include file="../../include/footer.jsp"%>