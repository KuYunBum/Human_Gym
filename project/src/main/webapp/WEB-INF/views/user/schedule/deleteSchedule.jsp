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
		alert("일정이 삭제되었습니다.");
		opener.parent.document.location.reload();
		window.close();
	}
</script>
</head>
<body>

</body>
</html>