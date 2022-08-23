<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@include file="../include/header.jsp"%>
    
	<div class="main">
	    <div class="joinBox">
	        <div class="joinInput">
		        <a href="/project/">
	                <img src="/project/resources/image/logo.png" style="width:200px;height:200px;"> <!-- 로고 -->
	            </a>
		        <form role="form" method="post">
		            <label id="labelID" for="userID"> 아이디 </label><br>
		            <input type="text" name="userID" id="userID" placeholder="사용할 아이디를 입력해주세요.">
		            <input type="hidden" name="checked_id" value="">
		            <input type="button" id="btnCheck" value="중복검사"/><br>
            		<span id="result"></span><br>
		            
		            <label id="labelID" for="userPW"> 비밀번호 </label>
		            <input type="password" id="userPW" name="userPW" placeholder="8~20자리 사이의 비밀번호를 입력해주세요.">
		            
		            <label for="userPWCheck"> 비밀번호 확인 </label>
		            <input type="password" id="userPWCheck" name="userPWCheck" onchange="check_pw()" placeholder="비밀번호를 다시 한 번 입력해주세요.">
		            <span id="check"></span><br>
		            
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
		
					<div class="logBtn">
			           	<input type="button" onclick="YN();" value="가입하기" >
			        </div>
		        </form>
	        </div>
	    </div>
	</div>
	
	
	<script>
	$('#btnCheck').click(function () {
		$("input[name=checked_id]").val('y');	
	    if ($('#userID').val() != '') {
	   				
	        // 아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환받기
	        $.ajax({
	   					
	            type: 'GET',
	            url: '/project/user/idcheck',
	            data: 'userID=' + $('#userID').val(),
	            dataType: 'json',
	            success: function(result) {
	                if (result == '0') {
	                    $('#result').text('사용 가능한 아이디입니다.');
	                } else {
	                    $('#result').text('이미 사용중인 아이디입니다.');
	                }
	            },
	            error: function(a, b, c) {
	                console.log(a, b, c);
	            }
	        });
	    } else {
	        alert('아이디를 입력하세요.');
	        $('#userID').focus();
	    }
	});
	
	function YN() {
		if($("input[name='checked_id']").val()==''){
	        alert('아이디중복 확인을 해주세요.');
	    }else{
			formObj.submit();
	    }
	}
	
    function check_pw(){
        if(document.getElementById('userPW').value !='' && document.getElementById('userPWCheck').value!=''){
            if(document.getElementById('userPW').value==document.getElementById('userPWCheck').value){
                document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                document.getElementById('check').style.color='blue';
            }
            else{
                document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                document.getElementById('check').style.color='red';
            }
        }
    }
	
	
	</script>

	<%@include file="../include/footer.jsp"%>