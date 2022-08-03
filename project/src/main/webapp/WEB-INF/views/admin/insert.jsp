<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>글 쓰기</h1>
		<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->
		<form role="form" method="post">
			<table id='customers' border="1">
				<tr>
					<th>작성자</th>
				</tr>
				<tr>
					<td><input type="text" name="writer" placeholder="내용 입력"	style="width: 100%; height: 30px;"></td>
				</tr>
				<tr>
					<th>제목</th>
				</tr>
				<tr>
					<td><input type="text" name='title' placeholder="내용 입력" style="width: 100%; height: 30px;"></td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td><textarea name="content" rows="8" style="width: 100%" placeholder="내용 입력"></textarea></td>
				</tr>
			</table>
		</form>
		<div class="bt_box">
			<button type="button" class="bt_save">저장</button>
			<button type="button" class="admin_list">목록</button>
		</div>
	</div>
	
	<%@include file="../include/footer.jsp"%>