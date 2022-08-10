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
				<p>등 가슴 코어 유산소</p>
				<p>55분</p>
			</div>
			<div class="ex_content_p6">
				<div id="slider-wrap">
					<ul id="slider">
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_3.jpg"><br>
										<p>1. 머신에 앉아 엉덩이와 어깨를 벤치에 밀착시킨다.<br><br>
											2. 어깨너비 두 배 정도로 양 손을 벌린 상태에서 바를 잡는다.<br><br>
											3. 운동시, 어깨로 들어 올리는 느낌으로 중량을 밀어 올린다.<br><br>
											4. 서서히 그립 바가 귀와 평행하게 될 때까지 내린다.</p><br>
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
							</div><img src="/project/resources/image/ex/health_4.jpg"><br>
										<p>1. 벤치에 엉덩이, 윗 등을 붙이고 가슴을 최대한 오픈한다.<br><br>
											2. 가슴에 힘을 주면서 앞으로 밀어준다.<br><br>
											3. 손목, 팔꿈치를 일치시킨 상태에서 뒤로 천천히 빼준다.<br><br>
											4. 다시 가슴에 힘을 주면서 밀어준다.</p><br>
						</li>
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_5.jpg"><br>
										<p>1. 어깨보다 살짝 넓은 너비로 바를 잡는다.<br><br>
											2. 팔과 몸을 일직선으로 두고, 하체는 기구에 고정한다.<br><br>
											3. 배에 힘을 줘 코어의 힘을 강하게 잡는다.<br><br>
											4. 허리가 과하게 꺾이지 않게 주의하며, 가슴과 턱을 당긴다.<br><br>
											5. 어깨가 올라가지 않도록 내려 고정한다.</p><br>
						</li>
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_8.jpg"><br>
										<p>1. 자신에게 맞는 무게를 설정합니다.<br><br>
											2. 가슴을 닫을 때 호흡을 내쉬고<br>
												가슴을 열 때 호흡을 들이 마십니다.<br><br>
											3. 가슴을 닫고 1초 정ㅇ도 유지한 후 다시 반복합니다.<br><br>
											4. 10~12회 실시 후 30~40초간 휴식합니다.</p><br>
						</li>
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_10.jpg"><br>
									<p>1. 자신에게 맞는 무게를 설정합니다.<br><br>
										2. 올라가면서 호흡을 내쉬고<br>
											내려올 때 호흡을 들이 마십니다.<br><br>
										3. 10~12회 실시 후 30~40초간 휴식합니다.</p><br>
						</li>
						<li>
							<div>
							</div><img src="/project/resources/image/ex/health_11.jpg"><br>
										<p>1. 밑 부분 발패드에 발목을 걸고<br>
												허벅지가 윗부분 패드에 평평하게 닿도록 합니다.<br><br>
											2. 골반 아랫부분만 밀착하여 윗부분 패드의 높낮이를 조절합니다.<br><br>
											3. 팔을 X자 모양으로 겹쳐 가슴에 붙이고 허리를 일자로 폅니다.<br><br>
											4. 고개와 등을 일자상태로 유지하면서 천천히 허리를 굽혔다 올라옵니다.</p><br>
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