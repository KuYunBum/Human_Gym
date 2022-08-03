<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_p1">
				<p class=ex_content_p1_1>● <%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %>의 정보와 신체 정보를 분석 중입니다.</p><br>
				<p class=ex_content_p1_2>● 루틴 &amp; 운동 데이터를 읽고 있습니다.</p><br>
				<p class=ex_content_p1_3>● 운동 중량  &amp; 세트 데이터를 읽고 있습니다.</p><br><br>
				<p class=ex_content_p1_4>운동 추천 완료</p><br>
			</div>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>