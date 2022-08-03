<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>마이페이지</h1><br><br>
		
		<%@include file="../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">

		<div class="myPageNav2">
			<div class="leftContainer" >
				<h3>프로필 사진</h3>
				<div class="profillePhoto">
					<img src="/project/resources/image/arnold.jpeg" >
				</div>
			</div>
					
			<div class="heightLine" ></div>
				
			<div class="rightContainer" >
				<div class="rcText" >
				</div>
			</div>
		</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
				
		<div class="bt_box">
		
		</div>
		
	</div>

	<%@include file="../include/footer.jsp"%>