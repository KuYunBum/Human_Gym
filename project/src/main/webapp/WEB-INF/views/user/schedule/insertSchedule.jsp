<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="/project/resources/css/btn1.css" />
</head>
<body>

	<form method="post">
		<input type="hidden" name="${userNum}"> 
		날짜 : <input type="date" name="day">
		<br>
		할 일 : <input type="text" name="schedule">
		<br>
		<input id="btn1" type="submit" value="등록">
	</form>
</body>
</html>