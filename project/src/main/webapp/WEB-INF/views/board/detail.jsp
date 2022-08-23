<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../include/header.jsp"%>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script>
var bno="${boardDTO.bno}";
var page=1;

$(document).ready(function() {
		
	getPageList(page);
	
	
// 	댓글 달기
	$("#replyAddBtn").on("click",function(){		
		var replyer=$("#replyer").val();
		var replytext=$("#replytext").val();
		
		$.ajax({
			type:'post',
			url:'/project/replies',
			headers:{
				"Content-Type":"application/json"
			},
			dataType:'text',
			data:JSON.stringify({
				bno:bno,
				replyer:replyer,
				replytext:replytext
			}),
			success:function(result){
				if(result == 'SUCCESS'){
					alert("등록 되었습니다.");
					//화면에 찍는 작업
					getPageList(page);
				}
			}
		})
	})
	
	
// 	댓글 수정창 열기
	$("#replies").on("click",".replyLi button",function(){
		var rno=$(this).parent().attr("data-rno");
		var replytext=$(this).parent().text();
		$(".modal-title").html(rno);
		$("#modDiv").show("slow");
	})
	
// 	댓글 수정창 닫기
	$("#closeBtn").on("click",function(){
		$("#modDiv").hide("slow");
	})
	
// 	댓글 수정하기
	$("#replyModBtn").on("click",function(){
		
		var rno=$(".modal-title").html();
		var replytext = $("#replytext2").val();
	
		$.ajax({
			type:'put',
			url:'/project/replies/'+rno,
			headers:{
				"Content-Type":"application/json"
			},
			data:JSON.stringify({replytext:replytext}),
			dataType:'text',
			success:function(result){
				if(result=='SUCCESS'){
					alert("수정 되었습니다.");
					$("#modDiv").hide("slow");
					getPageList(page);
				}
			}
		})
	})
	
// 	댓글 삭제하기
	$("#replyDelBtn").on("click",function(){
		var rno=$(".modal-title").html();
		$.ajax({
			type:'delete',
			url:'/project/replies/'+rno,
			headers:{
				"Content-Type":"application/json"
			},
			dataType:'text',
			success:function(result){
				if(result=='SUCCESS'){
					alert("삭제 되었습니다.");
					$("#modDiv").hide("slow");
					getPageList(page);
				}
			}
			
		})
	})
	
// 	댓글 페이지 이동
	var fObject=$(".form");
	$(".pagination").on("click","a",function(event){
		event.preventDefault();
		page=$(this).attr("href");
		getPageList(page);
		
	})
	
	
});


function getPageList(page){
	var str="";
	
// 	댓글 리스트 가져오기
	$.getJSON("/project/replies/"+bno+"/"+page,function(data){
		console.log(data);
		$(data.list).each(function(){
			str+="<li data-rno='"+this.rno+"' class='replyLi'>"
			+this.rno+". &nbsp;&nbsp;"+this.replyer
			+"  &nbsp;&nbsp;:&nbsp;&nbsp;"
			+this.replytext+
		<%
			if(session.getAttribute("user")!=null){
		%>
			"&nbsp; <button>수정</button></li>"
		<%
			}else{
		%>
				"</li>"
		<%
			}
		%>
		})
		$("#replies").html(str);
		str="";
		if(data.pageMaker.prev){
			str+="<a href='"+(data.pageMaker.startPage-1)+"'> << </a>";
		}
		if(data.pageMaker.page !=1){
			str+="<a href='"+((data.pageMaker.page)-1)+"'> < </a>";
		}
		for(var i=data.pageMaker.startPage;i<=data.pageMaker.endPage;i++){
			var strClass=data.pageMaker.page==i?'class=active':'';
			
			str+="<a "+strClass+" href='"+i+"'>"+i+"</a>";
		}
		if(data.pageMaker.page != data.pageMaker.totalEndPage){
			str+="<a href='"+(data.pageMaker.page+1)+"'> > </a>";
		}
		if(data.pageMaker.next){
			str+="<a href='"+(data.pageMaker.endPage+1)+"'> >> </a>";
		}
		$(".pagination").html(str);
		
	})
}
</script>
	
	<div class="detail_page">
		<h1>상세 내용</h1>
		<form role="form" method="post">
			<input type='hidden' name='bno' value="${boardDTO.bno}">
		</form>
		<form action=""></form>
			<table id='detail_main' border="1">
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
					<td>${boardDTO.title}</td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td><textarea readonly="readonly" style="text-align:center;font-size:30px;width:700px; height:400px;"> ${boardDTO.content}</textarea></td>
				</tr>
			</table>
		<div class="bt_box">
		<%
			if(session.getAttribute("user")!=null){
		%>	    
			<button type="submit" class="board_update">수정</button>
			<button type="submit" class="board_delete">삭제</button>
		<%
			}
		%>
			<button type="button" class="board_list">목록</button>
		</div>
		<br><br><br>
		
		<div id='modDiv' style="display:none">
			<div class="modal-title"></div><br>내용
			<div>
					<input type='text' id='replytext2'>
			</div><br>
			<div>
				<button type="button" id="replyModBtn">수정</button>
				<button type="button" id="replyDelBtn">삭제</button>
				<button type="button" id="closeBtn">닫기</button>
			</div>
		</div>
		<div class=widthLine2></div>
		<div class=reply_page>
			
				<legend>✍ 회원님의 의견을 달아주세요 !</legend>
			<%
				if(session.getAttribute("user")==null){
			%>
				<p style="color:gray; text-align:center;">회원님만 작성이 가능합니다.</p>
			<%
				}
			%>
				<div class=rep_box>
			<%
				if(session.getAttribute("user")!=null){
			%>
					<div>
						<span class="material-icons" style=font-size:30px;>account_circle</span> <input type='text' name='replyer' id='replyer' placeholder='작성자를 입력해주세요.' style=width:310px;height:30px;>
					</div>
					<div>
						<span class="material-icons" style=font-size:30px;>article</span><input type='text' name="replytext" id='replytext' placeholder='댓글 내용을 입력해주세요.(길게 쓰지마세요.)' style=width:300px;height:80px;margin-top:40px;padding:5px;>
					</div><br>
					<button id="replyAddBtn"><i>Commit</i></button>
			<%
				}
			%>
				</div>
			<fieldset style=width:60%;>
					<legend> Comments </legend>
					<div class="reply_box">
						<ul id="replies"></ul>
					</div>
				</fieldset>
			<div class="pagination"></div>
			
		</div>
	</div>
		
	<%@include file="../include/footer.jsp"%>