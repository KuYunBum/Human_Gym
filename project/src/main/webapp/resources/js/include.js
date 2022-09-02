/**
 * 
 */

		var formObj = $("form[role='form']");

		$(".bt_save").on("click", function() {
			formObj.submit();
		});
		$(".bt_save1").on("click", function() {
			formObj.submit();
		});
		
		$(".board_list").on("click", function(){
			self.location = "/project/board/list";
		});
		
		
		
		$(".board_delete").on("click", function(){
			formObj.attr("action", "/project/board/delete");
			formObj.submit();
		});
		
		$(".admin_insert").on("click", function() {
			location.href = "/project/admin/insert"
		});
		
		$(".admin_delete").on("click", function() {
			formObj.attr("action", "/project/admin/delete");
			formObj.submit();
		});
		
		$(".admin_list").on("click", function() {
			location.href = "/project/admin/list"
		});
		
		$(".user_delete").on("click", function() {
			formObj.attr("action", "/project/user/delete");
			formObj.submit();
		});

		

		
//		ex_recomm
        
		//ex 서브메뉴
     	$('.ex_sub').hide();

    	$('.more_bt').on("click", function(){
    		$('.ex_sub').slideToggle();
    	});
    	
    	//ex 비디오 start / stop
    	var video1 = document.getElementById("myVideo1");
    	var video2 = document.getElementById("myVideo2");
    	var count = 1;
    	
    	$('.stretching_2').hide();
    	
    	$('#stretching1').on("click", function() {
    		$('.ex_sub').slideUp();
    		count = 1;
    		$('.stretching_2').hide();
			video2.pause();
			$("#videoStop").hide();
			$("#videoPlay").show();
    		$('.stretching_1').show();
    	});
    	$('#stretching2').on("click", function() {
    		$('.ex_sub').slideUp();
    		count = 2;
    		$('.stretching_1').hide();
			video1.pause();
			$("#videoStop").hide();
			$("#videoPlay").show();
    		$('.stretching_2').show();
    	});
    	
    	window.onload = function(){
    			video1.addEventListener('timeupdate', function(e){
    				// 현재 재생 시간 (초 단위 절삭)     
    				var playtime = Math.floor(video1.currentTime);
    				var p_m = Math.floor(playtime/60);
    				var p_s = playtime%60;
    				// 전체 재생 시간 (초 단위 절삭)      
    				var total = Math.floor(video1.duration); 
    				var t_m = Math.floor(total/60);
    				var t_s = total%60;
    				// 상태 표시    
    				$("#videoProgress1").html(p_m+":"+p_s + " / " + t_m+":"+t_s);
    			}, false);
    			video2.addEventListener('timeupdate', function(e){
    				// 현재 재생 시간 (초 단위 절삭)     
    				var playtime = Math.floor(video2.currentTime);
    				var p_m = Math.floor(playtime/60);
    				var p_s = playtime%60;
    				// 전체 재생 시간 (초 단위 절삭)      
    				var total = Math.floor(video2.duration); 
    				var t_m = Math.floor(total/60);
    				var t_s = total%60;
    				// 상태 표시    
    				$("#videoProgress2").html(p_m+":"+p_s + " / " + t_m+":"+t_s);
    			}, false);
    	};
    	
    	$("#videoStop").hide();
    	
		$("#videoPlay").on("click", function() {
			if(count==1){
				video1.play();
			}else{
				video2.play();
			}
			$(this).hide();
			$("#videoStop").show();
		});    
		$("#videoStop").on("click", function() {
			if(count==1){
				video1.pause();
			}else{
				video2.pause();
			}
			$(this).hide();
			$("#videoPlay").show();
		});
		 
		
