<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath}" />

<!DOCTYPE html>
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

    <br><br><br><br>

    <div class="container">
        <main class="contents" style="margin-top: 100px;">
            <h2 class="page-title">Notice_List</h2>
            <div>
                <div>
                    <br>
                    <div class="notice_page" id="notice_list">
                        <ul class="notice list" id="list1">
                            <c:if test="${not empty list}">
                              <c:forEach var="dto" items="${list}">
							    <li class="column">
							        <div class="item_box">
							            <h3 class="list_title"><a href="${path2}/notice/detail.do?no=${dto.no}">${dto.title}</a></h3><br>
							            <a href="${path2}/notice/detail.do?no=${dto.no}" class="item_wrap">
							                <img src="${path2}/resources/upload/${dto.img1}" class="item_pic"/>
							            </a>
							        </div>
							    </li>
							</c:forEach>
                            </c:if>
                            <c:if test="${empty list}">
                                <li>
                                    <p><strong>공지사항이 존재하지 않습니다.</strong></p>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
            <c:if test="${cus.email.equals('admin@aesop.com')}">
                <div class="buttons">
                    <a href="${path2}/notice/insert.do" class="button is-danger">글 등록</a>
                </div>
            </c:if>
        </main>
    </div>

</body>
</html>
