<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class=consult_main>
		<div class=consult_page1>
			<form role="form" method="post">
				<div class="consult_page_name"><h1>문 의 하 기</h1></div>
				<div class="consult_ment">
					 <%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %> 반갑습니다.</div>
				<div>
					<input type="text" name="test" placeholder="상담할 내용을 입력해주세요.">
					<input type="button" value="1">
				</div>
				
				<!-- <fieldset>
				<legend></legend>
					${userDTO.userNum}
					<input type="text" name="test">
					<input type="button" value="submit">
				</fieldset> -->
			</form>
		</div>
	</div>


	<%@include file="../../include/footer.jsp"%>