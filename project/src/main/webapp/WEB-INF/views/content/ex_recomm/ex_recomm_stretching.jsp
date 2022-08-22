<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_title">
				<p>운동 전 스트레칭</p>
				<button type="button" class="more_bt">...</button><br>
					<ul class="ex_sub">
						<li><button id="stretching1">리클라이닝 트위스트</button></li>
						<li><button id="stretching2">차일드 포즈</button></li>
					</ul>
			</div>
			<div class="ex_content_p3">
				<div class="stretching_1">
					<video id='myVideo1'>
							<source src="/project/resources/videos/stretching1.mp4" type="video/mp4">
					</video>
				</div>
				<div class="stretching_2">
					<video id='myVideo2'>
							<source src="/project/resources/videos/stretching2.mp4" type="video/mp4">
					</video>
				</div>
			</div>
			<div class="ex_content_p4">
				<table>
					<tr class="stretching_1">
						<td><p>리클라이닝 트위스트</p></td>
						<td><p><span id="videoProgress1">0:0 / 0:0</span></p></td>
					</tr>
					<tr class="stretching_2">
						<td ><p>차일드 포즈</p></td>
						<td><p><span id="videoProgress2">0:0 / 0:0</span></p></td>
					</tr>
				</table>
			</div>
			<div class="ex_content_p5">
				<a href="/project/content/ex_recomm/ex_recomm_simple1?userNum=${userNum }">
				<img src="/project/resources/image/ex/skip_button.jpg"></a>
				<img src="/project/resources/image/ex/play_button.jpg" id="videoPlay">
				<img src="/project/resources/image/ex/pause_button.jpg" id="videoStop">
				<a href="/project/content/ex_recomm/ex_recomm_detail1?userNum=${userNum }">
					<img src="/project/resources/image/ex/skip2_button.jpg"></a>
			</div>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>