<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



	<%@include file="../include/header.jsp"%>
    
	<div class="main">
	    <div class="findAccountBox">
		    <a href="/project/">
                <img src="/project/resources/image/logo.png" style="width:200px;height:200px;"> <!-- 로고 -->
            </a><br><br>
		   <form action="/project/user/findAccount" method="post">
		        <div class="logInput">
		        	<div class="form-group">
				      <label for="userName"><i>Name</i></label>
				      <input type="text" name="userName" class="form-control" placeholder="이름을 입력해주세요.">
				    </div>
				    <div class="form-group">
				      <label for="userPhone"><i>Phone Number</i></label>
				      <input type="text" name="userPhone" class="form-control" placeholder="전화번호를 입력해주세요.">
					</div>
				</div>
				
<!-- 		        <div class="findAccount">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!-- 		        	<label for="userName">이름 :</label> -->
<!-- 		     		<input type="text" name="userName" placeholder=" 이름 입력"><br> -->
<!-- 		        	<label for="userPhone">전화번호 :</label> -->
<!-- 		           	<input type="text" name="userPhone" placeholder=" 전화번호 입력"> -->
<!-- 		        </div> -->
		        <div class="logBtn">
		        	<input type="submit" value="ID/PW찾기">
		        </div>
	        </form>
	    </div>
	</div>
	
	
	<%@include file="../include/footer.jsp"%>