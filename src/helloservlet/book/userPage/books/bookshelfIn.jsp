<%@page import="bean.Books"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header1.html" %>
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
	List<Books> bookDetails = (List<Books>)session.getAttribute("bookDetails");
	List<String> bookshelf = (List<String>)session.getAttribute("bookshelf");
	List<String> rentalList = (List<String>)session.getAttribute("rentalList");

	String strB_ID = request.getParameter("B_ID");
%>
<%
	if (bookshelf.contains(strB_ID)) {
		for (Books b : bookDetails) {
%>
			<p>『<%=b.getTitle() %>』は既に本棚にあります。</p>
<%
		}
	} else  if (rentalList.contains(strB_ID)) {
		for (Books b : bookDetails) {
%>
			<p>『<%=b.getTitle() %>』は既に貸出しています。</p>
<%
		}
	} else {
		bookshelf.add(strB_ID);
%>
<p>以下の本を本棚に追加しました。</p>
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
		for (Books b : bookDetails) {
	%>
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
		<% } %>
</table>
<% } %>

<table>
	<tr>
		<td class="center">
			<form action="bookshelfList.jsp" method="post">
				<input type="submit" value="本棚一覧">
			</form>
		</td>
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