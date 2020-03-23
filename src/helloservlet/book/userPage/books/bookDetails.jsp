<%@page import="bean.Books"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header1.html" %>
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<%
	List<Books> bookDetails = (List<Books>)session.getAttribute("bookDetails");
%>
<table>
	<%
		for (Books b : bookDetails) {
	%>
	<tr>
		<td colspan="4" class="center">
				<%=b.getHyoushi_gazou() %>
		</td>
	</tr>
	<tr>
		<td class="center">
			タイトル：<%=b.getTitle() %>
		</td>
		<td class="center">
			作者：<%=b.getAuthor() %>
		</td>
		<td class="center">
			出版社：<%=b.getPublisher() %>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td colspan="4" class="center">
			あらすじ：<%=b.getSetsmei() %>
		</td>
	</tr>
	<tr>
		<td colspan="4" class="center">
			<form action="bookshelfIn" method="post">
				<input type="hidden" name="B_ID" value="<%=b.getId() %>">
				<input type="submit" value="本棚に追加">
			</form>
		</td>
	</tr>
	<% } %>
</table>

<form action="../userBookSearch" method="post">
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

<table>
	<tr>
		<td class="center">
			<button onclick="history.back()">戻る</button>
		</td>
	</tr>
</table>
<%@include file="../../footer.html" %>