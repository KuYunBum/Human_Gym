<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>

	<div class="ins_page">
		<h1>✍ &nbsp;글 쓰기</h1>
<!-- 		<h2 style align="center">만드는중</h2> -->
		<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->
		<form role="form" method="post">
			<table id="write_main" border="1">
				<tr>
					<th>작성자</th>
				</tr>
				<tr>
					<td><input type="text" name='writer' value="${userDTO.userName}"></td>
				</tr>
				<tr>
					<th>제목</th>
				</tr>
				<tr>
					<td><input type="text" name='title' style="width: 100%" placeholder="제목을 입력해주세요." style="width: 100%; height: 30px;"></td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td><textarea name="content" rows="15" style="width: 100%" placeholder="내용을 입력해주세요."></textarea></td>
				</tr>
			</table>
		</form>
		<div class="bt_box">
			<button type="button" class="bt_save1">저장</button>
			<button type="button" class="board_list">목록</button>
		</div>
	</div>
	
	<%@include file="../include/footer.jsp"%>