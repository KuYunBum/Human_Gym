<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<div class="re_tr"><img src="/project/resources/image/trainer/basicprofile.jpeg" style="width:60px;height:60px;border-radius:70%;"><h2><%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %></h2>의 추천 트레이너</div>
		
		<div class="re_tr_box">
			<div class="re_trainer">
				<img src="/project/resources/image/kimegg.jpeg" style="width: 390px;height: 400px;border-radius:70%;" >
						<br><br><h2><i>Kim Egg</i></h2>
						<div class="trainer_info"><br>
							<p><h4>💪 3대 600</h4></p>
							<p><h4>300만 구독자를 보유한</h4></p>
							<p><h4>대한민국 최고의 헬스 유튜버</h4></p>
							<p><h4>대한민국 UDT/SEAL 전역</h4></p>
							
							<button class="retr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
							
						</div>
			</div>
		</div>
		<div class="left_re_tr_box">
			<div class="another_trainer">
				<img src="/project/resources/image/trainer/random.jpg" style="width: 390px;height: 400px;border-radius:70%;" >
						<br><br><h2><i>Other Random Trainer</i></h2>
						<div class="trainer_info"><br>
							<br>
							<p><h4>휴먼헬스짐의 더 많은 트레이너들을 만나보세요!</h4></p>
							<br><br>
							<p>👇👇</p>
							
							<!-- test -->
							<button id="randomBtn" class="randomBtn" onclick="location=.trainer">다른 트레이너</button>
							
						</div>
			</div>
		</div>
		<div class="widthLine2"></div>
		<div class="other_tr"><h2></h2></div>	
		<div class="widthLine2"></div>
		<div class="trainer">
			<div id="trainer1" class="trainer_1">
				<img src="/project/resources/image/arnold.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Arnold</h2>
				<div class="trainer_info"><br>
					<p>1967 미스터유니버스 우승</p>
					<p>1968 미스터유니버스 우승</p>
					<p>1969 미스터유니버스 우승</p>
					<p>1970 미스터올림피아 우승</p>
					
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
			<div id="trainer2" class="trainer_2">
				<img src="/project/resources/image/bigRamy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>BigRamy</h2>
				<div class="trainer_info"><br>
					<p>2017 아놀드 클래식 유럽 – 1위</p>
					<p>2018 미스터 올림피아 – 6위</p>
					<p>2020 아놀드 클래식 오하이오 – 3위</p>
					<p>2020 미스터 올림피아 – 1위</p>
					
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
			<div id="trainer3" class="trainer_3">
				<img src="/project/resources/image/Billy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Billy</h2>
				<div class="trainer_info"><br>
					<p>2015 미스터 올림피아 - 5위</p>
					<p>2016 아놀드 클래식 유럽 – 3위</p>
					<p>2017 미스터 올림피아 – 3위</p>
					<p>2018 아놀드 클래식 오하이오 – 2위</p>
					
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
			<div id="trainer4" class="trainer_4">
				<img src="/project/resources/image/ronnieWidth.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Ronnie</h2>
				<div class="trainer_info"><br>
					<p>2007 미스터 올림피아 - 4위</p>
					<p>2006 미스터 올림피아 - 2위</p>
					<p>2005 미스터 올림피아 - 1위</p>
					<p>2004 미스터 올림피아 - 1위</p>
					
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
		</div>
	</div>


	<%@include file="../include/footer.jsp"%>