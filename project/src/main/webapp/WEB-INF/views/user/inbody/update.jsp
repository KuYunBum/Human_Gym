<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h1>인바디 수정</h1><br><br>
		
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
							<div class="ab3q"><h4>측정 날짜</h4></div>
							<div class="ab3t"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${inbodyDTO.inbodyDate}" /></div>
								<span style="font-size: 15px; display:block;margin-left:20px;"> * 수정할 수 없습니다.</span>
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>성별</h4></div>
							<div class="ab3t">${inbodyDTO.userGender}</div>
							<span style="font-size: 15px; display:block;margin-left:20px;"> * 수정할 수 없습니다.</span>
						</div><br><br>
						
						<div class="ab3p">
							<div class="ab3q"><h4>키</h4></div>
							<input class="ab3t"  type="text" name='height' value="${inbodyDTO.height}">
						</div><br><br>
						
						<div class="ab3p">
							<div class="ab3q"><h4>몸무게</h4></div>
							<input  class="ab3t" type="text" name='weight' value="${inbodyDTO.weight}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>골격근량</h4></div>
							<input class="ab3t"  type="text" name='skeletalMuscleMass'  value="${inbodyDTO.skeletalMuscleMass}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>체지방량</h4></div>
							<input class="ab3t"  type="text" name='bodyFatMass' value="${inbodyDTO.bodyFatMass}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>체수분</h4></div>
							<input class="ab3t"  type="text" name='bodyWater' value="${inbodyDTO.bodyWater}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>단백질</h4></div>
							<input class="ab3t"  type="text" name='protein' value="${inbodyDTO.protein}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>근육량</h4></div>
							<input class="ab3t"  type="text" name='muscleMass' value="${inbodyDTO.muscleMass}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>제지방량</h4></div>
							<input class="ab3t"  type="text" name='leanBodyMass' value="${inbodyDTO.leanBodyMass}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>무기질</h4></div>
							<input class="ab3t"  type="text" name='minerals' value="${inbodyDTO.minerals}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>체질량지수(BMI)</h4></div>
							<input class="ab3t"  type="text" name='BMI' value="${inbodyDTO.BMI}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>복부지방률</h4></div>
							<input class="ab3t"  type="text" name='waistHipRatio' value="${inbodyDTO.waistHipRatio}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>기초대사량(BMR)</h4></div>
							<input class="ab3t"  type="text" name='BMR' value="${inbodyDTO.BMR}">
						</div><br><br>
						<div class="ab3p">
							<div class="ab3q"><h4>체형</h4></div>
							<input class="ab3t"  type="text" name='bodyShape' value="${inbodyDTO.bodyShape}">
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