<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	var msg = "${msg}"
	if (msg == "success") {
		alert("수정이 완료 되었습니다.");
		opener.parent.document.location.reload();
		window.close();
	} else if (msg == "noSchedule") {
		alert("일정을 입력하지 않으셨습니다.");
	}
	
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		$(".update").on("click", function() {
			formObj.attr("action", "editSchedule");
			formObj.submit();
		});

		$(".delete").on("click", function() {
			formObj.attr("action", "deleteSchedule");
			formObj.submit();
		});
	});
</script>

</head>
<body>
	<form role="form" method="post">
		<input type="hidden" name="scNum" value="${dto.scNum }"/> 
		<input type="hidden" name="userNum" value="${dto.userNum}"/>
		날짜 : <input type="date" name="day" value='<fmt:formatDate value="${dto.day}" pattern="yyyy-MM-dd" />'>
		<br>
		할 일 : <input type="text" name="schedule" value="${dto.schedule }">
		<br>
		<button type="button" style="width: 100px;" class="update">수정</button>
		<button type="button" style="width: 100px;" class="delete">삭제</button>
	</form>
</body>
</html>