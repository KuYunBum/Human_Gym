<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://cdn.jsdelivr.net/npm/danfojs@0.1.2/dist/index.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@2.4.0/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-vis"></script>

	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<div class="re_tr"><img src="/project/resources/image/trainer/basicprofile.jpeg" style="width:60px;height:60px;border-radius:70%;"><h2><%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %></h2></div>
		<button onclick="retr();" class="resBtn" style="width:350px;height:70px;font-size:25px;"> 분석결과 확인하기 </button>
		<div id="trResult"><input type="text" id="trResult" style="font-size:12px;text-align:center;width:350px;border:none;"placeholder="분석중입니다. 잠시만 기다려주세요.⚠"></div>
		<div class="widthLine2"></div>
		<div class="re_tr_box">
			<div class="re_trainer">
				<img src="/project/resources/image/kimegg.jpeg" style="width: 390px;height: 400px;border-radius:70%;" >
						<br><br><h2><i>Kim Egg</i></h2>
						<div class="trainer_info"><br>
							<p><h4>💪 3대 600</h4></p>
							<p><h4>300만 구독자를 보유한</h4></p>
							<p><h4>대한민국 최고의 헬스 유튜버</h4></p>
							<p><h4>대한민국 UDT/SEAL 전역</h4></p>
							
							<button class="retr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
							
						</div>
			</div>
		</div> 
		<div class="left_re_tr_box">
			<div class="another_trainer">
				<img src="/project/resources/image/trainer/random.jpg" style="width: 390px;height: 400px;border-radius:70%;" >
						<br><br><h2><i>Other Random Trainer</i></h2>
						<div class="trainer_info"><br>
							<br>
							<p><h4>휴먼헬스짐의 더 많은 트레이너들을 만나보세요!</h4></p>
							<br><br>
							<p>👇👇</p>
							
							<!-- test -->
							<button id="randomBtn" class="randomBtn" onclick="location=.trainer">다른 트레이너</button>
							
						</div>
			</div>
		</div>
		<div class="widthLine2"></div>
		<div class="other_tr"><h2></h2></div>	
		<div class="widthLine2"></div>
		<div class="trainer">
			<div id="trainer1" class="trainer_1">
				<img src="/project/resources/image/arnold.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Arnold</h2>
				<div class="trainer_info"><br>
					<p>1967 미스터유니버스 우승</p>
					<p>1968 미스터유니버스 우승</p>
					<p>1969 미스터유니버스 우승</p>
					<p>1970 미스터올림피아 우승</p>
					
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
			<div id="trainer2" class="trainer_2">
				<img src="/project/resources/image/bigRamy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>BigRamy</h2>
				<div class="trainer_info"><br>
					<p>2017 아놀드 클래식 유럽 – 1위</p>
					<p>2018 미스터 올림피아 – 6위</p>
					<p>2020 아놀드 클래식 오하이오 – 3위</p>
					<p>2020 미스터 올림피아 – 1위</p>
					 
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
			<div id="trainer3" class="trainer_3">
				<img src="/project/resources/image/Billy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Billy</h2>
				<div class="trainer_info"><br>
					<p>2015 미스터 올림피아 - 5위</p>
					<p>2016 아놀드 클래식 유럽 – 3위</p>
					<p>2017 미스터 올림피아 – 3위</p>
					<p>2018 아놀드 클래식 오하이오 – 2위</p>
					
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
			<div id="trainer4" class="trainer_4">
				<img src="/project/resources/image/ronnieWidth.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Ronnie</h2>
				<div class="trainer_info"><br>
					<p>2007 미스터 올림피아 - 4위</p>
					<p>2006 미스터 올림피아 - 2위</p>
					<p>2005 미스터 올림피아 - 1위</p>
					<p>2004 미스터 올림피아 - 1위</p>
					
					<button class="tr_btn" onclick="location.href='/project/content/tr/tr_consult'">상담하기</button>
				</div>
			</div>	
		</div>
	</div>
	
<script>
	function retr(){
		dfd.read_csv('/project/resources/csv/re_trainer.csv').then(function(data){
       	 독립변수 = data.loc({columns:['골격근량','체지방률','BMI','복부지방률']});
       	 종속변수 = data.loc({columns:['트레이너0','트레이너1','트레이너2','트레이너3','트레이너4']});
        
	  console.log(독립변수)
	  console.log(종속변수)
		var X = tf.input({ shape: [4]});
 
        var H = tf.layers.dense({ units: 4, activation:'relu'}).apply(X);

 
        var Y = tf.layers.dense({ units: 5, activation:'softmax'}).apply(H);   

	//모델 생성
        model = tf.model({ inputs: X, outputs: Y });
        var compileParam = { optimizer: tf.train.adam(), loss: 'categoricalCrossentropy', metrics:['accuracy'] }
        model.compile(compileParam);   
	//결과 출력    
  	_history = [];
        var fitParam = { 
          epochs: 200, //몇번 학습할 것인가
          callbacks:{
            onEpochEnd:
              function(epoch, logs){
                console.log('epoch', epoch, logs, 'RMSE=>', Math.sqrt(logs.loss));
             }
          }
        }

	//학습결과 확인
        model.fit(독립변수.tensor, 종속변수.tensor, fitParam).then(function (result) {
            var NewRecord = [            
        [85,49,30,36]
              ]
            var NewRecord = tf.tensor(NewRecord);
            예측한결과 = new dfd.DataFrame(model.predict(NewRecord));
            
            var result = 예측한결과.data;
            console.log(result);
            console.log(result[0]);
            console.log(result[0][0]);
            $('#trResult').html(result);
            
            if(result[0][0]>result[0][1]){
            	if(result[0][0]>result[0][2]){
            		if(result[0][0]>result[0][3]){
            			if(result[0][0]>result[0][4]){
                        	$('#trResult').html("Kim Egg 님을 추천해드립니다.");
            			}
            		}
            	}
            }
            if(result[0][1]>result[0][0]){
            	if(result[0][1]>result[0][2]){
            		if(result[0][1]>result[0][3]){
            			if(result[0][1]>result[0][4]){
                        	$('#trResult').html("Arnold 님을 추천해드립니다.");
            			}
            		}
            	}
            }
            if(result[0][2]>result[0][0]){
            	if(result[0][2]>result[0][1]){
            		if(result[0][2]>result[0][3]){
            			if(result[0][2]>result[0][4]){
                        	$('#trResult').html("BigRamy 님을 추천해드립니다.");
            			}
            		}
            	}
            }
            if(result[0][3]>result[0][0]){
            	if(result[0][3]>result[0][1]){
            		if(result[0][3]>result[0][2]){
            			if(result[0][3]>result[0][4]){
                        	$('#trResult').html("Billy 님을 추천해드립니다.");
            			}
            		}
            	}
            }
            if(result[0][4]>result[0][0]){
            	if(result[0][4]>result[0][1]){
            		if(result[0][4]>result[0][2]){
            			if(result[0][4]>result[0][3]){
                        	$('#trResult').html("Ronnie 님을 추천해드립니다.");
            			}
            		}
            	}
            }
        });  
    })
}
</script>
	<%@include file="../include/footer.jsp"%>