<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<div class="re_tr"><h2><%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %>의 추천 트레이너</h2></div>
	
		<div class="re_tr_box">
			<div class="re_trainer">
				<img src="/project/resources/image/kimegg.png" style="width: 390px;height: 400px;">
						<br><br><h2>Kim Egg</h2>
						<div class="trainer_info"><br>
							<p>3대 600</p>
							<p>300만 구독자를 보유한</p>
							<p>대한민국 최고의 헬스 유튜버</p>
							<p>대한민국 UDT/SEAL 전역</p>
							
							<input type="button" class="retr_btn" value="상담하기">
						</div>
			</div>
		</div>
		
		<div class="other_tr"><h2>다른 트레이너 알아보기 🔍</h2></div>	
		
		<div class="trainer">
			<div class="trainer_1">
				<img src="/project/resources/image/arnold.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>arnold</h2>
				<div class="trainer_info"><br>
					<p>1967 미스터유니버스 우승</p>
					<p>1968 미스터유니버스 우승</p>
					<p>1969 미스터유니버스 우승</p>
					<p>1970 미스터올림피아 우승</p>
					<input type="button" class="tr_btn" value="상담하기">
				</div>
			</div>	
			<div class="trainer_2">
				<img src="/project/resources/image/bigRamy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>bigRamy</h2>
				<div class="trainer_info"><br>
					<p>2017 아놀드 클래식 유럽 – 1위</p>
					<p>2018 미스터 올림피아 – 6위</p>
					<p>2020 아놀드 클래식 오하이오 – 3위</p>
					<p>2020 미스터 올림피아 – 1위</p>
					<input type="button" class="tr_btn" value="상담하기">
				</div>
			</div>	
			<div class="trainer_3">
				<img src="/project/resources/image/Billy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Billy</h2>
				<div class="trainer_info"><br>
					<p>2015 미스터 올림피아 - 5위</p>
					<p>2016 아놀드 클래식 유럽 – 3위</p>
					<p>2017 미스터 올림피아 – 3위</p>
					<p>2018 아놀드 클래식 오하이오 – 2위</p>
					<input type="button" class="tr_btn" value="상담하기">
				</div>
			</div>	
			<div class="trainer_4">
				<img src="/project/resources/image/ronnieWidth.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>ronnie</h2>
				<div class="trainer_info"><br>
					<p>2007 미스터 올림피아 - 4위</p>
					<p>2006 미스터 올림피아 - 2위</p>
					<p>2005 미스터 올림피아 - 1위</p>
					<p>2004 미스터 올림피아 - 1위</p>
					<input type="button" class="tr_btn" value="상담하기">
				</div>
			</div>	
		</div>
	</div>


	<%@include file="../include/footer.jsp"%>