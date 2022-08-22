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

