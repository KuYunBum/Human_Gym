<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		var rn = "${newList}";
		rn = rn.split(",");
		
		var num = document.getElementsByTagName("input").length;
		for (var i = 0; i < rn.length; i++) {
			var targetrn = rn[i];
			for (var j = 0; j < num; j++) {
				var checkTarget = document.getElementsByTagName("input")[j].value;
				if (checkTarget == targetrn) {
					document.getElementsByTagName("input")[j].checked = true;
				}
			}
		}
		alert(rn.length);
		
		if ($("#cheast").click(function() {
		})) {
			$("#inputCheast").show();
			$("#inputShoulder").hide();
			$("#inputArm").hide();
			$("#inputBack").hide();
			$("#inputLeg").hide();
			$("#inputAbs").hide();
		}
		$("#cheast").click(function() {
			$("#inputCheast").show();
			$("#inputShoulder").hide();
			$("#inputArm").hide();
			$("#inputBack").hide();
			$("#inputLeg").hide();
			$("#inputAbs").hide();
		});
		$("#shoulder").click(function() {
			$("#inputShoulder").show();
			$("#inputCheast").hide();
			$("#inputArm").hide();
			$("#inputBack").hide();
			$("#inputLeg").hide();
			$("#inputAbs").hide();
		});
		$("#back").click(function() {
			$("#inputBack").show();
			$("#inputCheast").hide();
			$("#inputShoulder").hide();
			$("#inputArm").hide();
			$("#inputLeg").hide();
			$("#inputAbs").hide();
		});
		$("#arm").click(function() {
			$("#inputArm").show();
			$("#inputCheast").hide();
			$("#inputShoulder").hide();
			$("#inputBack").hide();
			$("#inputLeg").hide();
			$("#inputAbs").hide();
		});
		$("#leg").click(function() {
			$("#inputLeg").show();
			$("#inputCheast").hide();
			$("#inputShoulder").hide();
			$("#inputArm").hide();
			$("#inputBack").hide();
			$("#inputAbs").hide();
		});
		$("#abs").click(function() {
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
	<h2 style="font-family: 'Lato', sans-serif;">Modify Routine</h2>
	<br> <br>
	<%@include file="../../include/myPageNav.jsp"%>

	<hr style="width: 1300px; margin: auto;">


	<form role="form" method="post" style="height: 500px">
		<input type="hidden" name="userNum" value="${list.userNum }">

		<div class="myPageNav2">
			<div class="leftContainer">
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

			<div class="rightContainer">
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
							<input type="checkbox" name="routineEx" value="숄더 덤벨 프레스">
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
							<p id="checkP">풀업</p>
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
					<br> <br> Routine Name : <input class="ab3t" type="text"
						name='routineName' value="${list.routineName}">
				</div>
			</div>
		</div>
	</form>

	<hr style="width: 1300px; margin: auto;">
	<br>
	<div class="bt_box">
		<button id="myBtn1" type="submit" class="bt_save">저장</button>
		<button id="myBtn1" type="button"
			onclick="location.href='/project/user/routine/routineBox?userNum=${userNum}'">취소</button>
	</div>
</div>

<%@include file="../../include/footer.jsp"%>