<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.cga102g3.web.faq.model.*"%>

<%
FaqService faqSvc = new FaqService();
List<FaqVO> list = faqSvc.getAll();
pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html lang="zh-Hant-TW">
<head>
<meta charset="UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<!-- Bootstrap4.6 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap4/css/bootstrap.css">
<!--    基礎版面樣式  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/template/css/front_layout.css">

<title>首頁 / 常見問題FAQ</title>

<style>
.faq {
  padding: 0px 0;
}
.faq .faq-list {
  padding: 0;
  list-style: none;
}
.faq .faq-list li {
    background-color: #678F74;
    margin-bottom: 10px;
    border-radius: 10px;
    padding: 10px 40px;
}
.faq .faq-list a {
    display: black;
    position: relative;
    font-size: 16px;
    font-weight: 600;
    color: white;
    text-decoration: none;
}

.faq .faq-list i {
  font-size: 16px;
  position: absolute;
  left: -25px;
  top: 6px;
  transition: 1s;
}

.faq .faq-list p {
  padding-top: 5px;
  margin-bottom: 20px;
  font-size: 20px;
  color: white;
}

.collapsed i.fas.fa-arrow-up {
    
}
.collapsed i.fas.fa-arrow-up {
    transform: rotate(180deg);
}
</style>

</head>
<%@include file="/static/template/front_layout_header.jsp"%>
<body>
	<main class="main">
		<div class="container" style="background-color:	#FFF3DE;border: solid 10px;border-radius: 40px 40px 40px 40px;border-color:#FFF3DE ">
			<table id="table-1">
				<tr>
					<th><h2>首頁 / <a href='listAllFaq.jsp'>常見問題FAQ</a></h2>
					<th>
<!-- 					<th> -->
<!-- 						<button type="button" class="btn btn-success" -->
<%-- 							onclick="javascript:location.href='${pageContext.request.contextPath}/front-end/faq/addFaq.jsp'"> --%>
<!-- 							我要提問</button> -->
<!-- 					</th> -->

<!-- 					<th> -->
<!-- 						<FORM METHOD="post" ACTION="faq.do"> -->
<!-- 							<b>　　　　　搜尋常見問題編號</b> <input type="text" name="FAQ_ID">  -->
<!-- 							<input　type="hidden" name="action" value="getOne_For_Display"> -->
<!-- 							<input type="submit" class="btn btn-success" value="搜尋"> -->
<!-- 						</FORM> -->
<!-- 					</th> -->
				</tr>
			</table>

			<table class="table table-bordered text-center table-hover table-striped table-borderless ">

				<tr class="table-success">
			
<!-- 				<th scope="col" class="col-1">FAQ編號</th> -->
<!-- 					<th scope="col" class="col-4">常見問題 Questions</th> -->
<!-- 					<th scope="col" class="col-7">解答 Answers</th> -->
<!-- 				<th scope="col" class="col-2">刪除</th>	 -->
				</tr>
<%@ include file="page1.file"%>
				<c:forEach var="faqVO" items="${list}" begin="<%=pageIndex%>"
					end="<%=pageIndex+rowsPerPage-1%>">
				<tr>
			
<%-- 					<td>${faqVO.FAQ_ID}</td> --%>
<%-- 					<td><b>${faqVO.ques}</b></td> --%>
<%-- 					<td>${faqVO.ans}</td> --%>

<section class="faq">
      <div class="container">
        <ul class="faq-list">
          <li data-aos="fade-up" data-aos-delay="100" class="aos-init aos-animate">
            <a data-toggle="collapse" class="collapsed" href="#faq${faqVO.FAQ_ID}" aria-expanded="false">常見問題： ${faqVO.ques} <i class="fas fa-arrow-up"></i></a>
            <div id="faq${faqVO.FAQ_ID}" class="collapse" data-parent=".faq-list" style="">
              <p>解答： ${faqVO.ans}</p>
            </div>
          </li>
        </ul>
      </div>
</section>

<!-- 									<td> -->
<%-- 									  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/front-end/faq/faq.do" style="margin-bottom: 0px;"> --%>
<!-- 									     <input type="submit" class="btn btn-success" value="回答"> -->
<%-- 									     <input type="hidden" name="FAQ_ID"  value="${faqVO.FAQ_ID}"> --%>
<!-- 									     <input type="hidden" name="action"	value="getOne_For_Update2"> -->
<!-- 									     </FORM> -->
<!-- 									</td> -->
						<!-- 			<td> -->
						<%-- 			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/faq/faq.do" style="margin-bottom: 0px;"> --%>
						<!-- 			     <input type="submit" class="btn btn-success" value="刪除"> -->
						<%-- 			     <input type="hidden" name="FAQ_ID"  value="${faqVO.FAQ_ID}"> --%>
						<!-- 			     <input type="hidden" name="action" value="delete"> -->
						<!-- 			     </FORM> -->
						<!-- 			</td> -->
				</tr>
					
				</c:forEach>
			</table>
<div class="text-right">
  <a type="button" style="border-radius:60px" class="btn btn-success" href='listAllFaq.jsp'>▲<br>TOP</a>
</div>





<!-- <section class="faq"> -->
<!--       <div class="container"> -->
<!--         <ul class="faq-list"> -->
<!--           <li data-aos="fade-up" data-aos-delay="100" class="aos-init aos-animate"> -->
<!--             <a data-toggle="collapse" class="collapsed" href="#faq1" aria-expanded="false">aaa <i class="fas fa-arrow-up"></i></a> -->
<!--             <div id="faq1" class="collapse" data-parent=".faq-list" style=""> -->
<!--               <p> -->
<!--                 123 -->
<!--               </p> -->
<!--             </div> -->
<!--           </li> -->
<!--         </ul> -->
<!--       </div> -->
<!-- </section> -->




			<%@ include file="page2.file"%>
			</div>
	</main>
</body>
<%@include file="/static/template/front_layout_footer.jsp"%>
<!-- sweetalert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Jquery -->
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- bootstrap JS-->
<script
	src="${pageContext.request.contextPath}/static/bootstrap4/js/bootstrap.js"></script>
<script
	src="${pageContext.request.contextPath}/static/template/js/front_layout.js"></script>


</html>