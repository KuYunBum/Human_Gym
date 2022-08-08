<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_title">
				<p>운동 전 스트레칭</p>
				<button type="button">...</button><br>
			</div>
			<div class="ex_content_p3">
				<video muted autoplay loop>
					<source src="/project/resources/videos/test1.mp4" type="video/mp4">
				</video>
			</div>
			<div class="ex_content_p4">
				<table>
					<tr><td><p>다리 근육 스트레칭</p></td><td><p>&emsp;&emsp;0:00 / 5:00</p></td></tr>
					<tr><td><p>목 주변 근육 스트레칭</p></td><td><p>&emsp;&emsp;0:00 / 5:00</p></td></tr>
					<tr><td><p>트레드밀 러닝</p></td><td><p>&emsp;&emsp;0:00 / 10:00</p></td></tr>
				</table>
			</div>
			<div class="ex_content_p5">
				<a href="/project/content/ex_recomm/ex_recomm2?userNum=${userNum }"><img style="width:50px; height:50px;" 
					src="/project/resources/image/ex/skip_button.jpg"></a>
				<img style="width:50px; height:50px;" src="/project/resources/image/ex/play_button.jpg">
				<a href="/project/content/ex_recomm/ex_recomm4?userNum=${userNum }"><img style="width:50px; height:50px;"
					 src="/project/resources/image/ex/skip2_button.jpg"></a>
			</div>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>