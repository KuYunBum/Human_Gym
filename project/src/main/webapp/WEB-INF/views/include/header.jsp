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
<link rel="stylesheet" href="/project/resources/css/include_template.css">
<link rel="stylesheet" href="/project/resources/css/template.css" />
<link rel="stylesheet" href="/project/resources/css/slidenav.css" />
<link rel="stylesheet" href="/project/resources/css/myBtn1.css" />
<!-- <link rel="stylesheet" href="/project/resources/css/bootstrap.css"> -->
<script src="/project/resources/js/bootstrap.js"></script>
<script>
	$(document).ready(function(){
		var result = '${msg}';
		var ID = '${findID}';
		var PW = '${findPW}';
		if (result == 'success') {
			alert("처리가 완료되었습니다.");
		}
		if (result == 'overlap') {
			alert("중복되었습니다.");
		}
		if (result == 'fail1') {
			alert("다시 확인해주세요.");
		}
		if (result == 'fail2') {
			alert("입력안된 사항이 있습니다.");
		}
		if (result == 'fail3') {
			alert("이미 입력 하셨습니다.");
		}
		if (result == 'LoginRequired') {
			alert("로그인이 필요합니다.");
		}
		if (result == 'login') {
			alert("로그인 되었습니다.");
		}
		if (result == 'logout') {
			alert("로그아웃 되었습니다.");
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

	
		$( '.ex_content_p1_1' ).animate( {
		    opacity: '1'
		  }, 1000, function() {
		    $( '.ex_content_p1_2' ).animate( {
		      opacity: '1'
		    }, 1000, function() {
		      $( '.ex_content_p1_3' ).animate( {
		        opacity: '1'
		      }, 1000, function() {
		        $( '.ex_content_p1_4' ).animate( {
		      	opacity: '1'
		        }, 1000, function(){
		      	  $( '.ex_content_p1' ).animate( {
			        	opacity: '0'
			          }, 1000, function(){ 
			        	  self.location = "ex_recomm_simple1?userNum=${userNum}"
			          });
		        });
		      });
		    });
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
    	$('#stretching1').on("click", function() {
    		self.location = "ex_recomm_stretching?userNum=${userNum}";
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
					<li><a href="/project/user/loginForm">로그인</a></li>
					<li><a href="/project/user/joinForm">회원가입</a></li>
					<%
						} else if (String.valueOf(session.getAttribute("userNum")).equals("1")) {
							out.print(String.valueOf(session.getAttribute("user")) + " 님");
					%>
					<li><a href="/project/admin/list">회원 관리</a></li>
					<li><a href="/project/user/logout">로그아웃</a></li>
					<%
						} else {
							out.print(String.valueOf(session.getAttribute("user")) + " 님");
					%>
					<li><a href="/project/user/myPage?userNum=${userNum }">마이페이지</a></li>
					<li><a href="/project/user/logout">로그아웃</a></li>
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
									<li id="rightLi"><a id="rightLi2" href="/project/content/ex_recomm/ex_recomm?userNum=${userNum }">AI 운동 추천</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/membership">멤버쉽</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/tr/tr_main">트레이너</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/board/list">자유게시판</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/gym">내 주변 헬스장 찾기</a></li>
									<div class="widthLine1" style="margin-top: 8px;"></div>

									<br>
									<li id="rightLi"><a id="rightLi2" href="/project/content/help">고객센터</a></li>
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

