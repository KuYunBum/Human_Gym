<%@page import="com.spring.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Human Health Gym</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/project/resources/css/include_template.css">
<link rel="stylesheet" href="/project/resources/css/template.css" />
<link rel="stylesheet" href="/project/resources/css/slidenav.css" />
<link rel="stylesheet" href="/project/resources/css/myBtn1.css" />
<link rel="stylesheet" href="/project/resources/css/myPageTest.css" />
<!-- <link rel="stylesheet" href="/project/resources/css/bootstrap.css"> -->
<script src="/project/resources/js/bootstrap.js"></script>
<script src="https://cdn.jsdelivr.net/npm/danfojs@0.1.2/dist/index.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@2.4.0/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-vis"></script>

</head>

<body>
	<div class="progress"></div>
	<div class="header">
		<div class="navbar1">
			<ul>
				<div class="imgNav">
					<a href="/project/" style="text-decoration: none;"> <img src="/project/resources/image/logo.png" style="width: 200px; height: 150px;">
					</a>
				</div>


				<input type="checkbox" id="menuIcon" />
				<div class="logNav">
					<%
						String user = String.valueOf(session.getAttribute("user"));
						if (session.getAttribute("user") == null) {
					%>
					<li><a href="/project/user/loginForm">?????????</a></li>
					<li><a href="/project/user/joinForm">????????????</a></li>
					<%
						} else if (String.valueOf(session.getAttribute("userNum")).equals("1")) {
							out.print(String.valueOf(session.getAttribute("user")) + " ???");
					%>
					<li><a href="/project/admin/list">?????? ??????</a></li>
					<li><a href="/project/user/logout">????????????</a></li>
					<%
						} else {
							out.print(String.valueOf(session.getAttribute("user")) + " ???");
					%>
					<li><a href="/project/user/myPage?userNum=${userNum }">???????????????</a></li>
					<li><a href="/project/user/logout">????????????</a></li>
					<%
						}
					%>
					<div class="menubar">
					<label for="menuIcon" class="menubtn"> <span></span> <span></span> <span></span>
					</label>
				</div>
				</div>
				

				<div class="container">
					<div class="sidebar">
						<span class="area_desc">

							<div style="width: 80%; margin: auto;">
								<ul class="navi"></ul>
							</div>

							<div class="slideNav-container1">

								<div class="widthLine3"></div>

								<ul class="navi">

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/ex_recomm/ex_recomm?userNum=${userNum }">AI ?????? ??????</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/membership">?????????</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/tr/tr_main">????????????</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/board/list">???????????????</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/gym">??? ?????? ????????? ??????</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/help">????????????</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>
								</ul>
							</div>


							<div class="slideNav-container2">
								<div class="widthLine4"></div>
								<h2 style="color: #fff;">ABOUT US</h2>
							</div>

							<div class="slideNav-container3">
								<li id="rightLi"><a id="rightLi2" href="https://about.facebook.com/"> <img src="/project/resources/image/ex/icon-facebook.jpg" style="width: 50px; height: 50px;">
								</a></li>
								<li id="rightLi"><a id="rightLi2" href="https://www.instagram.com/"> <img src="/project/resources/image/ex/icon-instagram.png" style="width: 50px; height: 50px;">
								</a></li>
								<li id="rightLi"><a id="rightLi2" href="https://www.kakaocorp.com/page/"> <img src="/project/resources/image/ex/icon-kakao.png" style="width: 50px; height: 50px;">
								</a></li>
							</div>
						</span> 
					</div>
				</div>
			</ul>
		</div>
	</div>

<script>
	$(document).ready(function(){
		var result = '${msg}';
		var ID = '${findID}';
		var PW = '${findPW}';
		var st = '${exerciseChartDTO.exName}';
		
		for(var i = 0; i < document.getElementsByTagName("option").length; i++){
	         if(st==document.getElementsByTagName("option")[i].value){
	            document.getElementsByTagName("option")[i].selected = true;
	         }
	    }
		 
		if (result == 'success') {
			alert("????????? ?????????????????????.");
		}
		if (result == 'overlap') {
			alert("?????????????????????.");
		}
		if (result == 'fail1') {
			alert("?????? ??????????????????.");
		}
		if (result == 'fail2') {
			alert("???????????? ????????? ????????????.");
		}
		if (result == 'fail3') {
			alert("?????? ?????? ???????????????.");
		}
		if (result == 'LoginRequired') {
			alert("???????????? ???????????????.");
		}
		if (result == 'login') {
			alert("????????? ???????????????.");
		}
		if (result == 'logout') {
			alert("???????????? ???????????????.");
		}
		if (result == 'findAccount') {
			alert("ID : "+ID+"  PW : "+PW);
		}
		
		$('#searchBtn').on("click",function(event){
		  
		  self.location="list"+'${pageMaker.makePage(1)}'
		  +'&searchType='+$("select option:selected").val()
		  +"&keyword="+$('#keywordInput').val();
		  
		});


		$(".board_insert").on("click", function() {
			location.href = "/project/board/insert?userNum=${userNum}";
		});
		$(".board_update").on("click", function(){
			self.location = "update?bno=${boardDTO.bno}";
		});
		$(".board_cancel").on("click", function() {
			self.location = "detail?bno=${boardDTO.bno}";
		});
		$(".admin_update").on("click", function() {
			self.location = "update?userNum=${userDTO.userNum}";
		});
		$(".user_update").on("click", function() {
			self.location = "update?userNum=${userDTO.userNum}";
		});
		$(".inbody_update").on("click", function() {
			self.location = "update?userNum=${userNum}";
		});
		$(".inbody_insert").on("click", function() {
			self.location = "insert?userNum=${userNum}"
		});
		$(".routine_insert").on("click", function() {
			self.location = "insert?userNum=${userNum}"
		});

	

		
    	$('#day1_1,#day3_1').on("click", function() {
    		self.location = "ex_recomm_simple1?userNum=${userNum}";
    	});
    	$('#day2_1,#day4_1').on("click", function() {
    		self.location = "ex_recomm_simple2?userNum=${userNum}";
    	});
    	$('#day1_2,#day3_2').on("click", function() {
			self.location = "ex_recomm_detail1?userNum=${userNum}";
		});
    	$('#day2_2,#day4_2').on("click", function() {
    		self.location = "ex_recomm_detail2?userNum=${userNum}";
    	});
    	

    	

		$(".routine_update").on("click", function(){
			self.location = "update?routineNum=${routineNum}";
		});
		$(".routine_delete").on("click", function(){
			self.location = "delete?routineNum=${routineNum}";
		});

	});
</script>

<script>
const progressTag = document.querySelector('.progress')
const bodyTag = document.querySelector('body')

document.addEventListener('scroll', function() => {
  const pixels = window.pageYOffset
  const pageHeight = bodyTag.getBoundingClientRect().height
  const totalHeight = pageHeight - window.innerHeight
  const percentage = pixels / totalHeight
  
  progressTag.style.width = `${100 * percentage}%`
  
  if (pixels > 0) {
    progressText.innerHTML = `${Math.floor(100 * percentage)}` + '%'
  } 
  
  else {
    progressText.innerHTML = ''
  }
})
</script>