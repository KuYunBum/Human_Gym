<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 추가하기</title>
<script>
	var msg = "${msg}";
	if (msg == "success") {
		alert("등록 완료 되었습니다.");
		opener.parent.document.location.reload();
		window.close();
	} else if (msg == "noDate") {
		alert("날짜을 입력하지 않으셨습니다.");
	} else if (msg == "noSchedule") {
		alert("일정을 입력하지 않으셨습니다.");
	}
</script>
<link rel="stylesheet" href="/project/resources/css/myBtn1.css" />
<link rel="stylesheet" href="/project/resources/css/scheduleForm.css" />
</head>
<body>
	<div class="insertForm">
		<form method="post">
			<input type="hidden" name="${userNum}">
			<table>
				<tr>
					<td style="width: 100px; height: 80px;">날짜 :</td>
					<td style="widht: 500px;"><input type="date" name="day"></td>
				</tr>
				<tr>
					<td>할일 :</td>
					<td><input type="text" name="schedule"></td>
				</tr>
				<tr>
					<td colspan="2" style="height: 150px;"><button id="myBtn1" type="submit">등록</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>