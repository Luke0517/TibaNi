<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.cga102g3.web.faq.model.*"%>


<%
  FaqVO faqVO = (FaqVO) request.getAttribute("faqVO"); //FaqServlet.java(Concroller), 存入req的faqVO物件
%>


<!DOCTYPE html>
<html lang="zh-Hant-TW">
<head>
    <meta charset="UTF-8">
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <!-- Bootstrap4.6 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap4/css/bootstrap.css">
    <!--    基礎版面樣式  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/template/css/back_layout.css">
    <!--    後台書籍管理添加樣式  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back-end/book/css/back_book_view.css">

    <title>客服管理>FAQ管理</title>
</head>
<body>
<header class="header">
    <h1>客服管理>FAQ管理</h1>
</header>

<%@include file="/static/template/back_layout_aside.jsp"%>

<main class="main">
<table id="table-1">
	<tr>
		 <h3><a href="select_page.jsp">回FAQ管理</a></h3>
	</tr>
</table>

<table id="table-2">
	<tr>
		<th>FAQ編號</th>
		<th>常見問題</th>
		<th>解答</th>
	</tr>
	<tr>
		<td><%=faqVO.getFAQ_ID()%></td> 
		<td><%=faqVO.getQues()%></td>
		<td><%=faqVO.getAns()%></td>
	</tr>
</table>

</main>
<!-- sweetalert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Jquery -->
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- bootstrap JS-->
<script src="${pageContext.request.contextPath}/static/bootstrap4/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/static/template/js/back_layout.js"></script>
<script src="${pageContext.request.contextPath}/back-end/book/js/back_book_view.js"></script>
</body>
</html>