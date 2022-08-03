<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>내용 수정</h1>
		<form role="form" method="post">
			<table id='customers' border="1">
				<tr>
					<th>번호</th>
				</tr>
				<tr>
					<td>${boardDTO.bno}</td>
				</tr>
				<tr>
					<th>작성자</th>
				</tr>
				<tr>
					<td>${boardDTO.writer}</td>
				</tr>
				<tr>
					<th>제목</th>
				</tr>
				<tr>
					<td><input type="text" name='title'  style="width:100%" value="${boardDTO.title}"></td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td><textarea  style="width:100%" name="content" rows="3">${boardDTO.content}</textarea></td>
				</tr>
			</table>
		</form>
		<div class="bt_box">
			<button type="submit" class="bt_save">저장</button>
			<button type="submit" class="board_cancel">취소</button>
		</div>
	</div>
	
	<%@include file="../include/footer.jsp"%>