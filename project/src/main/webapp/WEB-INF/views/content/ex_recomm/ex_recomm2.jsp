<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_title">
				<p>AI 추천 플랜</p>
				<button type="button" class="more_bt">...</button><br>
					<ul class="ex_sub">
						<li><a href="">Day 1   등 가슴 코어 유산소</a></li>
						<li><a href="">Day 2   하체 어깨 이두 삼두</a></li>
						<li><a href="">Day 3   등 가슴 코어 유산소</a></li>
						<li><a href="">Day 4   하체 어깨 이두 삼두</a></li>
					</ul>
				<p>Day 1   등 가슴 코어 유산소</p>
				<p>55분</p>
			</div>
			<div class="ex_content_p2">
				<div class="container">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
							<li data-target="#myCarousel" data-slide-to="4"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img src="/project/resources/image/ex/health_2.jpg">
							</div>
							<div class="item">
								<img src="/project/resources/image/ex/health_3.jpg">
							</div>
							<div class="item">
								<img src="/project/resources/image/ex/health_4.jpg">
							</div>
							<div class="item">
								<img src="/project/resources/image/ex/health_5.jpg">
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
<!-- 				<div class=ex_content_p2_1> -->
<!-- 					<img src="/project/resources/image/ex/health_2.JPG"><br> -->
<!-- 				</div> -->
<!-- 				<div class=ex_content_p2_2> -->
<!-- 					<img src="/project/resources/image/ex/health_3.JPG"><br> -->
<!-- 				</div> -->
				<button onclick="location.href='/project/content/ex_recomm/ex_recomm3'">시작하기</button>
			</div>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>