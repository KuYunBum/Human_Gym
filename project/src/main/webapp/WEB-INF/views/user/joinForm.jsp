<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
    
	<div class="main">
	    <div class="joinBox">
	        <div class="joinInput">
		        <a href="/project/">
	                <img src="/project/resources/image/logo.png" style="width:200px;height:150px;"> <!-- 로고 -->
	            </a>
		        <form  action="/project/user/joinForm" method="post">
		            <label id="labelID" for="userID"> 아이디 </label><br>
		            <input type="text" name="userID" placeholder="사용할 아이디를 입력해주세요.">
<!-- 		            <button> 중복확인 </button><br> -->
		            
		            <label id="labelID" for="userPW"> 비밀번호 </label>
		            <input type="password" name="userPW" placeholder="8~20자리 사이의 비밀번호를 입력해주세요.">
		            
<!-- 		            <label for="userPWCheck"> 비밀번호 확인 </label> -->
<!-- 		            <input type="password" id="userPWCheck" name="userPWCheck" placeholder="비밀번호를 다시 한 번 입력해주세요."> -->
		            
		            <label id="labelID" for="userName"> 이름 </label>
		            <input type="text" name="userName" placeholder="이름을 입력해주세요.">
		            
		            <label id="labelID" for="userGender"> 성별 </label><br>
		            <input type="radio" name="userGender" value="남자"> 남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="userGender" value="여자"> 여자<br><br>
		            
		            <label id="labelID" for="userBirth"> 생년월일 </label>
		            <input type="date" name="userBirth"><br>
		            
		            <label id="labelID" for="userPhone"> 전화번호 </label><br>
		            <input type="text" name="userPhone" placeholder="핸드폰 번호를 입력해주세요.">
		            
		            <label id="labelID" for="userEmail"> 이메일 </label><br>
		            <input type="text" name="userEmail" placeholder="이메일을 입력해주세요.">
		
<!-- 		            <div class="sBox">fieldset/ legend 로 변경 -->
<!-- 			            <div> -->
<!-- 			                <label for="howJoin">가입경로</label><br> -->
<!-- 			                <select id="howJoin" name="howJoin"> -->
<!-- 			                <option value="지인추천"> 지인추천 </option> -->
<!-- 			                <option value="블로그"> 블로그 </option> -->
<!-- 			                <option value="현수막"> 현수막 </option> -->
<!-- 			                </select> -->
<!-- 			            </div> -->
<!-- 			            <div> -->
<!-- 			                <label for="joinPp"> 운동 목적 </label><br> -->
<!-- 			                <select id="joinPp" name="joinPp"> -->
<!-- 			                <option value="다이어트"> 다이어트 </option> -->
<!-- 			                <option value="근육질몸매"> 근육질 몸매 </option> -->
<!-- 			                <option value="건강관리"> 건강관리 </option> -->
<!-- 			                </select> -->
<!-- 			            </div> -->
<!-- 			            <div class="cb"> -->
<!-- 			                <label for="ex"> 원하는 운동부위 </label><br> -->
<!-- 			                <input type="checkbox" value="list1"> 가슴 -->
<!-- 			                <input type="checkbox" value="list2"> 어깨 -->
<!-- 			                <input type="checkbox" value="list3"> 복부 -->
<!-- 			                <input type="checkbox" value="list4"> 등 -->
<!-- 			                <input type="checkbox" value="list5"> 팔 -->
<!-- 			                <input type="checkbox" value="list5"> 허벅지 -->
<!-- 			                <input type="checkbox" value="list5"> 종아리  -->
<!-- 			            </div> -->
<!-- 		            </div> -->

		                <input type="submit" value="가입하기" >
		        </form>
	        </div>
	    </div>
	</div>

	<%@include file="../include/footer.jsp"%>