<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

		<div class="myPageNav">
			<ul>
				<li>
					<a href="/project/user/myPage?userNum=${userNum }">내 프로필</a>
				</li>
				<li>
					<a href="/project/user/inbody/detail?userNum=${userNum }">인바디</a>
				</li>
				<li>
					<a href="/project/user/routineBox?userNum=${userNum }">내 루틴 커스텀</a>
				</li>
				<li>
					<a href="/project/user/record/record?userNum=${userNum }">운동기록</a>
				</li>
			</ul>
		</div>