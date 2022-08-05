<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_img">
				<img src="/project/resources/image/ex/health_1.jpg">
			</div>
			<h1>AI 추천 플랜</h1>
			<br>
			<p>
				사용자의 정보 신체 조건운동,<br> 장소 등을 고려한 맞춤 운동
			</p><br>
				<button class="ex_content_bt" type="button" onclick="location.href='/project/content/ex_recomm/ex_recomm_start'">시작하기</button>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>