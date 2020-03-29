<%@page import="bean.Customer"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Emilys+Candy&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/honnes/css/customer.css">
	<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
	<title>honnes</title>
</head>

<body>
	<header>

	<%
	Customer customer = (Customer)session.getAttribute("customer");
	String strU_NAME = "ゲスト";
	if (null != customer) {
		strU_NAME = customer.getU_NAME();
	}
	%>

	<a href="/honnes/userPage/userIndex2.jsp">
		<img src="/honnes/css/img/header-log.png" class="header-img" alt="ヘッダーロゴ">
	</a>


	<p class="header-name">☆★Welcome to <%=strU_NAME %>さん★☆</p>

	<ul>
		<li><a class="active" href="#home">Home</a></li>
		<li><a href="/honnes/userPage/history.jsp">閲覧履歴</a></li>
		<li><a href="/honnes/userPage/favorite.jsp">お気に入り</a></li>
		<li><a href="/honnes/userPage/bookshelf/userEdit">ユーザー情報の編集</a></li>
		<li><a href="withdrawApply.jsp">退会申請</a></li>
	</ul>

</header>