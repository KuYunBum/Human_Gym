<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h1>마이페이지</h1><br><br>
		
		<%@include file="../../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">

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
						<div class="ab3t"><fmt:formatDate pattern="yyyy-MM-dd"
							value="${inbodyDTO.inbodyDate}" /></div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>성별</h4></div>
						<div class="ab3t">${inbodyDTO.userGender}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>키</h4></div>
						<div class="ab3t">${inbodyDTO.height}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>몸무게</h4></div>
						<div class="ab3t">${inbodyDTO.weight}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>골격근량</h4></div>
						<div class="ab3t">${inbodyDTO.skeletalMuscleMass}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체지방량</h4></div>
						<div class="ab3t">${inbodyDTO.bodyFatMass}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체수분</h4></div>
						<div class="ab3t">${inbodyDTO.bodyWater}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>단백질</h4></div>
						<div class="ab3t">${inbodyDTO.protein}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>근육량</h4></div>
						<div class="ab3t">${inbodyDTO.muscleMass}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>제지방량</h4></div>
						<div class="ab3t">${inbodyDTO.leanBodyMass}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>무기질</h4></div>
						<div class="ab3t">${inbodyDTO.minerals}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체질량지수(BMI)</h4></div>
						<div class="ab3t">${inbodyDTO.BMI}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>복부지방률</h4></div>
						<div class="ab3t">${inbodyDTO.waistHipRatio}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>기초대사량(BMR)</h4></div>
						<div class="ab3t">${inbodyDTO.BMR}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체형</h4></div>
						<div class="ab3t">${inbodyDTO.bodyShape}</div>
					</div><br><br>
				</div>
			</div>
		</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
				
		<div class="bt_box">
			<button type="submit" class="inbody_insert">입력</button>
			<button type="button" class="inbody_update">수정</button>
			<button onclick="location.href='/project/user/myPage'">뒤로</button>
		</div>
		
	</div>
	
	<%@include file="../../include/footer.jsp"%>