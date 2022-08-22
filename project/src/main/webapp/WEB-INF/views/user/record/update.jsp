<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h2 style="
		font-family: 'Lato', sans-serif;">
		Exercise Modify</h2>
		<br><br>
		
		<%@include file="../../include/myPageNav.jsp"%>
		
		<hr style="width: 1300px; margin:auto;">

		<form role="form" method="post">
		
			<div class="myPageNav2">
				<div class="leftContainer" >
					<h3>프로필 사진</h3>
					<div class="profillePhoto">
						<img src="/project/resources/image/arnold.jpeg" >
					</div>
				</div>
						
				<div class="heightLine" ></div>
					
				<div class="rightContainer" >
					<div class="rcText" >
					<p style="text-align: right;">※ 24시를 기준으로 입력해 주세요</p>
					<table id='record_tb' border="1">
						<tr>
							<td><h4>운동 날짜</h4></td>
							<td><h4>시작 시간</h4></td>
							<td><h4>끝난 시간</h4></td>
							<td><h4>운동 이름</h4></td>
							<td><h4>세트 횟수</h4></td>
						</tr>
						<tr>
							<td>
								<fmt:formatDate pattern="yyyy-MM-dd" value="${recordDTO.useDate}"/>
								<%-- <input type="date" name='useDate' placeholder="0000-00-00" value="${recordDTO.useDate }"> --%>
							</td>
		
							<td><input type="number" name='startHour' value="${recordDTO.startHour }">시
								<input type="number" name='startMinute' value="${recordDTO.startMinute }">분</td>
							<td><input type="number" name='endHour' value="${recordDTO.endHour }">시
								<input type="number" name='endMinute' value="${recordDTO.endMinute }">분</td>
							<td><label for="exName" id="ex" value="${exerciseChartDTO.exname }" >운동 이름</label>
									<select name="exName">
										<optgroup label="전신">
											<option value="brupeeJump">버피점프</option>
											<option value="kettlebell">케틀벨</option>
											<option value="dumbbell">덤벨</option>
										</optgroup>
										<optgroup label="어깨">
											<option value="shoulderPress">숄더프레스</option>
											<option value="reverseFlyMachine">리버스플라이머신</option>
											<option value="dumbbell">덤벨</option>
										</optgroup>
										<optgroup label="가슴">
											<option value="chestPress">체스트프레스</option>
											<option value="chestFly">체스트플라이</option>
											<option value="barbellBenchPress">바벨벤치프레스</option>
										</optgroup>
										<optgroup label="등">
											<option value="latPullDown">렛풀다운</option>
											<option value="cableRow">케이블로우</option>
											<option value="goodmorningExercise">굿모닝엑서사이즈</option>
										</optgroup>
										<optgroup label="복근">
											<option value="dumbbellSideBends">덤벨사이드밴드</option>
											<option value="kettlebellRussian">러시안케틀벨</option>
											<option value="crunch">크런치</option>
										</optgroup>
										<optgroup label="삼두">
											<option value="tricepsDips">트리셉딥스</option>
											<option value="muchineDips">머신딥스</option>
											<option value="dumbbellOneArm">원암덤벨</option>
										</optgroup>
										<optgroup label="이두">
											<option value="dumbbellbicepCurl">바이셉컬덤벨</option>
											<option value="threewaydumbbellCurl">쓰리웨이덤벨컬</option>
											<option value="negativePull-up">네거티브풀업</option>
										</optgroup>
										<optgroup label="전완">
											<option value="negativePull-up">네거티브풀업</option>
										</optgroup>
										<optgroup label="엉덩이">
											<option value="bridgeWalking">브릿지워킹</option>
											<option value="multiHipMachine">멀티힙머신</option>
											<option value="hipAdduction ">힙어브덕션</option>
										</optgroup>
										<optgroup label="허벅지">
											<option value="legExtension">레그익스텐션</option>
											<option value="innerThightMachine">이너싸이머신</option>
											<option value="squat">스쿼트</option>
										</optgroup>
										<optgroup label="종아리">
											<option value="calfRaise">카프레이즈</option>
											<option value="barbellCalfRaise">바벨카프레이즈</option>
											<option value="donkyclafRaise">덩키카프레이즈</option>
										</optgroup>
									</select>
								</td>
								<td><input type="number" name='setCount' value="${exerciseChartDTO.setCount }">회</td>
							</tr>
					</table>				
				</div>
			</div>
		</div>
	</form>
		
		<hr style="width: 1300px; margin:auto;"><br>
				
		<div class="bt_box">
			<button id="myBtn1" type="submit" class="bt_save">수정완료</button>
			<button id="myBtn1" type="button" onclick="location.href='/project/user/record/record?userNum=${userNum}'">뒤로</button>
		</div>
		
	</div>
	
	<%@include file="../../include/footer.jsp"%>
	
				