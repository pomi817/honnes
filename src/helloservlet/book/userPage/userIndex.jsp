<%@page import="bean.Books"%>
<%@page import="java.util.List"%>
<%@page import="dao.UserBooksDAO"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>
<link rel="stylesheet" type="text/css" href="../css/common.css">

<%
	String url = ""; // 遷移先URL
	String userID = ""; // 利用者ID
	if (session.getAttribute("U_ID") == null) {
		userID = "1";
	} else {
		userID = (String)session.getAttribute("U_ID");
	}
	 if (userID.equals("0")) {
		url="loginNotError.jsp";
	} else {
		url ="bookshelf/bookshelf";
	}
	 // おすすめ情報取得
	UserBooksDAO dao = new UserBooksDAO();
	List<Books> recommend = dao.getRecommend();
%>

<h1>H o nn e s</h1>
<hr>
<br>
	<table>
		<tr>
			<td class="center">
				<form action="../honnes/userSignUp.jsp" method="post">
					<input type="submit" value="新規登録">
				</form>
			</td>
			<td class="center">
				<form action="../honnes/userLogin.jsp" method="post">
					<input type="submit" value="ログイン">
				</form>
			</td>
			<td class="center">
				<form action="../honnes/userLogoutConfirm.jsp" method="post">
					<input type="submit" value="ログアウト">
				</form>
			</td>
			<td class="center">
				<form action=<%=url %> method="post">
					<input type="submit" value="マイページ">
				</form>
			</td>
			<td class="center">
				<form action="favorite.jsp" method="post">
					<input type="submit" value="お気に入り">
				</form>
			</td>
			<td class="center">
				<form action="history.jsp" method="post">
					<input type="hidden" name="back" value="index">
					<input type="submit" value="最近見た本">
				</form>
			</td>
		</tr>
	</table>
<br>
<br>
<br>
<form action="userBookSearch" method="post">
	<table>
		<tr>
			<td class="right">
				検索内容
				<select name="search">
					<option value="作品名">作品名</option>
					<option value="作者名">作者名</option>
				</select>
			</td>
			<td class="center">
				<input type="text" name="keyword">
			</td>
			<td class="left">
				<input type="submit" value="検索">
			</td>
		</tr>
	</table>
</form>
<br>
<br>
<br>

<%-- おすすめ表示 --%>
<div class="book-img-wrap">
<table>
	<tr>
<%
		for (Books b : recommend) {
			int intTurn = recommend.indexOf(b);
%>
		<td class="center">
			<% if (intTurn != 0 && intTurn % 3 == 0) { %>
		</td>
	</tr>
	<tr>
		<td class="center">
			<% } %>
				<form action="books/bookDetails" method="post">
					<input type="hidden" name="B_ID" value="<%=b.getId() %>">
					<input type="image" src="../css/img/IMG1.jpg<%//=b.getHyoushi_gazou() %>"  class="book-img" alt="<%=b.getTitle() %>">
				</form>
				<%=b.getTitle() %>
		</td>
		<% } %>
	</tr>
</table>
</div>

<%@include file="../footer.html" %>