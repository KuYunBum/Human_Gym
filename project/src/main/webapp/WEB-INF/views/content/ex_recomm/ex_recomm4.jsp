<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_title">
				<p>AI 추천 플랜</p>
				<button type="button" class="more_bt">...</button><br>
					<ul class="ex_sub">
						<li><button id="day1">Day 1   등 가슴 코어 유산소</button></li>
						<li><button id="day2">Day 2   하체 어깨 이두 삼두</button></li>
						<li><button id="day3">Day 3   등 가슴 코어 유산소</button></li>
						<li><button id="day4">Day 4   하체 어깨 이두 삼두</button></li>
					</ul>
				<p>Day 1   등 가슴 코어 유산소</p>
				<p>55분</p>
			</div>
			<div class="ex_content_p6">
				<div class="container">
					<div id="myCarousel" class="carousel slide" >
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img src="/project/resources/image/ex/p3.jpg">
							</div>
							<div class="item">
								<img src="/project/resources/image/ex/p4.jpg">
							</div>
							<div class="item">
								<img src="/project/resources/image/ex/p5.jpg">
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
			</div>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>