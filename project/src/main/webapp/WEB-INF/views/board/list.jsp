<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>
		<div class="board_name">
			<h1>
			  <span>B</span>
			  <span>O</span>
			  <span>A</span>
			  <span>R</span>
			  <span>D</span>
			</h1>
		</div>
		
		<div class="main">
			<div class="board_nav">
		    	<select name="searchType" class="search_sel">
		    		<option value="n" <c:out value="${pageMaker.searchType==null?'selected':'' }"/>>주제를 선택하세요.</option>
		    		<!-- <option value="n" selected>----</option>
		    		<option value="n">----</option> -->
		    		<option value="t" <c:out value="${pageMaker.searchType eq 't'?'selected':'' }"/>>제목만</option>
		    		<option value="c" <c:out value="${pageMaker.searchType eq 'c'?'selected':'' }"/>>내용</option>
		    		<option value="w" <c:out value="${pageMaker.searchType eq 'w'?'selected':'' }"/>>작성자</option>
		    		<option value="tc" <c:out value="${pageMaker.searchType eq 'tc'?'selected':'' }"/>>제목 또는 내용</option>
		    		<option value="cw" <c:out value="${pageMaker.searchType eq 'cw'?'selected':'' }"/>>내용 또는 작성자</option>
		    		<option value="tcw" <c:out value="${pageMaker.searchType eq 'tcw'?'selected':'' }"/>>제목 내용 작성자</option>
		    	</select>
		    	
	    		<input type="text" name="keyword" id="keywordInput" value="${pageMaker.keyword}" placeholder="검색어를 입력하세요.">
	    		<button id="searchBtn"> 검색하기</button>
	    	</div>
	    	<!-- 게시판 메인 이미지 
	    	<div class="board_img">
	    		<ul>
		    		<li><img class="testgif" src="/project/resources/image/board/gif1.gif"></li>
		    		<li><img class="testgif"  src="/project/resources/image/board/gif2.gif"></li>
		    		<li><img class="testgif"  src="/project/resources/image/board/gif3.gif"></li>
		    		<li><img class="testgif"  src="/project/resources/image/board/gif4.gif"></li>
	    		</ul>
	    	</div> -->
	    	<div class="board_main">
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
			</div>
		</div>
		<%
			if(session.getAttribute("user")!=null){
		%>	       
		<div class="bt_box">
		<button class="board_insert">글쓰기</button>
		</div><br>
		<%
			}
		%>
			<div class="pagination"><!-- 게시판 갯수 -->
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
