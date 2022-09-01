<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="loader"></div>
			<div class="ex_content_p1">
				<p class="ex_content_p1_1">● <%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %>의 정보를 분석 중입니다.</p><br>
<!-- 				<p class=ex_content_p1_2>● 루틴 &amp; 운동 데이터를 읽고 있습니다.</p><br> -->
<!-- 				<p class=ex_content_p1_3>● 운동 중량  &amp; 세트 데이터를 읽고 있습니다.</p><br> -->
<!-- 				<p class=ex_content_p1_4>운동 추천 완료</p><br> -->

				<div class="inputArea">
					가슴<input type="checkbox" id="a" value="0">
					어깨<input type="checkbox" id="b" value="0">
					등<input type="checkbox" id="c" value="0">
					팔<input type="checkbox" id="d" value="0">
					하체<input type="checkbox" id="e" value="0">
					복근<input type="checkbox" id="f" value="0">
				</div>
				<div id="resultAI"></div>
				<P class="ex_content_p1_2">운동한 부위에 체크해주세요.</P>
				<button class="randomBtn" type="button" onclick="startAI();">분석하기</button>
			</div>
		</div>
	</div>

	<%@include file="../../include/footer.jsp"%>