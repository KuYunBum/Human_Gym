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

				<div class="inputArea">
					가슴<input type="text" id="i1">
					어깨<input type="text" id="i2">
					등<input type="text" id="i3">
					팔<input type="text" id="i4">
					하체<input type="text" id="i5">
					복근<input type="text" id="i6">
				</div>
				<div id="resultAI"></div>
				<P class="ex_content_p1_2">운동한 SET의 수를 입력하세요.</P>
				<button class="randomBtn" type="button" onclick="startAI();">분석하기</button>
			</div>
		</div>
	</div>

	<%@include file="../../include/footer.jsp"%>