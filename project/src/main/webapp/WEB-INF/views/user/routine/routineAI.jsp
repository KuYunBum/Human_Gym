<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../include/header.jsp"%>

	<div class="main">
		<h1>내 루틴 커스텀</h1><br><br>
	<%@include file="../../include/myPageNav.jsp"%>
	<hr style="width: 1300px; margin:auto;">
  
		<div class="myPageNav3">
			<div class="rcText" style="margin:120px auto;">
				
				${inbodyDTO.skeletalmusclemass }
				${inbodyDTO.bodyfatmass}
				
				
			</div>
		</div>
	</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
                
        <div class="bt_box">
            <button id="myBtn1" type="button" class="routine_update">수정</button>
            <button id="myBtn1" type="submit" class="routine_delete">삭제</button>
            <button id="myBtn1" type="button" onclick="location.href='/project/user/routine/routineBox?userNum=${userNum}'">뒤로</button>
		</div>        
</div>
	<%@include file="../../include/footer.jsp"%>