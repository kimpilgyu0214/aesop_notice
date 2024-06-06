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
	<title>목록</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<!-- 헤더 부분 include -->
	<header id="hd-wrap" class="container is-fullhd">
		<jsp:include page="../include/hd.jsp"></jsp:include>
	</header>
	<div class="container">
	<main class="contents">
		<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			  <ul>
			    <li class="is-active"><a href="#" aria-current="page">Detail</a></li>
			  </ul>
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">공지사항 글 상세보기</h2>
    		<div class="page-wrap">
 				<div class="clr-fix">
					<table id="tb1" class="table" width="1200">
						<tbody>
							<tr>
								<th>글 번호</th>
								<td>${notice.no }</td>
							</tr>
							<tr>
								<th>글 제목</th>
								<td>${notice.title }</td>
							</tr>
							<tr>
								<th>글 내용</th>
								<td>${notice.content }</td>
							</tr>
							<tr>
								<th>작성일시</th>		
								<td>${notice.regdate }</td>
							</tr>
							<tr>
								<th>조회수</th>
								<td>${notice.hit }</td>
							</tr>
						</tbody>
					</table>
					<hr>
					<div class="buttons">
					  <c:if test="${cus.email.equals('admin@aesop.com') }">
					  <a href="${path2 }/notice/insert.do" class="button is-danger">글 등록</a>
					  <a href="${path2 }/notice/update.do?no=${notice.no }" class="button is-warning">글 수정</a>
					  <a href="${path2 }/notice/delNotice.do?no=${notice.no }" class="button is-danger is-dark">글 삭제</a>
					  </c:if>
					  <a href="${path2 }/notice/list.do" class="button is-primary">글 목록</a>
					</div>
				</div>
    		</div>
    	</section>
	</main>
</div>

</body>
</html>