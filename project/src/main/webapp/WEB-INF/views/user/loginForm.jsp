<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


	<%@include file="../include/header.jsp"%>
    
	<div class="main">
	    <div class="logBox">
		    <a href="/project/">
                <img src="/project/resources/image/logo.png" style="width:200px;height:200px;"> <!-- 로고 -->
            </a><br><br>
		    <form action="/project/user/loginForm" method="post">
						    
				<div class="logInput">
				  
				    <div class="form-group">
				      <label for="user"><i>I D</i></label>
				      <input type="text" name="userID" class="form-control" placeholder="아이디를 입력해주세요.">
				    </div>
				    <div class="form-group">
				      <label for="password"><i>Password</i></label>
				      <input type="password" name="userPW" class="form-control" placeholder="비밀번호를 입력해주세요.">
				    </div>
	
				</div>
						    
<!-- 		        <div class="logInput"> -->
<!-- 		            ID : <input type="text" name="userID" placeholder=" ID 입력"><br> -->
<!-- 		            PW: <input type="password" name="userPW" placeholder=" PW 입력"> -->
<!-- 		        </div> -->
		        <div class="logBtn">
		        	<input type="submit" value="로그인">
		        </div>
	        </form>
	        <div class="logSub">
	            <a href="findAccount">ID 찾기/ PW 찾기</a>
	            <a href="joinForm">회원가입</a>
	        </div>
	    </div>
	</div>
	
	
	<%@include file="../include/footer.jsp"%>