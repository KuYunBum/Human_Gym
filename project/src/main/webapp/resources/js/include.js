/**
 * 
 */
	$(document).ready(function(){
		

		var formObj = $("form[role='form']");

		$(".bt_save").on("click", function() {
			formObj.submit();
		});
		
		$(".board_list").on("click", function(){
			self.location = "/project/board/list";
		});
		
		$(".board_insert").on("click", function() {
			location.href = "/project/board/insert"
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
    	var video = document.getElementById("myVideo");
    	
    	$("#videoStop").hide();
    	
		$("#videoPlay").on("click", function() {
			video.play();
			$(this).hide();
			$("#videoStop").show();
		});    
		$("#videoStop").on("click", function() {
			video.pause();
			$(this).hide();
			$("#videoPlay").show();
		});
		 
		window.onload = function(){
			video.addEventListener('timeupdate', function(e){
			// 현재 재생 시간 (초 단위 절삭)     
			var playtime = Math.floor(video.currentTime);
			// 전체 재생 시간 (초 단위 절삭)      
			var total = Math.floor(video.duration); 
			// 상태 표시    
			$("#videoProgress").html(playtime + " / " + total);
			}, false);
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
	});