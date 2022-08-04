<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
   window.onload = function() {
      var date = new Date();
      var year = date.getFullYear();
      var month = date.getMonth();
      document.getElementById("schedule").href = "/project/user/schedule/schedule?userNum=${userNum}&year="
            + year + "&month=" + month;
   }
</script>
	<div class="myPageNav">
		<ul>
			<li><a href="/project/user/myPage?userNum=${userNum }">내 프로필</a>
			</li>
			<li><a href="/project/user/inbody/detail?userNum=${userNum }">인바디</a>
			</li>
			<li><a href="/project/user/routineBox?userNum=${userNum }">내
					루틴 커스텀</a></li>
			<li><a href="/project/user/record/record?userNum=${userNum }">운동기록</a>
			</li>
			<li><a id="schedule" href="">스케줄 관리하기</a></li>
		</ul>
	</div>


		<div class="myPageNav">
			<ul>
				<li>
					<a href="/project/user/myPage?userNum=${userNum }">내 프로필</a>
				</li>
				<li>
					<a href="/project/user/inbody/detail?userNum=${userNum }">인바디</a>
				</li>
				<li>
					<a href="/project/user/routine/routineBox?userNum=${userNum }">내 루틴 커스텀</a>
				</li>
				<li>
					<a href="/project/user/record/record?userNum=${userNum }">운동기록</a>
				</li>
			</ul>
		</div>
