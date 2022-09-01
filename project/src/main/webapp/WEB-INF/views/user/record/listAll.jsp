<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../../include/header.jsp"%>

<div class="main">
	<h2 style="font-family: 'Lato', sans-serif;">Exercise Record</h2>
	<br> <br>

	<%@include file="../../include/myPageNav.jsp"%>

	<hr style="width: 1300px; margin: auto;">

	<div class="myPageNav2">
		<div class="leftContainer">
			<h3>프로필 사진</h3>
			<div class="profillePhoto">
				<img src="/project/resources/image/arnold.jpeg">
			</div>
		</div>
		<div class="heightLine"></div>

		<div class="rightContainer">
			<div class="rcText">
				<div style="text-align: right;">
					<p>
						부상 위험 정도는 __<b id="danger"></b>__입니다.
					</p>
					<p>
						※<b style="color: #1E90FF"> 날짜</b>를 누르면 수정가능합니다.
					</p>
					<!-- <div id="view"></div> -->
				</div>
				<table id='record_tb' border="1" style="float: left;">
					<tr>
						<td><h4>운동 날짜</h4></td>
						<td><h4>운동 시간</h4></td>
						<td><h4>시작 시간</h4></td>
						<td><h4>끝난 시간</h4></td>
					</tr>
					<c:forEach items="${list}" var="RecordDTO">
						<tr>
							<td><a
								href="/project/user/record/update?userNum=${RecordDTO.userNum}&recordNum=${RecordDTO.recordNum}"
								style="text-decoration: none;"> <fmt:formatDate
										pattern="yyyy-MM-dd" value="${RecordDTO.useDate}" /></a></td>
							<td>${RecordDTO.playTime}</td>
							<td>${RecordDTO.startHour}시${RecordDTO.startMinute}분</td>
							<td>${RecordDTO.endHour}시${RecordDTO.endMinute}분</td>
						</tr>
					</c:forEach>
				</table>
				<table id='record_tb' border="1" style="width: 40%;">
					<tr>
						<td><h4>운동 이름</h4></td>
						<td colspan="1"><h4>운동 횟수</h4></td>
					</tr>
					<c:forEach items="${exlist}" var="el">
						<tr>
							<td colspan="1">${el.exName}</td>
							<td colspan="1">${el.setCount}</td>
						</tr>
					</c:forEach>
				</table>
				<div class="container" style="width: 400px; height: 400px;">
					<!--차트가 그려질 부분-->
					<canvas id="myChart"></canvas>
				</div>
			</div>
		</div>
	</div>

	<hr style="width: 1300px; margin: auto;">
	<br>

	<div class="bt_box">
		<button id="myBtn1" type="submit" class="inbody_insert">입력</button>
		<button id="myBtn1"
			onclick="location.href='/project/user/record/record?userNum=${userNum}'">뒤로</button>
	</div>
</div>

<%@include file="../../include/footer.jsp"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
	
</script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">
	var context = document.getElementById("myChart")
	var labelNames = [ "삼두,이두,전완", "가슴,어깨", "등", "허벅지,엉덩이,종아리", "복근,코어" ];

	var userArm = '${arm}';
	var userUpper = '${upper}';
	var userBack = '${back}';
	var userLower = '${lower}';
	var userCore = '${core}';

	var getData = '${chartData}';
	console.log(getData);

	var arr = getData.split("],");

	var ability = [ userArm, userUpper, userBack, userLower, userCore ];
	var myChart = new Chart(context, {
		type : 'radar', // 차트의 형태
		data : {
			labels : labelNames,
			datasets : [ {
				fill : true,
				backgroundColor : "rgba(32,140,236,0.7)",
				borderColor : "rgba(32,140,236,1)",
				pointBorderColor : "#fff",
				pointBackgroundColor : "rgba(179,181,198,1)",
				data : ability
			} ]
		},
		options : {
			responsive : true,
			legend : {
				display : false
			}, // 차트 데이터 이름 숨기기
			scale : { //// <= radar 타입 차트 처럼 축이 한개인 차트는 scales 를 쓰면 안됩니다.
				ticks : {
					beginAtZero : true,
					min : 0, // 축 최소 값
					max : 100, // 축 최대 값
					stepSize : 20, // 그리드 간격 값
					display : false, // 그리드 숫자 숨기기
				},

				pointLabels : {
					fontSize : 18,
					fontColor : "rgba(128,128,128,1)"
				}
			},

			title : {
				display : false
			}
		}
	});
</script>
<script
	src="https://cdn.jsdelivr.net/npm/danfojs@0.1.2/dist/index.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@2.4.0/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-vis"></script>

<script>
	dfd.read_csv('/project/resources/csv/data2.csv').then(
			function(data) {
				console.log(data);
				data.print();
				부위 = data.loc({
					columns : [ '상체', '등', '팔', '하체', '코어' ]
				});
				부위.print();
				var encoder = new dfd.OneHotEncoder();
				종속변수 = encoder.fit(data['부상']);
				/*  data['부상'].print();// 종속변인 품종 1개의 컬럼 출력 */
				종속변수.print();// 하나의 칼럼을 여러 개의 컬럼으로 01의 값을 넣어 분리한 컬럼 출력 

				var X = tf.input({
					shape : [ 5 ]
				});
				var H = tf.layers.dense({
					units : 5,
					activation : 'relu'
				}).apply(X);

				//출력층 컬럼 설정>> 출력되는 컬럼의 가지수=units
				var Y = tf.layers.dense({
					units : 3,
					activation : 'softmax'
				}).apply(H);

				//모델 생성
				model = tf.model({
					inputs : X,
					outputs : Y
				});
				var compileParam = {
					optimizer : tf.train.adam(),
					loss : 'categoricalCrossentropy',
					metrics : [ 'accuracy' ]
				}
				model.compile(compileParam);
				//결과 출력    
				_history = [];
				var fitParam = {
					epochs : 1000, //몇번 학습할 것인가
					callbacks : {
						onEpochEnd : function(epoch, logs) {
							console.log('epoch', epoch, logs, 'RMSE=>', Math
									.sqrt(logs.loss));
						}
					}
				}
				//학습결과 확인

				var userArm = parseInt('${arm}');
				var userUpper = '${upper}';
				userUpper = parseInt(userUpper);
				var userBack = '${back}';
				var userLower = '${lower}';
				var userCore = '${core}';
				model.fit(부위.tensor, 종속변수.tensor, fitParam).then(
						function(result) {
							var New = [ [ userUpper, '${arm}', '${back}',
									'${lower}', '${core}' ] ];
							var New = tf.tensor(New);
							예측한결과 = new dfd.DataFrame(model.predict(New));
							var result = 예측한결과.data;
							console.log(result);
							console.log(result[0]);

							for (var i = 0; i < 3; i++) {
								if (result[0][i] > 0.5) {
									$("#view").text(result[0][i]);
								}
							}

							for (var i = 0; i < 3; i++) {
								if (result[0][i] > 0.5) {
									if (i == 0) {
										$("#danger").text("좋음");
									} else if (i == 1) {
										$("#danger").text("주의");
									} else {
										$("#danger").text("위험");
									}
								}
							}
						});
			})
</script>