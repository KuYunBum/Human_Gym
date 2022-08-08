<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<%@include file="../../include/header.jsp"%>

	<div class="main">
		<h1>내 루틴 커스텀</h1><br><br>
	<%@include file="../../include/myPageNav.jsp"%>
	<hr style="width: 1300px; margin:auto;">
  
		<div class="myPageNav3">
			<div class="rcText" style="margin:120px auto;">
			<form role="form" method="post">
				<input type="hidden" name="userNum" value="${routineDTO.userNum }">
			</form>
				<table id="customers" style="width:1000px;">
		             <tr>
		           		<th>Routine Number</th>
		             	<th>Routine Name</th>
		             	<th>Selected Exercise</th>
		             </tr>
		         <c:forEach items="${list}" var="routineDTO">			         
		             <tr>
			            <td>${routineDTO.routineNum}</td>
			            <td><a style="text-decoration:none;" href='/project/user/routine/detail?routineNum=${routineDTO.routineNum}'>${routineDTO.routineName}</a></td>
			            <td>${routineDTO.routineEx}</td>
		             </tr>
                 </c:forEach>
                 </table>
			</div>
		</div>
		${list.get(0).routineNum }
	</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
                
        <div class="bt_box">
			<button id="myBtn1" type="submit" class="routine_insert">입력</button>
			<button id="myBtn1" class="routine_update">AI 루틴 추천 받기</button>
		</div>        
</div>
	<%@include file="../../include/footer.jsp"%>