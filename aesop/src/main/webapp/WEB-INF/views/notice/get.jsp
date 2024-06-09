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
    <title>공지사항 상세보기</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
    <!-- 헤더 부분 include -->
    <header id="hd-wrap" class="container is-fullhd">
        <jsp:include page="../include/hd.jsp"></jsp:include>
    </header><br><br><br><br>
    <div class="container">
    <main class="contents" style="margin-top: 100px;">
   
        
        <section class="page" id="page1">
            <h2 class="page-title">Notice_Detail</h2>
            <div class="page-wrap">
                <div class="clr-fix">
                    <table id="tb1" class="table" width="1200">
                        <tbody>
                            <tr>
                                <th>글 번호</th>
                                <td>${notice.no }</td>
                            </tr>
                            <tr>
                                <th>작성일시</th>        
                                <td>${notice.regdate }</td>
                            </tr>
                            <tr>
                                <th>조회수</th>
                                <td>${notice.hit }</td>
                            </tr>
                            <tr>
                                <th>글 제목</th>
                                <td>${notice.title }</td>
                            </tr>
                           <tr>
						    <td colspan="2">
						        <c:if test="${not empty notice.img1}">
						            <img src="${path2}/resources/upload/${notice.img1}" alt="${notice.img1}"/>
						        </c:if>
						    </td>
						</tr>
						<tr>
						    <td colspan="2">
						        <c:if test="${not empty notice.img2}">
						            <img src="${path2}/resources/upload/${notice.img2}" alt="${notice.img2}"/>
						        </c:if>
						    </td>
						</tr>
						<tr>
						    <td colspan="2">
						        <c:if test="${not empty notice.img3}">
						            <img src="${path2}/resources/upload/${notice.img3}" alt="${notice.img3}"/>
						        </c:if>
						    </td>
						</tr>
						<tr>
						    <td colspan="2">
						        <c:if test="${not empty notice.img4}">
						            <img src="${path2}/resources/upload/${notice.img4}" alt="${notice.img4}"/>
						        </c:if>
						    </td>
						</tr>
						<tr>
						    <td colspan="2">
						        <c:if test="${not empty notice.img5}">
						            <img src="${path2}/resources/upload/${notice.img5}" alt="${notice.img5}"/>
						        </c:if>
						    </td>
						</tr>				
							
                            <tr>                      
                                <th>글 내용</th>
                                <td>${notice.content }</td>
                            </tr>
                   
                          
                        </tbody>
                    </table>
                    <hr>
					<div class="buttons">
					  <c:if test="${cus.email.equals('admin@aesop.com') }">
					  <a href="${path2 }/notice/insert.do" class="button is-danger">글 등록</a>
					  <a href="${path2 }/notice/update.do?no=${notice.no }" class="button">글 수정</a>
					  <a href="${path2 }/notice/delNotice.do?no=${notice.no }" class="button">글 삭제</a>
					  </c:if>
					  <a href="${path2 }/notice/listAll.do" class="button">글 목록</a>
					</div>
				</div>
    		</div>
    	</section>
	</main>
</div>

</body>
</html>