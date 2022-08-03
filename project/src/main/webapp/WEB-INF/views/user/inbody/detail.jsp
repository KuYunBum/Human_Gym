<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
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
						<div class="ab3q"><h4>기초대사량(BMR)</h4></div>
						<div class="ab3t">${inbodyDTO.BMR}</div>
					</div><br><br>
					<div class="ab3p">
						<div class="ab3q"><h4>체형</h4></div>
						<div class="ab3t">${inbodyDTO.bodyShape}</div>
					</div><br><br>
					
					<div style="width: 1000px; height: auto;"><canvas id="bar-chart-horizontal" width="600" height="250"></canvas></div>
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
	
	<script>
    new Chart(document.getElementById("bar-chart-horizontal"), {
    type: 'horizontalBar',
    data: {
        labels: ['골격근량', '체지방률', 'BMI', '복부지방률'],
      datasets: [
        {
          label: "Population (millions)",
          data: [${inbodyDTO.skeletalMuscleMass},${inbodyDTO.bodyFatMass}, ${inbodyDTO.BMI}, ${inbodyDTO.waistHipRatio}],
          backgroundColor: [
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderColor: [
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
       
       
      }
    }
});
</script>
	<%@include file="../../include/footer.jsp"%>