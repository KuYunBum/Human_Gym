<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 수정, 삭제</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<link rel="stylesheet" href="/project/resources/css/myBtn1.css" />
<link rel="stylesheet" href="/project/resources/css/scheduleForm.css" />
<style>
.bt_box {
	text-align: center;
}
</style>
</head>
<body>
	<div class="insertForm">
		<form role="form" method="post">
			<input type="hidden" name="scNum" value="${dto.scNum }" /> <input type="hidden" name="userNum" value="${dto.userNum}" />
			<table>
				<tr>
					<td style="width: 100px; height: 80px;">날짜 :</td>
					<td style="widht: 500px;"><input type="date" name="day" value='<fmt:formatDate value="${dto.day}" pattern="yyyy-MM-dd" />'></td>
				</tr>
				<tr>
					<td>할일 :</td>
					<td><input type="text" name="schedule" value="${dto.schedule }"></td>
				</tr>
				<tr>
					<td colspan="2" style="height: 150px;"><div class="bt_box">
							<button id="myBtn1" type="submit" class="update">수정</button>
							<button id="myBtn1" type="submit" class="delete">삭제</button>
						</div></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>