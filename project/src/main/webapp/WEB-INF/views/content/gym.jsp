<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>


<div class="center">
	<img src="/project/resources/image/marker.png"
		style="width: 50px; height: 50px;"> <span
		style="font-size: 30px;">: 현재 고객님의 위치</span>
</div>
<br>
<div id="map" style="width: 700px; height: 500px;" class="gym"></div>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=964433123d090e91b3e53363b41a330a&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨 
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {

		// GeoLocation을 이용해서 접속 위치를 얻어옵니다
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

							// 키워드 검색 완료 시 호출되는 콜백함수 입니다
							function placesSearchCB(data, status, pagination) {
								if (status === kakao.maps.services.Status.OK) {

									// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
									// LatLngBounds 객체에 좌표를 추가합니다
									var bounds = new kakao.maps.LatLngBounds();

									for (var i = 0; i < data.length; i++) {
										displayMarker(data[i]);
										bounds.extend(new kakao.maps.LatLng(
												data[i].y, data[i].x));
									}

									// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
									map.setBounds(bounds);
								}
							}
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
													//test

													// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
													gyminfowindow
															.setContent('<div style="width: 100%; height: 100%; padding:5px; font-size:12px;">'
																	+ '<span>'+place.place_name+'</span>'
																	+ '<br>'
																	+ '<span>'+place.road_address_name+'</span>'
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
					// 					message = '<div style="padding:5px;">고객님의 현재 위치</div>'; // 인포윈도우에 표시될 내용입니다

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

// 				var iwContent = message; 1// 인포윈도우에 표시할 내용

		// 		// 인포윈도우를 생성합니다
		// 		var infowindow = new kakao.maps.InfoWindow({
		// 			content : iwContent
		// 		});

		// 인포윈도우를 마커위에 표시합니다 
// 		infowindow.open(map, marker);

		// 지도 중심좌표를 접속위치로 변경합니다
		map.setCenter(locPosition);
	}
</script>

<%@include file="../include/footer.jsp"%>