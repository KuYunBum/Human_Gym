<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>
    
	<div class="main">
	    <div class="logBox">
		    <a href="/project/">
                <img src="/project/resources/image/logo.png" style="width:200px;height:150px;"> <!-- 로고 -->
            </a><br><br>
		    <form action="/project/user/loginForm" method="post">
		        <div class="logInput">
		            ID : <input type="text" name="userID" placeholder=" ID 입력"><br>
		            PW: <input type="password" name="userPW" placeholder=" PW 입력">
		        </div>
		        <div class="logBtn">
		        	<input type="submit" value="로그인">
		        </div>
	        </form>
	        <div class="login">
	            <a href="findAccount">ID 찾기/ PW 찾기</a>
	            <a href="joinForm">회원가입</a>
	        </div>
	    </div>
	</div>
	
	
	<%@include file="../include/footer.jsp"%>