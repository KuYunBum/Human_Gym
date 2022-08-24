<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../../include/header.jsp"%>
<link rel="stylesheet" href="/project/resources/css/schedule.css" />
<div class="main">
	<h2 style="
		font-family: 'Lato', sans-serif;">
		Schedule</h2>
		<br><br>
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
			<div class="scheduleContainer">
				<!-- 달력 출력 부분 -->
				<div class="rcText">
					<form name="calendarFrm" id="calendarFrm" action="" method="GET">

						<div class="calendar">

							<!--날짜 네비게이션  -->
							<div class="navigation">
								<a class="before_after_year" href="./schedule?userNum=${userNum}&year=${today_info.search_year-1}&month=${today_info.search_month-1}"> &lt;&lt; <!-- 이전해 -->
								</a> <a class="before_after_month" href="./schedule?userNum=${userNum}&year=${today_info.before_year}&month=${today_info.before_month}"> &lt; <!-- 이전달 -->
								</a> <span class="this_month"> &nbsp;${today_info.search_year}. <c:if test="${today_info.search_month<10}">0</c:if>${today_info.search_month}
								</span> <a class="before_after_month" href="./schedule?userNum=${userNum}&year=${today_info.after_year}&month=${today_info.after_month}"> <!-- 다음달 --> &gt;
								</a> <a class="before_after_year" href="./schedule?userNum=${userNum}&year=${today_info.search_year+1}&month=${today_info.search_month-1}"> <!-- 다음해 --> &gt;&gt;
								</a>

							</div>

							<!-- <div class="today_button_div"> -->
							<!-- <input type="button" class="today_button" onclick="javascript:location.href='/calendar.do'" value="go today"/> -->
							<!-- </div> -->
							<table class="calendar_body">
								<thead>
									<tr class="scheduleTr">
										<td class="day sun">일</td>
										<td class="day">월</td>
										<td class="day">화</td>
										<td class="day">수</td>
										<td class="day">목</td>
										<td class="day">금</td>
										<td class="day sat">토</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="dateList" items="${dateList}" varStatus="date_status">
										<c:choose>
											<c:when test="${dateList.value=='today'}">
												<td class="today">
													<div class="date">${dateList.date}</div>
													<div>${dateList.schedule_detail}</div>
												</td>
											</c:when>
											<c:when test="${date_status.index%7==0}">
												<tr>
													<td class="sun_day">
														<div class="sun">${dateList.date}</div>
														<div>${dateList.schedule_detail}</div>
													</td>
											</c:when>
											<c:when test="${date_status.index%7==6}">
												<td class="sat_day">
													<div class="sat">${dateList.date}</div>
													<div>${dateList.schedule_detail}</div>
												</td>
												<!-- 								</tr> -->
											</c:when>
											<c:otherwise>
												<td class="normal_day">
													<div class="date">${dateList.date}</div>
													<div>${dateList.schedule_detail}</div>
												</td>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</form>
				</div>
				<!-- 달력 출력 부분 끝-->
			</div>
		</div>
	</div>

	<hr style="width: 1300px; margin: auto;">
	<br>

	<div class="bt_box">
		<script>
			function insertSchedule() {
				window
						.open(
								"/project/user/schedule/insertSchedule?userNum=${userNum}",
								"일정 추가하기", "width=500px, height=500px");
			}
		</script>
		<button id="myBtn1" onclick="insertSchedule()">추가</button>
		<!-- 추가 버튼 만들기  -->

	</div>

</div>

<%@include file="../../include/footer.jsp"%>