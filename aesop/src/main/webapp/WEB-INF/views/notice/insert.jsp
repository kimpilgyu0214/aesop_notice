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
	</header><br><br><br><br>
	<div class="container">
	<main class="contents" style="margin-top: 100px;">
		<div id="breadcrumb" class="container breadcrumb-wrap clr-fix" style="height:60px; line-height:60px;">
	    	<nav class="breadcrumb" aria-label="breadcrumbs">
			</nav>
    	</div>
 	    <section class="page" id="page1">
    		<h2 class="page-title">Notice_Insert</h2>
    		<div class="page-wrap">
	    		<div class="clr-fix">
	    			<br>
						<form action="${path2}/notice/insertPro.do" method="post" enctype="multipart/form-data">
					    <table class="table">
					        <tbody>
					            <tr>
					                <th><label for="title">제목</label></th>
					                <td>
					                    <input type="text" name="title" id="title" class="input" maxlength="200" required>
					                </td>
					            </tr>
					            <tr>
					                <th><label for="content">내용</label></th>
					                <td>
					                    <textarea name="content" id="content" rows="8" cols="80" maxlength="3000" class="textarea"></textarea>
					                </td>
					            </tr>
					            <tr>
					                <th><label for="img1">썸네일 이미지</label></th>
					                <td>
					                    <input type="file" name="img1" id="img1" accept="image/*" required/>
					                </td>
					            </tr>
					            <tr>
					                <th><label for="img2">이미지 1</label></th>
					                <td>
					                    <input type="file" name="img2" id="img2" accept="image/*"/>
					                </td>
					            </tr>
					            <tr>
					                <th><label for="img3">이미지 2</label></th>
					                <td>
					                    <input type="file" name="img3" id="img3" accept="image/*"/>
					                </td>
					            </tr>
					            <tr>
					                <th><label for="img4">이미지 3</label></th>
					                <td>
					                    <input type="file" name="img4" id="img4" accept="image/*"/>
					                </td>
					            </tr>
					            <tr>
					                <th><label for="img5">이미지 4</label></th>
					                <td>
					                    <input type="file" name="img5" id="img5" accept="image/*"/>
					                </td>
					            </tr>
					        </tbody>
					    </table>
					    <hr>
						<div class="buttons">
						  <button type="submit" class="button is-danger">공지사항 등록</button>
						  <a href="${path2 }/notice/listAll.do" class="button is-primary">공지사항 목록</a>
						</div>
					</form>
				</div>
    		</div>
    	</section>
	</main>
</div>
</body>
</html>