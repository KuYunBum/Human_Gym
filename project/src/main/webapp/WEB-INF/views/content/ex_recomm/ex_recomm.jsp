<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@include file="../../include/header.jsp"%>

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_img">
				<img src="/project/resources/image/ex/health_1.jpg">
			</div>
			<h1>AI 추천 운동</h1>
			<br>
			<p>
			<%
				if(session.getAttribute("user")==null){
			%>	  
				사용자의
			<%
				}else{
					out.print(String.valueOf(session.getAttribute("user"))+" 님의"); 
				}
			%>					
				신체 및 인바디 데이터,<br> 운동 데이터 분석을 통한 맞춤 운동
			</p><br>
				<button class="ex_content_bt" type="button" onclick="self.location='ex_recomm_start?userNum=${userNum}'">시작하기</button>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>