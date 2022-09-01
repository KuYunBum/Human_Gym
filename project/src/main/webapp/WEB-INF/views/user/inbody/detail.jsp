<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.0.0/dist/tf.min.js"></script>
<script>

    var 보스톤_원인 = [

      [0, 1, 0, 0, 1, 0, 30],

      [0, 1, 0, 0, 1, 0, 30],

      [0, 1, 0, 0, 1, 0, 30]



    ];



    var 보스톤_결과 = [

      [20, 22, 22, 31],

      [20, 22, 22, 31],

      [20, 22, 22, 31]

    ];

  </script>
  
  <script>



    // 1. 과거의 데이터를 준비합니다. 

    var 원인 = tf.tensor(보스톤_원인);

    var 결과 = tf.tensor(보스톤_결과);



    // 2. 모델의 모양을 만듭니다. 

    var X = tf.input({ shape: [7] });

    var Y = tf.layers.dense({ units: 4 }).apply(X);

    var model = tf.model({ inputs: X, outputs: Y });

    var compileParam = { optimizer: tf.train.adam(), loss: tf.losses.meanSquaredError }

    model.compile(compileParam);



    // 3. 데이터로 모델을 학습시킵니다. 

    //         var fitParam = {epochs: 100}

    var fitParam = {

      epochs: 12,

      callbacks: {

        onEpochEnd:

          function (epoch, logs) {

            console.log('epoch', epoch, logs, 'RMSE=>', Math.sqrt(logs.loss));

          }

      }

    } // loss 추가 예제

    var 원인1 = [

      [0, 1, 0, 0, 1, 0, 30]

    ];

    var 원인1 = tf.tensor(원인1);



    model.fit(원인, 결과, fitParam).then(function (result) {



      // 4. 모델을 이용합니다. 

      // 4.1 기존의 데이터를 이용

      var 예측한결과 = model.predict(원인1);

      예측한결과.print();

      console.log(예측한결과.arraySync())

      var result = 예측한결과.arraySync();

      console.log(result)

//       document.write(result[0][0])
//       document.write(result[0][1])
//       document.write(result[0][2])
//       document.write(result[0][3])
      
      var str1 = document.getElementById("text1");
      str1.innerHTML = result[0][0]
      var str2 = document.getElementById("text2");
      str2.innerHTML = result[0][1]
      var str3 = document.getElementById("text3");
      str3.innerHTML = result[0][2]
      var str4 = document.getElementById("text4");
      str4.innerHTML = result[0][3]




    });

  </script>
	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h2 style="
		font-family: 'Lato', sans-serif;">
		Inbody</h2>
		<br><br>
		
		<%@include file="../../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">

		<div class="myPageNav2_1">
			<div class="leftContainer" >
				<h3>프로필 사진</h3>
				<div class="profillePhoto">
					<img src="/project/resources/image/arnold.jpeg" >
				</div>
			</div>
					
			<div class="heightLine" ></div>
				
			<div class="rightContainer" >
				<div class="rcText" >
					<table border="1" class="tableTest">
						<tr>
							<th scope="row"><h4>측정 날짜</h4></th>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
									value="${inbodyDTO.inbodyDate}" /></td> 
						</tr>
						<tr>
							<th scope="row"><h4>성별</h4></th>
							<td>${inbodyDTO.userGender}</td>
						</tr>
						<tr>
							<th scope="row"><h4>키</h4></th>
							<td>${inbodyDTO.height}</td>
						</tr>
						<tr>
							<th scope="row"><h4>몸무게</h4></th>
							<td>${inbodyDTO.weight}</td>
						</tr>
						<tr>
							<th scope="row"><h4>기초대사량(BMR)</h4></th>
							<td>${inbodyDTO.BMR}</td>
						</tr>
						<tr>
							<th scope="row"><h4>체형</h4></th>
							<td>${inbodyDTO.bodyShape}</td>
						</tr>
					</table>
					<br><br>
					<div style="width: 880px; height: auto;"><canvas id="bar-chart-horizontal" width="600" height="250"></canvas></div>
				</div>
			</div>
		</div>
		<hr style="width: 1300px; margin:auto;"><br>
				
		<div class="bt_box">
			<button id="myBtn1" type="submit" class="inbody_insert">입력</button>
			<button id="myBtn1" type="button" class="inbody_update">수정</button>
			<button id="myBtn1" onclick="location.href='/project/user/myPage?userNum=${userNum}'">뒤로</button>
		</div>
		
	</div>
	
	<script>
    new Chart(document.getElementById("bar-chart-horizontal"), {
    type: 'horizontalBar',
    data: {
        labels: ['골격근량', '체지방률', 'BMI', '복부지방률'],
      datasets: [
        {
          label: "Population (millions)",
          data: [${inbodyDTO.skeletalMuscleMass},${inbodyDTO.bodyFatMass}, ${inbodyDTO.BMI}, ${inbodyDTO.waistHipRatio}],
          backgroundColor: [
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderColor: [
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
       
       
      }
    }
});
</script>
	<%@include file="../../include/footer.jsp"%>