<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var msg = "${msg}"
	if (msg == "success") {
		alert("등록 완료 되었습니다.");
		opener.parent.document.location.reload();
		window.close();
	}
</script>
</head>
<body>
	<form method="post">
		<input type="hidden" name="${userNum}"> 날짜 : <input
			type="date" name="day"> <br> 할 일 : <input type="text"
			name="schedule"> <br> <input type="submit" value="등록">
	</form>
</body>
</html>