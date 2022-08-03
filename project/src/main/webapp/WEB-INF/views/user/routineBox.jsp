<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
        $(document).ready(function () {
            if ($("#cheast").click(function () {
            })) {
                $("#inputCheast").show();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
            }

            // -------------------------
            $("#cheast").click(function () {
                $("#inputCheast").show();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
            });
            $("#shoulder").click(function () {
                $("#inputShoulder").show();
                $("#inputCheast").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
            });
            $("#back").click(function () {
                $("#inputBack").show();
                $("#inputCheast").hide();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputLeg").hide();
            });
            $("#arm").click(function () {
                $("#inputArm").show();
                $("#inputCheast").hide();
                $("#inputShoulder").hide();
                $("#inputBack").hide();
                $("#inputLeg").hide();
            });
            $("#leg").click(function () {
                $("#inputLeg").show();
                $("#inputCheast").hide();
                $("#inputShoulder").hide();
                $("#inputArm").hide();
                $("#inputBack").hide();
            });
        });
    </script>

    <script>
        var chk_arr = [];
        function getCheckBox() {

            var routineName = document.getElementById("routineName").value;
            $("input[name=checkBox]:checked").each(function () {
                var chk = $(this).val();
                chk_arr.push(chk);
//                 alert("루틴 이름 : " + routineName + "\n" + "선택된 운동 :" + chk);
            })
            
	         const query = 'input[name="checkBox"]:checked';
	     	 const selectedEls =
	     		 document.querySelectorAll(query);
	      	  
	      	  // 선택된 목록에서 value 찾기
	      	 let result = '';
	      	 selectedEls.forEach((el) => {
	          result += el.value + "\n";
	      	  });
	      	  
	      	  // 출력
	      	  document.getElementById('rtName').innerText
	   	   		= ("\n" + routineName +"\n");
	      	 document.getElementById('rtChk').innerText
	      	    = ("\n" + result +"\n");
	      	 
	      	 
	        }
        
    </script>
	<%@include file="../include/header.jsp"%>
	<div class="main">
		<h1>내 루틴 커스텀</h1><br><br>
		<%@include file="../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">

		

		<div class="myPageNav2" style="height:40%;">
			<div class="leftContainer" >
				<h3>운동 부위</h3>
				<ul>
                <li id="cheast">가슴</li>
                <li id="shoulder">어깨</li>
                <li id="back">등</li>
                <li id="arm">팔</li>
                <li id="leg">하체</li>

            </ul>
			</div>
					
			<div class="heightLine" ></div>
				
			<div class="rightContainer">
			 <h3 style="margin:0 5%;">운동 정보</h3>
				<div class="rcText">
	                <ul id="inputCheast">
	                    <label for=""><input name="checkBox" type="checkbox" value="벤치 프레스"> <a href="#">벤치 프레스</a></label>
	                    <label for=""><input name="checkBox" type="checkbox" value="덤벨 프레스"> 덤벨 프레스</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="인클라인 벤치 프레스"> 인클라인 벤치 프레스</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="인클라인 덤벨 프레스"> 인클라인 덤벨 프레스</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="펙텍 플라이"> 펙텍 플라이</label>
	                </ul>
	                <ul id="inputShoulder">
	                    <label for=""><input name="checkBox" type="checkbox" value="밀리터리 프레스"> 밀리터리 프레스</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="덤벨 프레스"> 덤벨 프레스</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="사이드 레터럴 레이즈"> 사이드 레터럴 레이즈</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="전면 레이즈"> 전면 레이즈</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="후면 레이즈"> 후면 레이즈</label>
	                </ul>
	                <ul id="inputBack">
	                    <label for=""><input name="checkBox" type="checkbox" value="렛풀 다운"> 렛풀 다운</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="바벨 로우"> 바벨 로우</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="덤벨 로우"> 덤벨 로우</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="시티드 로우"> 시티드 로우</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="풀업"> 풀업</label>
	                </ul>
	                <ul id="inputArm">
	                    <label for=""><input name="checkBox" type="checkbox" value="바벨컬"> 바벨컬</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="덤벨컬"> 덤벨컬</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="헤머컬"> 헤머컬</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="케이블 푸쉬 다운"> 케이블 푸쉬 다운</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="케이블 로프 다운"> 케이블 로프 다운</label>
	                </ul>
	                <ul id="inputLeg">
	                    <label for=""><input name="checkBox" type="checkbox" value="스쿼트"> 스쿼트</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="데드 리프트"> 데드 리프트</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="레그 프레스"> 레그 프레스</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="레그 익스텐션"> 레그 익스텐션</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="힙 스트러스"> 힙 스트러스</label>
	                    <label for=""><input name="checkBox" type="checkbox" value="런지"> 런지</label>
	                </ul>
                <br><br>

                Routine Name : <input type="text" id="routineName" name="routineName">

                <input type="submit" value="선택" onclick="getCheckBox()" name="plz"
                    style="width: 100px;height:30px; background: greenyellow;">
                    
				</div>
			</div>
		</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
		
					${routineList.userNum}
					<br><br>
                    <h2>Routine Name</h2><br>
                  	<div id="rtName"><br></div>
                  	
                  	 ${routineList.routineName}
                    <br><br>
                    
                    <h2>선택된 루틴</h2><br>
                    <div id="rtChk"></div>
                    
                    ${routineList.routineEx}
                    
                    
<!--                     <table border="1"> -->
<!--                     	<tr> -->
<!--                     		<th>Num</th> -->
<!--                     		<th>Name</th> -->
<!--                     		<th>Ex</th> -->
<!--                     	</tr> -->
                    	
<%--                     	<c:forEach items="${list}" var="routineDTO"> --%>
<!--                     		<tr> -->
<%--                     		<th><c:out value="${routineDTO.userNum}"></c:out></th> --%>
<%--                     		<th><c:out value="${routineDTO.routineName}"></c:out></th> --%>
<%--                     		<th><c:out value="${routineDTO.routineEx}"></c:out></th> --%>
<!--                     		</tr> -->
<%--                     	</c:forEach> --%>
<!--                     </table> -->
		
	</div>

	<%@include file="../include/footer.jsp"%>