<%@page import="dao.UserBooksDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Books"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header.html" %>
<link rel="stylesheet" type="text/css" href="../../css/common.css">

<%
	String actoin = "";
	String userID = "";
	if (session.getAttribute("U_ID") == null) {
		userID = "1";
	} else {
		userID = (String)session.getAttribute("U_ID");
	}
	if (userID.equals("0")) {
		actoin="loginNotError.jsp";
	} else {
		actoin="../bookshelf/bookshelf";
	}
	List<String> bookshelf = (List<String>) session.getAttribute("bookshelf");
	List<Books> list = new ArrayList<Books>();

%>

<p>本棚一覧</p>
<table border="1">
	<tr>
		<td class="center">
		</td>
		<td class="center">
			タイトル
		</td>
		<td class="center">
			作者
		</td>
		<td class="center">
			出版社
		</td>
	</tr>
	<%
		for (String s : bookshelf) {
		UserBooksDAO dao = new UserBooksDAO();
		list = dao.bookDetails(s);
	%>
	<% for (Books b : list) { %>
		<tr>
			<td class="center">
				<%=b.getHyoushi_gazou() %>
			</td>
			<td class="center">
				<%=b.getTitle() %>
			</td>
			<td class="center">
				<%=b.getAuthor() %>
			</td>
			<td class="center">
				<%=b.getPublisher() %>
			</td>
		</tr>
	<%
			}
		}
	%>
</table>
<br>
<table>
	<tr>
		<td class="center">
			<form action=<%=actoin %> method="post">
				<input type="submit" value="貸出へ進む">
			</form>
		</td>
		<td class="center">
			<form action="../userBookSearch.jsp" method="post">
				<input type="submit" value="検索に戻る">
			</form>
		</td>
	</tr>
</table>

<%@include file="../../footer.html" %>