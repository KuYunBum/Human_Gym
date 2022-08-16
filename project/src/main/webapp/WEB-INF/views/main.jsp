<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="include/header.jsp"%>

<!-- 	main img slide -->
<div class="container">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<div class="carousel-inner">
			<div class="item active">
				<div class="img-slide">
					<div class="center_content2">
						<div class="c_c2_left">
							<ul style="margin-top: 100px;">
								<h1>누적 다운로드 1위👏</h1>
								<h1>사용자 만족도 1위👏</h1>
								<br>
								<h3>
									<span>감사합니다!!</span>
								</h3>
								<h3>
									<p>더 좋은 서비스로 보답하겠습니다!!</p>
								</h3>
							</ul>
						</div>

						<div class="c_c2_Right">
							<img src="/project/resources/image/ex/intop.gif"
								style="width: 400px; height: 100%;">
						</div>
					</div>
				</div>
			</div>

			<div class="item">
				<div class="img-slide2">
					<div class="center_content2">
						<div class="c_c2_left">
							<ul style="margin-top: 100px;">
								<h1>한단계 한단계📈</h1>
								<br>
								<h3>
									<span>처음부터 잘할수는 없죠!</span>
								</h3>
								<h3>
									<p>기초부터 차근차근 시작 하는 슬기로운 헬스생활!!</p>
								</h3>
							</ul>
						</div>

						<div class="c_c2_Right">
							<img src="/project/resources/image/ex/intest.gif"
								style="width: 100%; height: 100%;">
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="img-slide3">
					<div class="center_content2">
						<div class="c_c2_left">
							<ul style="margin-top: 100px; color: #fff;">
								<h1>매달 이벤트가 펑펑😍</h1>
								<br>
								<h3>
									<span>노력하는 당신! 아름답다!</span>
								</h3>
								<h3>
									<p>매달 우수 사용자 50분에게 무료 PT권 증정!!</p>
								</h3>
							</ul>
						</div>

						<div class="c_c2_Right">
							<img src="/project/resources/image/ex/ingift.gif"
								style="width: 100%; height: 100%;">
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="img-slide4">
					<div class="center_content2">
						<div class="c_c2_left">
							<ul style="margin-top: 100px; color: #fff;">
								<h1>청춘은 바로 지금👖</h1>
								<br>
								<h3>
									<span>고민하는 지금이 바로 운동할때!</span>
								</h3>
								<h3>
									<p>AI추천! 당신에게 딱 맞는 루틴을 체험해 보세요!</p>
								</h3>
							</ul>
						</div>

						<div class="c_c2_Right">
							<img src="/project/resources/image/ex/gymtime.gif"
								style="width: 100%; height: 100%; display: flex">
						</div>
					</div>
				</div>
			</div>
		</div>

		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
</div>


<div class="main2">
	<div class="center_content">
		<div class="center-text">
			<h1>You must be healthy.</h1>
			<br> <br>
			<p style="font-size: 18px;">
				당신에게 딱 맞는 운동<br> 지금 바로 경험해보세요🤩
			</p>
			<div class="widthLine" style="margin-top: 30px;"></div>
			<table style="margin: 120px auto;">

				<tr>
					<td><a href="/project/content/ex_recomm/ex_recomm?userNum=${userNum }" style="text-decoration: none;">
							<div class="pic3s">
								<div class="pic33">
									<div class="pic3">
										<div class="ct3-text">
											<h2 style="color: #fff; text-align:center; padding-top:90px;">AI 운동 추천</h2>
											<br />
											<div style="margin-top:150px">
												<li>
													AI 인공지능 기반 많은 사람들의 <br />
													데이터와 사용자의 인바디를 기반으로  <br />
													A to Z 운동 추천!
												</li>
											</div>
										</div>
									</div>
								</div>
							</div>
					</a></td>
					<td><a href="/project/user/routine/routineBox?userNum=${userNum }" style="text-decoration: none;">
							<div class="pic3_2">
								<div class="pic3_22">
									<div class="ct3-text">
										<h2 style="color: #000;  text-align:center; padding-top:90px;">맞춤 루틴 기능</h2>
										<br />
										<div style="margin-top:150px">
											<li>
												무분할? 3분할? 5분할? <br />
												어려운 루틴 설정!<br />
												나만의 루틴 커스텀을 통해 <br />
												지금부터 연습해 보세요!
