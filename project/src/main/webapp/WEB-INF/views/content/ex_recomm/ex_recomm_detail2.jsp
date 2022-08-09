<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_title">
				<p>AI 추천 플랜</p>
				<button type="button" class="more_bt">...</button><br>
					<ul class="ex_sub">
						<li><button id="day1_2">Day 1   등 가슴 코어 유산소</button></li>
						<li><button id="day2_2">Day 2   하체 어깨 이두 삼두</button></li>
						<li><button id="day3_2">Day 3   등 가슴 코어 유산소</button></li>
						<li><button id="day4_2">Day 4   하체 어깨 이두 삼두</button></li>
					</ul>
				<p>하체 어깨 이두 삼두</p>
				<p>48분</p>
			</div>
			<div class="ex_content_p6">
				<div class="container">
					<div id="myCarousel" class="carousel slide" >
<!-- 						<ol class="carousel-indicators"> -->
<!-- 							<li data-target="#myCarousel" data-slide-to="0"></li> -->
<!-- 							<li data-target="#myCarousel" data-slide-to="1"></li> -->
<!-- 							<li data-target="#myCarousel" data-slide-to="2"></li> -->
<!-- 							<li data-target="#myCarousel" data-slide-to="3"></li> -->
<!-- 						</ol> -->
						<div class="carousel-inner">
								<div class="item active">
									<img src="/project/resources/image/ex/health_2.jpg"><br>
										<p>1. 바를 끝까지 내립니다.<br><br>
										2. 어깨 너비보다 약간 더 넓은 손과 오버 핸드 그립으로 바를 잡습니다.<br><br>
										3. 등을 똑바로 유지하고 무릎을 약간 구부린 다음<br> 
											체중을 몸쪽으로 당깁니다.<br><br>
										4. 천천히 무릎까지 낮추고 반복합니다.</p><br>
								</div>
								<div class="item">
									<img src="/project/resources/image/ex/health_6.jpg"><br>
										<p>1. 상체와 엉덩이를 머신에 밀착 고정합니다.<br><br>
											2. 발은 어깨너비 또는 조금 더 넓게 위치합니다.<br><br>
											3. 발꿈치에 힘을 주어 밀고 호흡을 내뱉는다.<br>
											   (무릎을 다펴지않아야한다 부상위험)<br><br>
											4. 신전될 때는 숨을 마시며 다리가 90도가  될 때 까지 구부립니다.</p><br>
								</div>
								<div class="item">
									<img src="/project/resources/image/ex/health_7.jpg"><br>
										<p>1. 다리를 벌리고 앉아 핸들을 잡고 패드에 등을 고정합니다.<br><br>
											2. 몸통이 흔들리지 않도록 코어<br>
												(복횡근, 횡경막근, 다열근, 골반저근)<br>
												힘을 주고 다리를 안쪽으로 모아줍니다.<br><br>
											3. 10~15회 반복 1세트 총 3~5세트 반복 진행합니다.</p><br>
								</div>
								<div class="item">
									<img src="/project/resources/image/ex/health_9.jpg"><br>
										<p>1. 자신 근력에 맞게 무게 추 조정합니다.<br><br>
											2. 롤패드에 발목을 고정시킵니다.<br><br>
											3. 기구와 몸을 밀착하고 손잡이를 잡습니다.<br><br>
											4. 허벅지에 힘을 주고 패드를 들어 올리며 숨을 뱉습니다.<br><br>
											5. 숨을 마시며 천천히 내려줍니다.</p><br>
								</div>
						</div>
						<a class="left carousel-control" href="#myCarousel" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>
				<button onclick="self.location='ex_recomm_stretching?userNum=${userNum}'">뒤로</button>
			</div>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>