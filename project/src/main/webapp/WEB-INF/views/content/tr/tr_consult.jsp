<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class=consult_main>
		<div class=consult_page1>
				<div class="consult_page_name"><h1>문 의 하 기</h1></div>
				<div class="consult_ment">
					 <%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %> 궁금한게 있으신가요 ?</div>
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
							<td><textarea name="content" rows="8" style="width: 100%" placeholder="상담할 내용을 입력해주세요."></textarea></td>
						</tr>
					</table>
					<input type="button" class="bt_save" value="commit"><!-- 누르면 게시판 글 작성 -->
				</form>
				<!-- <form role="form" method="post">
							<input type="text" name="test" placeholder="상담할 내용을 입력해주세요.">
							<br><br><br><br>
				
				
						    <fieldset>
							<legend></legend>
								${userDTO.userNum}
								<input type="text" name="test">
								<input type="button" value="submit">
							</fieldset>
				</form>-->
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>