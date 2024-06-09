<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 수정</title>
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
        <section class="page" id="page1">
            <h2 class="page-title">Notice_Edit</h2>
            <div class="page-wrap">
                <div class="clr-fix">
                    <br>
                    <form action="${path2 }/notice/updatePro.do" method="post" enctype="multipart/form-data">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th><label for="no">글 번호</label></th>
                                    <td>
                                        <input type="text" name="no" id="no" class="input" value="${notice.no }" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="title">제목</label></th>
                                    <td>
                                        <input type="text" name="title" id="title" class="input" maxlength="100" value="${notice.title }" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="content">내용</label></th>
                                    <td>
                                        <textarea name="content" id="content" rows="8" cols="80" class="textarea">${notice.content }</textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="regdate">공지사항 수정일</label></th>
                                    <td>
                                        <input type="text" name="regdate" id="regdate" class="input" value="${notice.regdate }" disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="hit">조회수</label></th>
                                    <td>
                                        <input type="text" name="hit" id="hit" class="input" value="${notice.hit }" disabled>
                                    </td>
                                </tr>
                               <tr>
                                    <th><label for="img1">썸네일 이미지</label></th>
                                    <td>
                                        <input type="file" name="img1" id="img1" accept="image/*" />
                                        <br>현재 이미지: <img src="${path2}/resources/upload/${notice.img1}" width="100">
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="img2">공지사항 본문 이미지1</label></th>
                                    <td>
                                        <input type="file" name="img2" id="img2" accept="image/*" />
                                        <br>현재 이미지: <img src="${path2}/resources/upload/${notice.img2}" width="100">
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="img3">공지사항 본문 이미지2</label></th>
                                    <td>
                                        <input type="file" name="img3" id="img3" accept="image/*" />
                                        <br>현재 이미지: <img src="${path2}/resources/upload/${notice.img3}" width="100">
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="img4">공지사항 본문 이미지3</label></th>
                                    <td>
                                        <input type="file" name="img4" id="img4" accept="image/*" />
                                        <br>현재 이미지: <img src="${path2}/resources/upload/${notice.img4}" width="100">
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="img5">공지사항 본문 이미지4</label></th>
                                    <td>
                                        <input type="file" name="img5" id="img5" accept="image/*" />
                                        <br>현재 이미지: <img src="${path2}/resources/upload/${notice.img5}" width="100">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <hr>
                        <div class="buttons">
                            <button type="submit" class="button is-danger">공지사항 수정</button>
                            <a href="${path2 }/notice/listAll.do" class="button is-primary">공지사항 목록</a>
                            <a href="${path2 }/notice/detail.do?no=${notice.no} " class="button is-success">공지사항 상세보기</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </main>
</div>

</body>
</html>