<!-- 												다양한 운동들을 직접 경험해보고 <br /> -->
<!-- 												추후 혼자서도 루틴을 짤 수 있게끔 함. -->
											</li>
									</div>
								</div>
							</div>
					</a></td>
					<td><a href="/project/content/tr/tr_main" style="text-decoration: none;">
							<div class="pic3_3_3">
								<div class="ct3-text">
									<h2 style="color: #fff;  text-align:center; padding-top:90px;">휴먼 헬스 트레이너</h2>
									<br />
									<div style="margin-top:150px">
										<li>
											현직 트레이너들의  <br />
											다양한 피트니스 지식과 경험을 바탕으로 <br />
											균형잡힌 식단, 나한테 맞는 보조제 등<br />
											운동외의 정보 제공!
										</li>
									</div>
								</div>
							</div>
					</a></td>
				</tr>
			</table>

			<br><br>
<!-- --------------------------------------------------------------------------------------- -->




			<div class="center-text2">
				<h1>처음이라 걱정인가요?</h1>
				<br> <br>
				<p style="font-size: 18px;">휴먼짐의 다양한 서비스를 통해 시작해보세요!</p>
			</div>
			<div class="widthLine" style="margin-top: 30px;"></div>

			<div class="ct2">
				<div class="ct2-text">
					<h2>AI 운동 추천!</h2>
					<br>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> 비슷한 사람들의 데이터를 분석<span>후
							루틴 추천</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>내가 다니는</span> 헬스장에
						맞게 <span>운동 루틴 추천</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>헬스장에 못간다면?</span>
						홈트레이닝 <span>루틴 추천</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>운동 시작 전,후 </span>스트레칭
						<span>추천</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>내 몸에 맞는 </span>
						영양식단,보충제 <span>추천</span></li>
				</div>
				<div style="margin-left: 40px;">
					<img src="/project/resources/image/ex/aiChu.png"
						style="width: 430px; height: 300px; border: 1px solid #000;">
					<img src="/project/resources/image/ex/letFull.png"
						style="width: 430px; height: 300px; border: 1px solid #000; position: absolute;">
				</div>
			</div>

			<div class="ct2">
				<div class="ct2-text">
					<h2>맞춤 루틴 기능!</h2>
					<br>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> 나만의 루틴<span>을 만들어
							보세요</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>AI 루틴 추천과</span>
						동시에 나만의 루틴 커스텀</li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>내 운동 기록 시작!</span>
						스케쥴러 <span>로 시작해보세요</span></li>
					<!-- 	                    <li> <img src="/project/resources/image/ex/2705.png" style="width: 18px;height: 18px;"> <span>운동 시작 전,후 </span>스트레칭 <span>추천</span></li> -->
					<!-- 	                    <li> <img src="/project/resources/image/ex/2705.png" style="width: 18px;height: 18px;"> <span>내 몸에 맞는 </span> 영양식단,보충제 <span>추천</span></li> -->
				</div>
				<div style="margin-left: 40px;">
					<img src="/project/resources/image/ex/aiRoutine.png"
						style="width: 430px; height: 300px; border: 1px solid #000;">
					<img src="/project/resources/image/ex/aiRoutineInsert.png"
						style="width: 430px; height: 300px; border: 1px solid #000; position: absolute;">
				</div>
			</div>

			<div class="ct2">
				<div class="ct2-text">
					<h2>실제 헬스장의 트레이너들과 연결!</h2>
					<br>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>AI추천을 통해</span>자신에게
						꼭 맞는<span>트레이너 추천</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>궁금한건 못참아! </span>
						1:1 상담 <span>서비스</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> 친절함과 능력<span>모두
							겸비한!!</span></li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>대회 수상 이력
							다수!</span> 검증된 트레이너!</li>
					<li><img src="/project/resources/image/ex/2705.png"
						style="width: 18px; height: 18px;"> <span>재활부터
							바디프로필까지</span> 분야별 전문가 <span>포섭</span></li>
				</div>
				<div style="margin-left: 40px;">
					<img src="/project/resources/image/ex/trainerMat.png"
						style="width: 430px; height: 300px; border: 1px solid #000;">
					<img src="/project/resources/image/ex/trainerChu.png"
						style="width: 430px; height: 300px; border: 1px solid #000; position: absolute;">
				</div>
			</div>
		</div>
	</div>
</div>

