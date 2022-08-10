<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



	<%@include file="../../include/header.jsp"%>
	

	<div class="main">
		<div class="ex_content">
			<div class="ex_content_title">
				<p>AI 추천 플랜</p>
				<button type="button" class="more_bt">...</button><br>
					<ul class="ex_sub">
						<li><button id="day1_2">Day 1   등 가슴 코어 유산소</button></li>
						<li><button id="day2_2">Day 2   하체 어깨 이두 삼두</button></li>
						<li><button id="day3_2">Day 3   등 가슴 코어 유산소</button></li>
						<li><button id="day4_2">Day 4   하체 어깨 이두 삼두</button></li>
					</ul>
				<p>하체 어깨 이두 삼두</p>
				<p>48분</p>
			</div>
			<div class="ex_content_p6">
				<div id="slider-wrap">
					<ul id="slider">
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_2.jpg"><br>
									<p>1. 바를 끝까지 내립니다.<br><br>
										2. 어깨 너비보다 약간 더 넓은 손과 오버 핸드 그립으로 바를 잡습니다.<br><br>
										3. 등을 똑바로 유지하고 무릎을 약간 구부린 다음<br> 
											체중을 몸쪽으로 당깁니다.<br><br>
										4. 천천히 무릎까지 낮추고 반복합니다.</p><br>
						</li>
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_6.jpg"><br>
									<p>1. 상체와 엉덩이를 머신에 밀착 고정합니다.<br><br>
										2. 발은 어깨너비 또는 조금 더 넓게 위치합니다.<br><br>
										3. 발꿈치에 힘을 주어 밀고 호흡을 내뱉는다.<br>
										   (무릎을 다펴지않아야한다 부상위험)<br><br>
										4. 신전될 때는 숨을 마시며 다리가 90도가  될 때 까지 구부립니다.</p><br>
						</li>
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_7.jpg"><br>
									<p>1. 다리를 벌리고 앉아 핸들을 잡고 패드에 등을 고정합니다.<br><br>
										2. 몸통이 흔들리지 않도록 코어<br>
											(복횡근, 횡경막근, 다열근, 골반저근)<br>
											힘을 주고 다리를 안쪽으로 모아줍니다.<br><br>
										3. 10~15회 반복 1세트 총 3~5세트 반복 진행합니다.</p><br>
						</li>
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_9.jpg"><br>
									<p>1. 자신 근력에 맞게 무게 추 조정합니다.<br><br>
										2. 롤패드에 발목을 고정시킵니다.<br><br>
										3. 기구와 몸을 밀착하고 손잡이를 잡습니다.<br><br>
										4. 허벅지에 힘을 주고 패드를 들어 올리며 숨을 뱉습니다.<br><br>
										5. 숨을 마시며 천천히 내려줍니다.</p><br>
						</li>
					</ul>
					<!--controls-->
					<div class="btns" id="next">
						<i class="fa fa-arrow-right"></i>
					</div>
					<div class="btns" id="previous">
						<i class="fa fa-arrow-left"></i>
					</div>
		
					<!--controls-->
				</div><br><br>
	
				<div id="ViewTimer"></div>
				<button onclick="start_time();">타이머 시작</button>
				<button onclick="stop_time();">타이머 종료</button>
				<button onclick="self.location='ex_recomm_stretching?userNum=${userNum}'">뒤로</button>
			</div>
		</div>
	</div>
	
	
<script>
	//current position
	var pos = 0;
	//number of slides
	var totalSlides = $('#slider-wrap ul li').length;
	//get the slide width
	var sliderWidth = $('#slider-wrap').width();


	$(document).ready(function(){
	  
	  //set width to be 'x' times the number of slides
	  $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
	  
	    //next slide  
	  $('#next').click(function(){
	    slideRight();
	  });
	  
	  //previous slide
	  $('#previous').click(function(){
	    slideLeft();
	  });

	  
	  //hide/show controls/btns when hover
	  //pause automatic slide when hover
	  $('#slider-wrap').hover(
	    function(){ $(this).addClass('active'); }, 
	    function(){ $(this).removeClass('active'); }
	  );

	});//DOCUMENT READY	
	  
	function slideLeft(){
	  pos--;
	  if(pos==-1){ pos = totalSlides-1; }
	  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
	  
	  //*> optional
	  countSlides();
	  pagination();
	}

	function slideRight(){
	  pos++;
	  if(pos==totalSlides){ pos = 0; }
	  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
	  
	  //*> optional 
	  countSlides();
	  pagination();
	}
	
	var SetTime = 0;		// 최초 설정 시간(기본 : 초)
	function msg_time() {	// 1초씩 카운트
		m = (Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초");	// 남은 시간 계산
		var msg = "<h2>" + m + "</h2>";
		document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
		SetTime--;					// 1초씩 감소
		if (SetTime < 0) {			// 시간이 종료 되었으면..
			clearInterval(tid);		// 타이머 해제
// 			$("#ViewTimer").hide();
//				alert("종료");
		}
	};

	function start_time() {
		SetTime = 60;
		tid=setInterval('msg_time()',1000);
		$("#ViewTimer").show();
	};
	function stop_time() {
		clearInterval(tid);
		$("#ViewTimer").hide();
	};
</script>


	<%@include file="../../include/footer.jsp"%>