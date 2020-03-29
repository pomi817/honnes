<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="bean.Customer,dao.CustomerDAO"%>
<%
	//セッションからユーザーを取得
	 Customer customer = (Customer) session.getAttribute("customer");
%>

<%@include file="../header.html"%>
	<div class="main-wrap">

<<<<<<< HEAD
		<p>こんにちは、${customer.name}さん！</p>

		<div>
			<a  href="userIndex.jsp">ホームへ</a>
=======
	<p><%=customer.getName() %> さん、こんにちは！</p>

	<p>登録が完了しました☆</p>

	<form action="../userPage/bookshelf/bookshelf.jsp" method="post">
		<p><input align="center" type="submit" value="マイページへ"></p>
	</form>
		<div class="center-btn-wrap">
			<a class="center-btn" href="userIndex.jsp">ホームへ</a>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad
		</div>
	</div>

<%@include file="../footer.html"%>