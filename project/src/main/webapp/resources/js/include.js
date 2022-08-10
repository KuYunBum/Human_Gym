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
		
//		var video = document.getElementById("video"); 
//
//		function pauseVideo() { 
//			video.pause(); 
//		} 
        
     	$('.ex_sub').hide();

    	$('.more_bt').on("click", function(){
    		$('.ex_sub').slideToggle();
    	});
        
    	
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