//		타이머
		var SetTime = 60;		// 최초 설정 시간(기본 : 초)
		var toggle = false;
		function msg_time() {	// 1초씩 카운트
			m = (Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초");	// 남은 시간 계산
			var msg = "<h2>" + m + "</h2>";
			document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
			SetTime--;					// 1초씩 감소
			if (SetTime < 0) {			// 시간이 종료 되었으면..
				clearInterval(tid);		// 타이머 해제
			}
		};

		function start_time() {
	        if(toggle==false){
	            // 반복 재개(재시작)
	            tid=setInterval('msg_time()',1000);
	            toggle = true;
	        }else{
	            // 반복 중단
	            clearInterval(tid);
	            toggle = false;
	        }
		};
		function reset_time() {
			SetTime = 60;
		};
		
		
		
		var exNum = 0;
		
		function startAI() {
			$('#resultAI').html("이곳에 추천운동이 표시됩니다.");
			$( '.ex_content_p1_1' ).animate( {
			    opacity: '1'
			  },1000);
//		     self.location='ex_recomm_start?userNum=${userNum}';
		//dfd는 danfojs의 모듈의 이름이다. read_csv를 이용하여 해당 링크의 데이터를 읽어온다.
		  //웹에서 제공하는 분꽃 데이터를 읽어오는 부분이다.  
		dfd.read_csv('/project/resources/csv/ex.csv').then(function(data){
		       // console.log(data);
		        //data.print(); //읽어온 데이터를 표형태로 출력한다.
			//종속변수 컬럼 선정
		        //상품,성별,나이
		        독립변수 = data.loc({columns:['가슴','어깨','등','팔','하체','복근']});
		       // 독립변수.print(); //선정한 독립변수 출력
		     
		//하나의 종속변수를 여러개로 분리 0과 1의 데이터를 넣는다.
		       
		        종속변수 = data.loc({columns:['상체운동','하체운동','코어운동','유산소운동']});
		        //data['품종'].print();// 종속변인 품종 1개의 컬럼 출력
		        //종속변수.print();// 하나의 칼럼을 여러 개의 컬럼으로 01의 값을 넣어 분리한 컬럼 출력 
		//입력층 4개의 컬럼 설정

		  console.log(독립변수)
		  console.log(종속변수)
		var X = tf.input({ shape: [6]});
		        	//딥러닝을 위한 히든 레이어
		        var H = tf.layers.dense({ units: 6, activation:'relu'}).apply(X);

		      	//출력층 3개의 컬럼 설정
		        var Y = tf.layers.dense({ units: 4, activation:'softmax'}).apply(H);   

			//모델 생성
		        model = tf.model({ inputs: X, outputs: Y });
		        var compileParam = { optimizer: tf.train.adam(), loss: 'categoricalCrossentropy', metrics:['accuracy'] }
		        model.compile(compileParam);   
		//결과 출력    
		       // tfvis.show.modelSummary({name:'요약', tab:'모델'}, model);
		  // 3. 데이터로 모델을 학습시킵니다. 
		  _history = [];
		        var fitParam = { 
		          epochs: 300, //몇번 학습할 것인가
		          callbacks:{
		            onEpochEnd:
		              function(epoch, logs){
		                console.log('epoch', epoch, logs, 'RMSE=>', Math.sqrt(logs.loss));
		                // _history.push(logs);
		                // tfvis.show.history({name:'loss', tab:'역사'}, _history, ['loss']);
		                // tfvis.show.history({name:'accuracy', tab:'역사'}, _history, ['acc']);
		              }
		          }
		        }        
			//학습결과 확인
		        model.fit(독립변수.tensor, 종속변수.tensor, fitParam).then(function (result) {
					var i1 = $('#i1').val();
					var i2 = $('#i2').val();
					var i3 = $('#i3').val();
					var i4 = $('#i4').val();
					var i5 = $('#i5').val();
					var i6 = $('#i6').val();
		            // 4. 모델을 이용합니다. 
		            // 4.1 기존의 데이터를 이용
		            var New상품 = [[]]
		            New상품[0][0]=Number(i1);
		            New상품[0][1]=Number(i2);
		            New상품[0][2]=Number(i3);
		            New상품[0][3]=Number(i4);
		            New상품[0][4]=Number(i5);
		            New상품[0][5]=Number(i6);
		            var New상품 = tf.tensor(New상품);
		            예측한결과 = new dfd.DataFrame(model.predict(New상품));
		            
		            var result = 예측한결과.data;
		            console.log(result);
		            const arr = result[0];
		            const maxValue = Math.max.apply(null, arr);
//		            const minValue = Math.min.apply(null, arr);
//	           		$('#resultAI').html("MAX : "+maxValue+"  MIN : "+minValue);

		           	if(result[0][0]==maxValue){
		           		exNum = 1;
		            	$('#resultAI').html(result[0][0].toFixed(2)+"의 확률로 상체운동이 추천되었습니다." +
		            			"<br><button id='myBtn1' onclick='startEx();'>운동하기</button>");
		           	}else if(result[0][1]==maxValue){
		           		exNum = 2;
		            	$('#resultAI').html(result[0][1].toFixed(2)+"의 확률로 하체운동이 추천되었습니다." +
		            			"<br><button id='myBtn1' onclick='startEx();'>운동하기</button>");
		           	}else if(result[0][2]==maxValue){
		           		exNum = 3;
		            	$('#resultAI').html(result[0][2].toFixed(2)+"의 확률로 코어운동이 추천되었습니다." +
		            			"<br><button id='myBtn1' onclick='startEx();'>운동하기</button>");
		           	}else if(result[0][3]==maxValue){
		           		exNum = 4;
		            	$('#resultAI').html(result[0][3].toFixed(2)+"의 확률로 유산소운동이 추천되었습니다." +
		            			"<br><button id='myBtn1' onclick='startEx();'>운동하기</button>");
		           	}else{
		           		$('#resultAI').html("다시 시도해주세요.");
		           	}
		           	
		            //예측한결과.print();
		          //  종속변수.print();
		            
		        }); 
		    })
		}
		
		function startEx() {
			if(exNum==1){
				self.location = "/project/content/ex_recomm/ex_recomm_simple1"
			}else if(exNum==2){
				self.location = "/project/content/ex_recomm/ex_recomm_simple2"
			}else if(exNum==3){
				self.location = "/project/content/ex_recomm/ex_recomm_simple1"
			}else{
				alert("다시");
			}
		}
		
    	 
//		tr_matching
		 $( '.tr_content_p1_1' ).animate( {
	          opacity: '1'
	        }, 1000, function() {
	          $( '.tr_content_p1_2' ).animate( {
	            opacity: '1'
	          }, 1000, function() {
	            $( '.tr_content_p1_3' ).animate( {
	              opacity: '1'
		        }, 1000, function() {
		          $( '.tr_content_p1_4' ).animate( {
		        	opacity: '1'
		          }, 1000, function(){
		        	  $( '.tr_content_p1' ).animate( {
		  	        	opacity: '0'
			          }, 1000, function(){ 
			        	  self.location = "/project/content/trainer"
			          });
		          });
		        });
	          });
	        });

