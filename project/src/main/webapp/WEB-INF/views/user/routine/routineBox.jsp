<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<%@include file="../../include/header.jsp"%>

	<div class="main">
		<h2 style="
		font-family: 'Lato', sans-serif;">
		My Routine</h2>
		<br><br>
	<%@include file="../../include/myPageNav.jsp"%>
	<hr style="width: 1300px; margin:auto;">
  
		<div class="myPageNav3">
			<div class="rcText" style="margin:120px auto;">
			<form role="form" method="post">
				<input type="hidden" name="userNum" value="${routineDTO.userNum }">
			</form>
			<h4 style="text-align: left; position: absolute;">* Click Routine Name</h4>
			
				<table id="customers" style="width:1000px;">
		             <tr class="board_title">
		           		<th>Routine Number</th>
		             	<th style="width:200px;">Routine Name</th>
		             	<th style="width:700px;">Selected Exercise</th>
		             </tr>
		         <c:forEach items="${list}" var="routineDTO">			         
		             <tr>
			            <td>${routineDTO.routineNum}</td>
			            <td><a style="text-decoration:none; color:black;" href='/project/user/routine/detail?userNum=${userNum}&routineNum=${routineDTO.routineNum}'>${routineDTO.routineName}</a></td>
			            <td>${routineDTO.routineEx}</td>
		             </tr>
                 </c:forEach>
                 </table>
			</div>
		</div>
		
		<div style="width: 880px; height: auto;"><canvas id="bar-chart-horizontal" width="600" height="250"></canvas></div>
	</div>
	
	
	
		
		<hr style="width: 1300px; margin:auto;"><br>
                
        <div class="bt_box">
			<button id="myBtn1" type="submit" class="routine_insert">입력</button>
			<button id="myBtn1" onclick="location.href='/project/content/ex_recomm/ex_recomm?userNum=${userNum}'">AI 루틴 추천 받기</button>
		</div>        
</div>
	<%@include file="../../include/footer.jsp"%>