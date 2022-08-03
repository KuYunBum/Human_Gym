<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>
    
	<div class="main">
	    <div class="findAccountBox">
		    <a href="/project/">
                <img src="/project/resources/image/logo.png" style="width:200px;height:150px;"> <!-- 로고 -->
            </a><br><br>
		   <form action="/project/user/findAccount" method="post">
		        <div class="findAccount">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        	<label for="userName">이름 :</label>
		     		<input type="text" name="userName" placeholder=" 이름 입력"><br>
		        	<label for="userPhone">전화번호 :</label>
		           	<input type="text" name="userPhone" placeholder=" 전화번호 입력">
		        </div>
		        <div class="logBtn">
		        	<input type="submit" value="ID/PW찾기">
		        </div>
	        </form>
	    </div>
	</div>
	
	
	<%@include file="../include/footer.jsp"%>