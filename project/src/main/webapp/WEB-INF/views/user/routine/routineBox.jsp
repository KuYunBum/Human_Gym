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
<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    font-size: 18px;
  }
  th, td {
    border-bottom: 1px solid #444444;
    border-left: 1px solid #444444;
    padding: 10px;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  th > a{
  text-decoration: none;
  }
  </style>
  
		<div class="myPageNav3">
			<div class="rcText" style="margin:120px auto;">
				<table>
		             <tr>
		             	<th>Routine Name</th>
		             	<th>Selected Exercise</th>
		             </tr>
		         <c:forEach items="${list}" var="routineDTO">
	                 <tr>
	                    <th><a href="#">${routineDTO.routineName}</a></th>
	                   	<th>${routineDTO.routineEx}</th>
	                </tr>
                 </c:forEach>
                 </table>
			</div>
		</div>
	</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
                
        <div class="bt_box">
			<button id="btn1" type="submit" class="routine_insert">입력</button>
            <button id="btn1" type="button" class="inbody_update">수정</button>
		</div>        
</div>
	<%@include file="../../include/footer.jsp"%>