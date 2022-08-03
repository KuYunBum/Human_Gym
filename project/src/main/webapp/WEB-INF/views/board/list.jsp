<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>

	<div class="main">
		<h1>게 시 판</h1><br><br>
		<div>
    	<select name="searchType">
    		<option value="n" <c:out value="${pageMaker.searchType==null?'selected':'' }"/>>----</option>
    		<!-- <option value="n" selected>----</option>
    		<option value="n">----</option> -->
    		<option value="t" <c:out value="${pageMaker.searchType eq 't'?'selected':'' }"/>>title</option>
    		<option value="c" <c:out value="${pageMaker.searchType eq 'c'?'selected':'' }"/>>content</option>
    		<option value="w" <c:out value="${pageMaker.searchType eq 'w'?'selected':'' }"/>>writer</option>
    		<option value="tc" <c:out value="${pageMaker.searchType eq 'tc'?'selected':'' }"/>>title or content</option>
    		<option value="cw" <c:out value="${pageMaker.searchType eq 'cw'?'selected':'' }"/>>c w</option>
    		<option value="tcw" <c:out value="${pageMaker.searchType eq 'tcw'?'selected':'' }"/>>t c w</option>
    	</select>
    	<input type="text" name="keyword" id="keywordInput" value="${pageMaker.keyword}">
    	<button id="searchBtn"> 검색하기</button>
    	</div>
		<table id='customers' border="1">
			<tr>
				<th style="width: 80px">번호</th>
				<th>제목</th>
				<th style="width: 200px">작성자</th>
				<th style="width: 250px">작성날짜</th>
				<th style="width: 80px">조회</th>
			</tr>
	
			<c:forEach items="${list}" var="boardDTO">
				<tr>
					<td>${boardDTO.bno}</td>
					<td><a href='/project/board/detail${pageMaker.makeSearch()}&bno=${boardDTO.bno}'>${boardDTO.title}</a></td>
					<td>${boardDTO.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${boardDTO.regdate}" /></td>
					<td><span class="badge bg-red">${boardDTO.viewcnt }</span></td>
				</tr>
			</c:forEach>
		</table>
		<%
			if(session.getAttribute("user")!=null){
		%>	       
		<div class="bt_box">
		<button class="board_insert">글쓰기</button>
		</div><br>
		<%
			}
		%>
		<div class="pagination">
	    	<c:if test="${pageMaker.page !=1}">
	    		<a href='list${pageMaker.makeSearch(1)}'>&laquo;</a>
	    	</c:if>
	    	<c:if test="${pageMaker.prev }">
	    		<a href='list${pageMaker.makeSearch(pageMaker.startPage-1)}'>&lt;</a>
	    	</c:if>
	    	
	    	<c:forEach begin="${pageMaker.startPage }" end="${ pageMaker.endPage}" var="idx">
	    		<a href='list${pageMaker.makeSearch(idx)}' 
	    		 <c:out value="${pageMaker.page==idx?' class=active ':'' }"/> >
	    		 ${idx}</a>
	    	</c:forEach>
	    	
	    	<c:if test="${pageMaker.next }">
	    		<a href='list${pageMaker.makeSearch(pageMaker.endPage+1)}'>&gt;</a>
	    		
	    	</c:if>
	    	
	    	
	    	<c:if test="${pageMaker.page != pageMaker.totalEndPage}">
	    		<a href='list${pageMaker.makeSearch(pageMaker.totalEndPage)}'>&raquo;</a>
	    	</c:if>
	    	
	    </div>
	</div>

	<%@include file="../include/footer.jsp"%>
