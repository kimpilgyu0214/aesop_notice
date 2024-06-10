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
    <title>My_Page</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
        .header-bar {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 100px;
        }
        .header-bar img {
            margin-right: 20px;
        }
        .welcome {
            font-size: 1.5em;
            text-align: center;
        }
        .page-wrap {
            margin-top: -100px; 
        }
        .info-list {
            list-style: none;
            padding: 0;
            text-align: center;
        }
        .info-list li {
            margin-bottom: 30px;
        }
        .buttons a {
            display: block;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="full-wrap">
    <!-- 헤더 부분 인클루드 -->
    <header id="hd">
        <div class="container">
            <jsp:include page="../include/hd.jsp"></jsp:include>
        </div>
    </header><br><br><br><br>
    <main id="contents" class="contents" style="margin-top: 100px;">
        <ul>
            <li>
                <a href="${path2}/">
                    <img src="${path2}/resources/images/main/image_logo.png" alt="이솝로고" style="height: 30px;">
                </a>
            </li>
        </ul>
        <div class="welcome">
            <h3>환영합니다 ${cus.name}님</h3>
        </div>
         <div id="tab_wrap">
            <nav class="tab">
                <ul class="tabnav">
                    <li><a href="#tab01">계정정보</a></li><br>
                    <li><a href="#tab02">주소록</a></li><br>
                </ul>
            </nav>
        </div>
        <div class="buttons">
            <c:if test="${!empty cus.email}">
                <a href="${path2 }/board/qInsPro.do" class="button is-warning">커뮤니케이션</a>
                <a href="${path2}/member/logout.do" class="button is-warning">로그아웃</a>
                <a href="${path2}/member/memberDelete.do?email=${cus.email}" class="button is-danger is-dark">회원탈퇴</a>
            </c:if>
            <c:if test="${cus.email=='admin@aesop.com'}">
                <a href="${path2}/admin/list.do" class="button is-primary">회원 목록</a>
            </c:if>
        </div>
        <section class="page1" id="page1">
            <div class="page-wrap">
                <ul class="info-list">
                    <li>
					    개인정보 
					    <button id="editButton" onclick="editUserInfo()">편집</button><br>
					    <div id="editInfo">
					        ${cus.name}님<br>${cus.email}
					    </div>
					</li>
                    
                    <li>
                        패스워드<br>********
                    </li>
                    <li>
                        피부를 설명해주세요 <br>
                        <select name="skintype">
                            <option value="none" ${cus.skintype == 'none' ? 'selected' : ''}>모르겠음</option>
                            <option value="neutral" ${cus.skintype == 'neutral' ? 'selected' : ''}>중성</option>
                            <option value="sensitive" ${cus.skintype == 'sensitive' ? 'selected' : ''}>민감성</option>
                            <option value="oily" ${cus.skintype == 'oily' ? 'selected' : ''}>지성</option>
                            <option value="combination" ${cus.skintype == 'combination' ? 'selected' : ''}>복합성</option>
                            <option value="acne" ${cus.skintype == 'acne' ? 'selected' : ''}>트러블성</option>
                            <option value="dry" ${cus.skintype == 'dry' ? 'selected' : ''}>건성</option>
                            <option value="aging" ${cus.skintype == 'aging' ? 'selected' : ''}>노화</option>
                        </select>
                    </li>
                </ul>
            </div>
        </section>
    </main>
</div>

<script>
    function editUserInfo() {
        var formHtml = '<form id="editForm" action="/editUserInfo" method="post">' +
            '<label for="name">이름:</label>' +
            '<input type="text" id="name" name="name" value="${cus.name}">' +
            '<label for="email">이메일:</label>' +
            '<input type="email" id="email" name="email" value="${cus.email}">' +
            '<button type="button" onclick="submitUserInfo()">저장</button>' +
            '</form>';

        document.getElementById('editButton').style.display = 'none'; // 편집 버튼 숨김
        document.getElementById('editInfo').innerHTML = formHtml;
    }

    function submitUserInfo() {
        var form = document.getElementById('editForm');
        // 폼을 서버로 제출합니다.
        form.submit();
    }
</script>
</body>
</html>