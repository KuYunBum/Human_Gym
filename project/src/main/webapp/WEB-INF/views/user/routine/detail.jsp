<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.0.0/dist/tf.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<%@include file="../../include/header.jsp"%>

<script type="text/javascript">
var Input_Routine = [[0]];

var rn = "${newList}";
rn = rn.split(",");

alert("🙌 AI 분석을 시작합니다. 잠시만 기다려주세요!");

if(rn.length < 3){
	Input_Routine = [[1]]
}else if(rn.length < 5){
	Input_Routine = [[2]]
}else if(rn.length < 8){
	Input_Routine = [[3]]
}else if(rn.length < 10){
	Input_Routine = [[4]]
}else if(rn.length < 13){
	Input_Routine = [[5]]
}else if(rn.length < 15){
	Input_Routine = [[6]]
}else if(rn.length < 18){
	Input_Routine = [[7]]
}else if(rn.length < 20){
	Input_Routine = [[8]]
}else if(rn.length < 25){
	Input_Routine = [[9]]
}else if(rn.length < 31){
	Input_Routine = [[10]]
}


var Selected_Exercise = [
  [1], 	//3
  [2],	//5
  [3],	//8
  [4],	//10
  [5],	//13
  [6],	//15
  [7],	//18
  [8],	//20
  [9],	//25
  [10]	//30

];

var Exercise_Results = [

    // 골격근량, 체지방률,BMI, 복부지방률, 내장지방률
    [0.5, 0.8, 0.8, 1.5, 1.5],
    [0.7, 1.0, 1.0, 1.5, 1.5],
    [1.0, 1.3, 1.3, 1.5, 1.5],
    [1.2, 1.5, 1.5, 1.5, 1.5],
    [1.4, 2.0, 2.0, 1.5, 1.5],
    [1.6, 2.2, 2.2, 1.5, 1.5],
    [2.2, 2.5, 2.5, 2.0, 2.0],
    [2.4, 3.0, 3.0, 2.2, 2.2],
    [2.7, 3.5, 3.5, 2.5, 2.5],
    [3.0, 3.8, 3.8, 3.0, 3.0],

];

  </script>
  

<div class="main">
	<h2 style="
		font-family: 'Lato', sans-serif;">
		My Routine</h2>
		<br><br>
	<%@include file="../../include/myPageNav.jsp"%>
	<hr style="width: 1300px; margin: auto;">

	<div class="myPageNav3">
		<div class="rcText" style="margin: 120px auto;">
			<form role="form" method="post">
				<input type="hidden" name="userNum" value="${routineDTO.userNum }">
			</form>
			<table id="customers" style="width: 1000px; color:black;">
				<tr class="board_title">
					<th>Routine Number</th>
					<th style="width:200px;">Routine Name</th>
		            <th style="width:700px;">Selected Exercise</th>
				</tr>

				<tr>
					<td>${list.routineNum}</td>
					<td>${list.routineName}</td>
					<td>${list.routineEx}</td>
				</tr>
			</table>
			
			<h2>AI 한달 후 신체 수치 변화 예상</h2><br>
			<di
			v style="display:flex; width: 70%; margin:40px auto;justify-content: center;">
				<div style="text-align: right;">
					<h4>골격근량 :</h4>
					<h4>체지방률 :</h4>
					<h4>BMI :</h4>
					<h4>복부지방률: </h4>
					<h4>내장지방률: </h4>
				</div>
			
				<div style="margin-left:10px;text-align: right;">
				<h4><p id="text1"></p></h4>
				<h4><p id="text2"></p></h4>
				<h4><p id="text3"></p></h4>
				<h4><p id="text4"></p></h4>
				<h4><p id="text5"></p></h4>
				</div>
				<div style="width: 80px;margin-left:5px;text-align: left;border-right: 1px solid;">
					<h4><p>kg 증가!</p></h4>
					<h4><p>kg 감소!</p></h4>
					<h4><p>kg 감소!</p></h4>
					<h4><p>%  감소!</p></h4>
					<h4><p>%  감소!</p></h4>
				</div>
				
				<div class="container" style="width: 400px; height: 400px;">신체 변화 그래프<canvas id="myChart"></canvas></div>

	<script type="text/javascript">

   var Selected_Routine = tf.tensor(Selected_Exercise);

   var Result = tf.tensor(Exercise_Results);

    var X = tf.input({ shape: [1] });

            var Y = tf.layers.dense({ units: 5 }).apply(X);

            var model = tf.model({ inputs: X, outputs: Y });

            var compileParam = { optimizer: tf.train.adam(), loss: tf.losses.meanSquaredError }

            model.compile(compileParam);

            
    var fitParam = {
//     		학습량
    		epochs: 20,
                callbacks: {
                    onEpochEnd:
                        function (epoch, logs) {
                            console.log('epoch', epoch, logs, 'RMSE=>', Math.sqrt(logs.loss));

                        }
                }
            } 
            
	    Input_Routine = tf.tensor(Input_Routine);



    	model.fit(Selected_Routine, Result, fitParam).then(function (result) {


        var Ai_Result = model.predict(Input_Routine);

        Ai_Result.print();

        var result = Ai_Result.arraySync();

        console.log("------골격근량, -------체지방량, -------bmi, -------복부비만률")
        console.log("골격근량" + result[0][0])
        console.log("체지방량" + result[0][1])
        console.log("bmi" + result[0][2])
        console.log("복부비만률" + result[0][3])
        console.log("내장비만률" + result[0][4])
        alert("AI 분석 완료!");
        
        var str1 = document.getElementById("text1");
        str1.innerHTML = Math.round(result[0][0]*100)/100.0;
        var str2 = document.getElementById("text2");
        str2.innerHTML = Math.round(result[0][1]*100)/100.0;
        var str3 = document.getElementById("text3");
        str3.innerHTML = Math.round(result[0][2]*100)/100.0;
        var str4 = document.getElementById("text4");
        str4.innerHTML = Math.round(result[0][3]*100)/100.0;
        var str5 = document.getElementById("text5");
        str5.innerHTML = Math.round(result[0][3]*100)/100.0;
        
    

    	var context = document.getElementById("myChart")
    	var labelNames = [ "골격근량", "체지방량", "BMI", "복부지방률", "내장지방률" ];
    	
    	var userArm = Math.round(result[0][0]*100)/100.0;
    	var userUpper = Math.round(result[0][1]*100)/100.0;
    	var userBack = Math.round(result[0][2]*100)/100.0;
    	var userLower = Math.round(result[0][3]*100)/100.0;
    	var userCore = Math.round(result[0][4]*100)/100.0;
    	
    	var getData = '${chartData}';

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
    					max : 5, // 축 최대 값
    					stepSize : 1, // 그리드 간격 값
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
    	});
  </script>


			</div>
			
		</div>
	</div>
</div>

<hr style="width: 1300px; margin: auto;">
<br>

<div class="bt_box">

	<button id="myBtn1" type="button"
		onclick="location.href='/project/user/routine/update?routineNum=${list.routineNum}'">수정</button>
	<button id="myBtn1" type="submit" onclick="location.href='/project/user/routine/delete?userNum=${userNum}&routineNum=${list.routineNum}'">삭제</button>
	<button id="myBtn1" type="button"
		onclick="location.href='/project/user/routine/routineBox?userNum=${userNum}'">뒤로</button>
</div>
</div>
<%@include file="../../include/footer.jsp"%>