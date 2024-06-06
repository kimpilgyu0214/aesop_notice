<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항</title>
	<jsp:include page="../include/head.jsp"></jsp:include>

</head>
<body>
	<!-- 헤더 부분 include -->
	<header id="hd-wrap" class="container is-fullhd">
		<jsp:include page="../include/hd.jsp"></jsp:include>
	</header>
	<div class="container">
	<main class="contents">
	<h2 class="page-title">공지사항 목록</h2>
    		<div>
	    		<div>
	    			<br>
					<table class="table" id="tb1">
						<thead>
							<tr>
								<th class="item1">번호</th>
								<th class="item2">제목</th>
								<th class="item3">작성일</th>
								<th class="item4">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty list }">
								<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.no }</td>
									<td>
										<a href="${path2 }/notice/detail.do?no=${dto.no }">${dto.title }</a>

									</td>
									<td>${dto.regdate }</td><td>${dto.hit }</td>
								</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty list }">
								<tr>
									<td colspan="4"><strong>공지사항이 존재하지 않습니다.</strong></td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
			<c:if test="${cus.email.equals('admin@aesop.com') }">
					<div class="buttons">
					  <a href="${path2 }/notice/insert.do" class="button is-danger">글 등록</a>
					</div>
			</c:if>
	</main>
	</div>

</body>
</html>