<div class="main2">
	<div class="center_content">
		<div class="center-text">

			<br> <br>
			<h1>많은 사용자들의 검증된 휴먼짐!</h1>
			<br> <br>
			<p style="font-size: 18px;">
				회원분들의 감사한 리뷰!<br> 많은 다운로드 , 많은 사람들의 리뷰로 검증!!🤩
			</p>
		</div>

		<div class="widthLine" style="margin-top: 30px;"></div>

		<div class="ct-test">
			<div class="center-text11">
				<p class="t1">29.4K</p>
				<p class="t2">지금까지 함께한 유저 🏃</p>
			</div>
			<div class="center-text22">
				<p class="t1">당신만의 AI</p>
				<p class="t2">만들어보세요 나만의 루틴 ✍</p>
			</div>
			<div class="center-text33">
				<p class="t1">4.9/5.0</p>
				<p class="2t">Android, Apple 스토어 최고 별점 ⭐️</p>
			</div>
		</div>

		<div class="re_content">
			<div class="reviewContent">
				<div class="reviewImg">
					<img src="/project/resources/image/user/user_img1.jpg"
						style="width: 400px; height: 100%;">
				</div>

				<div class="reviewImg">
					<img src="/project/resources/image/user/user_img2.jpg"
						style="width: 400px; height: 100%;">
				</div>
			</div>
			<div class="media_content2">

				<span
					style="margin-left: 25px; height: 45%; width: 1px; border: 1px solid black; display: flex;"></span>
				<div class="content_m_right2">
					<span style="color: rgb(0, 177, 56);">혼자하기 두려웠는데 휴먼짐덕에!!</span> 헬스는
					처음이라<br /> 막연했는데 덕분에 꾸준히 열심히 하고있습니다!
					<p>⭐⭐⭐⭐⭐</p>
					<p>GooglePlay, 홍*규</p>
				</div>

				<span
					style="margin-left: 70px; height: 45%; width: 1px; border: 1px solid black; display: flex;"></span>
				<div class="content_m_left2">
					<span style="color: rgb(0, 177, 56);">처음 운동 시작하려는 분들한테 좋아요!!</span>
					기초부터 <br />차근차근 알려주다보니 너무 만족스럽습니다!
					<p>⭐⭐⭐⭐⭐</p>
					<p>GooglePlay, 박*희</p>
				</div>
			</div>

			<div class="reviewContent">
				<div class="reviewImg">
					<img src="/project/resources/image/user/user_img4.jpg"
						style="width: 400px; height: 100%;">
				</div>

				<div class="reviewImg">
					<img src="/project/resources/image/user/user_img5.jpg"
						style="width: 400px; height: 100%;">
				</div>
			</div>

			<div class="media_content2">
				<span
					style="margin-left: 25px; height: 45%; width: 1px; border: 1px solid black; display: flex;"></span>
				<div class="content_m_right2">
					<span style="color: rgb(0, 177, 56);">헬린이들한테 정말 유용한 어플이에요!!</span>
					저도 추천 <br /> 받고 사용중인데 많은 도움 받고있습니다!!
					<p>⭐⭐⭐⭐⭐</p>
					<p>AppleStore, 근*몬</p>
				</div>

				<span
					style="margin-left: 70px; height: 45%; width: 1px; border: 1px solid black; display: flex;"></span>
				<div class="content_m_left2">
					<span style="color: rgb(0, 177, 56);">여러 기능들이 있어 좋아요!</span>
					트레이너쌤들과 AI루틴 <br /> 추천 내 루틴 설정등 다양한 선택지가 있어 좋네요.
					<p>⭐⭐⭐⭐⭐</p>
					<p>AppleStore, 고*라</p>
				</div>
			</div>
		</div>

		<!-- 		미디어 컨텐츠  제목-->
		<div class="center_content_M">
			<div class="center-text_M">
				<h1>휴먼짐의 인플루언서를 소개합니다!!</h1>
				<br> <br>
			</div>
			<div class="widthLine" style="margin-top: 30px;"></div>


			<div class="media_main">

				<!-- 		미디어 컨텐츠 -->
				<div class="media_content">
					<div class="content_m_right">
						<iframe width="560" height="315"
							src="https://www.youtube.com/embed/aRz0QZc8TDE"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<p>로니쌤의 무겁지만 가볍게 드는법!!</p>
					</div>

					<div class="content_m_left">
						<iframe width="560" height="315"
							src="https://www.youtube.com/embed/itx3udN1HJ0"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<p>상급자를 위한 루틴 추천!</p>
					</div>
				</div>

				<div class="media_content">
					<div class="content_m_right">
						<iframe width="560" height="315"
							src="https://www.youtube.com/embed/qluZcZ7vfLQ"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<p>첫 헬스장 입문을 위한 현실적 조언!</p>
					</div>

					<div class="content_m_left">
						<iframe width="560" height="315"
							src="https://www.youtube.com/embed/Iazno8QPDOg"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<p>타락헬창표 루틴 대공개!</p>
					</div>
				</div>

			</div>




			<%@include file="include/footer.jsp"%>