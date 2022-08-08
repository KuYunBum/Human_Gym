<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

	const checkboxes = document.querySelectorAll('input[type="checkbox"]')

	let lastChecked; //keep track of last checked box

function handleCheck(e){
  let inBetween = false; 
  if (e.shiftKey === true){
    checkboxes.forEach(item => {
       //keep track of in between boxes by toggling inBetween to be true for all boxes in between, and then toggle it back to false after. If you dont understand, go through line by line what happen to each box when click and shift.
       if (item === this || item === lastChecked){
         inBetween = !inBetween;
       }
       //check every box in between
       if (inBetween){
         item.checked = true;
       }
    })
  }
  
  lastChecked = this //keep track of last checked box
}

checkboxes.forEach(item => item.addEventListener('click', handleCheck));
</script>

<script>
        $(document).ready(function () {
            if ($("#cheast").click(function () {
            })) {
                $("#inputCheast").show();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
                $("#inputAbs").hide();
            }

            // -------------------------
            $("#cheast").click(function () {
                $("#inputCheast").show();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
                $("#inputAbs").hide();
            });
            $("#shoulder").click(function () {
                $("#inputShoulder").show();
                $("#inputCheast").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
                $("#inputAbs").hide();
            });
            $("#back").click(function () {
                $("#inputBack").show();
                $("#inputCheast").hide();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputLeg").hide();
                $("#inputAbs").hide();
            });
            $("#arm").click(function () {
                $("#inputArm").show();
                $("#inputCheast").hide();
                $("#inputShoulder").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
                $("#inputAbs").hide();
            });
            $("#leg").click(function () {
                $("#inputLeg").show();
                $("#inputCheast").hide();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
                $("#inputAbs").hide();
            });
            $("#abs").click(function () {
            	$("#inputAbs").show();
                $("#inputLeg").hide();
                $("#inputCheast").hide();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
            });
        });
    </script>

<%@include file="../../include/header.jsp"%>
<div class="main">
	<h1>내 루틴 커스텀</h1>
	<br>
	<br>
	<%@include file="../../include/myPageNav.jsp"%>

	<hr style="width: 1300px; margin: auto;">

	<form role="form" method="post">
		<input type="hidden" name="userNum" value="${userNum}">

		<div class="myPageNav2" style="height: 40%;">
			<div class="leftContainer" style="height: 800px;">
				<h3>운동 부위</h3>
				<ul>
					<li id="cheast">가슴</li>
					<li id="shoulder">어깨</li>
					<li id="back">등</li>
					<li id="arm">팔</li>
					<li id="leg">하체</li>
					<li id="abs">복근</li>

				</ul>
			</div>

			<div class="heightLine"></div>

			<div class="rightContainer" style="height: 800px;">
				<h3 style="margin: 0 5%;">운동 정보</h3>
				<div class="rcText">
					<ul id="inputCheast">
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="벤치 프레스">
							<p id="checkP">벤치 프레스</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="덤벨 프레스">
							<p id="checkP">덤벨 프레스</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="인클라인 벤치 프레스">
							<p id="checkP">인클라인 벤치 프레스</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="인클라인 덤벨 프레스">
							<p id="checkP">인클라인 덤벨 프레스</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="펙텍 플라이">
							<p id="checkP">펙텍 플라이</p>
						</div>
					</ul>

					<ul id="inputShoulder">
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="밀리터리 프레스">
							<p id="checkP">밀리터리 프레스</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="덤벨 프레스">
							<p id="checkP">덤벨 프레스</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="사이드 레터럴 레이즈">
							<p id="checkP">사이드 레터럴 레이즈</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="전면 레이즈">
							<p id="checkP">전면 레이즈</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="후면 레이즈">
							<p id="checkP">후면 레이즈</p>
						</div>
					</ul>

					<ul id="inputBack">
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="렛풀 다운">
							<p id="checkP">렛풀 다운</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="바벨 로우">
							<p id="checkP">바벨 로우</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="덤벨 로우">
							<p id="checkP">덤벨 로우</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="시티드 로우">
							<p id="checkP">시티드 로우</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="풀업">
							<p>풀업</p id="checkP">
						</div>
					</ul>

					<ul id="inputArm">
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="바벨컬">
							<p id="checkP">바벨컬</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="덤벨컬">
							<p id="checkP">덤벨컬</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="헤머컬">
							<p id="checkP">헤머컬</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name=routineEx value="케이블 푸쉬 다운">
							<p id="checkP">케이블 푸쉬 다운</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="케이블 로프 다운">
							<p id="checkP">케이블 로프 다운</p>
						</div>
					</ul>

					<ul id="inputLeg">
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="스쿼트">
							<p id="checkP">스쿼트</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="데드 리프트">
							<p id="checkP">데드 리프트</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="레그 프레스">
							<p id="checkP">레그 프레스</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="레그 익스텐션">
							<p id="checkP">레그 익스텐션</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="힙 스트러스">
							<p id="checkP">힙 스트러스</p>
						</div>
					</ul>

					<ul id="inputAbs">
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="윗몸 일으키기">
							<p id="checkP">윗몸 일으키기</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="크런치">
							<p id="checkP">크런치</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="V 크런치">
							<p id="checkP">V 크런치</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="케이블 크런치">
							<p id="checkP">케이블 크런치</p>
						</div>
						<div class="routineItem">
							<input type="checkbox" name="routineEx" value="레그 레이즈">
							<p id="checkP">레그 레이즈</p>
						</div>
					</ul>
					<br>
					<br> Routine Name : <input class="ab3t" type="text"
						name='routineName' value="${routineDTO.routineName}">


				</div>
			</div>
		</div>
	</form>

	<hr style="width: 1300px; margin: auto;">
	<br>

	<div class="bt_box">
	
	<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		$(".submit").on("click", function() {
			formObj.attr("action", "/project/user/routine/insert");
			formObj.submit();
		});
	});
</script>
		<button id="myBtn1" class="submit">저장</button>
		<button id="myBtn1" type="button"
			onclick="location.href='/project/user/routine/routineBox?userNum=${userNum}'">뒤로</button>
	</div>
	<script>
				    const btn = document.getElementById('btn1')
				
				    const onclick = e => {
				      const { x, y, width, height } = btn.getBoundingClientRect()
				      const radius = Math.sqrt(width * width + height * height)
				      btn.style.setProperty('--diameter', radius * 2 + 'px')
				      const { clientX, clientY  } = e
				      const left = (clientX - x - radius) /width * 100 + '%'
				      const top = (clientY - y -radius) / height * 100 + '%'
				
				      btn.style.setProperty('--left',left)
				      btn.style.setProperty('--top',top)
				      btn.style.setProperty('--a','')
				      setTimeout(() => {
				        btn.style.setProperty('--a', 'ripple-effect 500ms linear')
				      })
				    }
				    btn.addEventListener('click', onclick)
  				</script>
</div>

<%@include file="../../include/footer.jsp"%>