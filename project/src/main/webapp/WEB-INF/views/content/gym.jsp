<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>


<div class="center">
	<img src="/project/resources/image/marker.png" style="width: 50px; height: 50px;"> <span style="font-size: 30px;">: 현재 고객님의 위치</span>
</div>
<br>
<div id="map" style="width: 700px; height: 500px;" class="gym"></div>
<br>
<br>
<br>
<div style="text-align: center; width: 500px; border: 1px solid black; margin-left: 32%;">
	<h3 style="">AI추천 근처 헬스장 찾기!</h3>
	<br>
	원하시는 금액 : <input type="text" id="money">원 <br>원하시는 회원 수 : <input type="text" id="peoples">명
	<br>
	<div id="view"></div>
	<br>
	<button onclick="ai();">추천받기</button>
</div>
<script src="https://cdn.jsdelivr.net/npm/danfojs@0.1.2/dist/index.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@2.4.0/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-vis"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=964433123d090e91b3e53363b41a330a&libraries=services"></script>
<script>
	var gymlist = [];

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨 
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {
		// 	GeoLocation을 이용해서 접속 위치를 얻어옵니다
		navigator.geolocation
				.getCurrentPosition(function(position) {
					var lat = position.coords.latitude, // 위도
					lon = position.coords.longitude; // 경도
					var geocoder = new kakao.maps.services.Geocoder();
					var coord = new kakao.maps.LatLng(lat, lon);

					var callback = function(result, status) {
						if (status === kakao.maps.services.Status.OK) {
							var address = result[0].address.address_name; //도로명 주소
							var gymAddress = address + " 헬스장";

							// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
							var gyminfowindow = new kakao.maps.InfoWindow({
								zIndex : 1
							});

							// 장소 검색 객체를 생성합니다
							var ps = new kakao.maps.services.Places();

							// 키워드로 장소를 검색합니다
							ps.keywordSearch(gymAddress, placesSearchCB);

							//헬스장 이름 목록
							var gym_name_list = [];

							// 키워드 검색 완료 시 호출되는 콜백함수 입니다
							function placesSearchCB(data, status, pagination) {
								if (status === kakao.maps.services.Status.OK) {
									// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
									// LatLngBounds 객체에 좌표를 추가합니다
									var bounds = new kakao.maps.LatLngBounds();
									for (var i = 0; i < 10; i++) {
										displayMarker(data[i]);
										bounds.extend(new kakao.maps.LatLng(
												data[i].y, data[i].x));
										gym_name_list.push(data[i].place_name);
									}
									// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
									map.setBounds(bounds);
								}
							}
							gymlist = gym_name_list;
							console.log(gym_name_list);

							function displayMarker(place) {
								// 마커를 생성하고 지도에 표시합니다
								var gymmarker = new kakao.maps.Marker({
									map : map,
									position : new kakao.maps.LatLng(place.y,
											place.x)
								});

								// 마커에 클릭이벤트를 등록합니다
								kakao.maps.event
										.addListener(
												gymmarker,
												'click',
												function() {
													// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
													gyminfowindow
															.setContent('<div style="width: 100%; height: 100%; padding:5px; font-size:12px;">'
																	+ '<span>'
																	+ place.place_name
																	+ '</span>'
																	+ '<br>'
																	+ '<span>'
																	+ place.road_address_name
																	+ '</span>'
																	+ '<br>'
																	+ '<a href="https://map.kakao.com/link/map/'+place.place_name+","+place.y+","+place.x+'"style="color:blue" target="_blank">'
																	+ '큰지도로 보기'
																	+ '</a>'
																	+ ' <a href="https://map.kakao.com/link/to/'+place.place_name+","+place.y+","+place.x+'" style="color:blue" target="_blank">길찾기</a>'
																	+ '</div>');
													gyminfowindow.open(map,
															gymmarker);
												});
							}
						}
					};

					geocoder.coord2Address(coord.getLng(), coord.getLat(),
							callback);

					var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
					// 마커와 인포윈도우를 표시합니다
					displayMarker(locPosition);
				});
	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'
		displayMarker(locPosition, message);
	}

	//지도에 마커와 인포윈도우를 표시하는 함수입니다
	function displayMarker(locPosition, message) {
		// 마커 이미지의 주소
		var markerImageUrl = 'https://cdn-icons-png.flaticon.com/512/4668/4668400.png', markerImageSize = new kakao.maps.Size(
				40, 42), // 마커 이미지의 크기
		markerImageOptions = {
			offset : new kakao.maps.Point(20, 42)
		// 마커 좌표에 일치시킬 이미지 안의 좌표
		};

		// 마커 이미지를 생성한다
		var markerImage = new kakao.maps.MarkerImage(markerImageUrl,
				markerImageSize, markerImageOptions);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map : map,
			position : locPosition,
			image : markerImage
		});

		// 지도 중심좌표를 접속위치로 변경합니다
		map.setCenter(locPosition);
	}

	function ai() {
		$("#view").text("계산 중 입니다. 잠시만 기다려주세요.");
		var money = $("#money").val();
		money = parseInt(money);
		var peoples = $("#peoples").val();
		peoples = parseInt(peoples);
		//dfd는 danfojs의 모듈의 이름이다. read_csv를 이용하여 해당 링크의 데이터를 읽어온다.
		//웹에서 제공하는 분꽃 데이터를 읽어오는 부분이다.  
		dfd.read_csv('/project/resources/csv/gym.csv').then(
				function(data) {
					// console.log(data);
					//data.print(); //읽어온 데이터를 표형태로 출력한다.
					//종속변수 컬럼 선정
					//상품,성별,나이
					iv = data.loc({
						columns : [ '사용자희망가격', '회원수' ]
					});
					// 독립변수.print(); //선정한 독립변수 출력

					//하나의 종속변수를 여러개로 분리 0과 1의 데이터를 넣는다.

					dv = data.loc({
						columns : [ '헬스장0', '헬스장1', '헬스장2', '헬스장3', '헬스장4',
								'헬스장5', '헬스장6', '헬스장7', '헬스장8', '헬스장9' ]
					});
					//data['품종'].print();// 종속변인 품종 1개의 컬럼 출력
					//종속변수.print();// 하나의 칼럼을 여러 개의 컬럼으로 01의 값을 넣어 분리한 컬럼 출력 
					//입력층 4개의 컬럼 설정

					console.log(iv)
					console.log(dv)

					var X = tf.input({
						shape : [ 2 ]
					});

					//딥러닝을 위한 히든 레이어
					var H = tf.layers.dense({
						units : 2,
						activation : 'relu'
					}).apply(X);
					console.log(X);
					//출력층 3개의 컬럼 설정
					var Y = tf.layers.dense({
						units : 10,
						activation : 'softmax'
					}).apply(H);

					//모델 생성
					model = tf.model({
						inputs : X,
						outputs : Y
					});
					var compileParam = {
						optimizer : tf.train.adam(),
						loss : 'categoricalCrossentropy',
						metrics : [ 'accuracy' ]
					}
					model.compile(compileParam);
					//결과 출력    
					// tfvis.show.modelSummary({name:'요약', tab:'모델'}, model);
					// 3. 데이터로 모델을 학습시킵니다. 
					_history = [];
					var fitParam = {
						epochs : 500, //몇번 학습할 것인가
						callbacks : {
							onEpochEnd : function(epoch, logs) {
								console.log('epoch', epoch, logs, 'RMSE=>',
										Math.sqrt(logs.loss));
								// _history.push(logs);
								// tfvis.show.history({name:'loss', tab:'역사'}, _history, ['loss']);
								// tfvis.show.history({name:'accuracy', tab:'역사'}, _history, ['acc']);
							}
						}
					}
					//학습결과 확인

					model.fit(iv.tensor, dv.tensor, fitParam).then(
							function(result) {
								// 4. 모델을 이용합니다. 
								// 4.1 기존의 데이터를 이용
								var NewProduction = [ [ money, peoples ] ]
								var NewProduction = tf.tensor(NewProduction);
								result1 = new dfd.DataFrame(model
										.predict(NewProduction));

								var result = result1.data;
								console.log(result);
								console.log(result[0]);
								console.log(result[0][0]);

								for (var i = 0; i < result[0].length; i++) {
									if (result[0][i] > 0.5) {
										console.log(gymlist[i]);
										$("#view").text(
												"회원님을 위한 헬스장은 \"" + gymlist[i]
														+ "\"입니다!");
										break;
									} else {
										$("#view").text("다시 시도해주세요.");
									}
								}

								//10,10 지역에서는 사람이 예상가격 2000원으로 갈수 있는 헬스장 추천
								//예측한결과.print();
								//  종속변수.print();

							});
				})
	}
</script>

<%@include file="../include/footer.jsp"%>