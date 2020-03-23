<%@page import="bean.Rental"%>
<%@page import="dao.UserBooksDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Books"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header1.html" %>

<%
	String url = "";
	String stock = "";
	List<String> bookshelf = (List<String>)session.getAttribute("bookshelf");
	List<String> rentalList = (List<String>)session.getAttribute("rentalList");
	if (null == bookshelf) {
		bookshelf =new ArrayList<String>();
	}
	if (null == rentalList) {
		rentalList =new ArrayList<String>();
	}
	List<Books> list = new ArrayList<Books>();
%>

<div class="main-wrap">

<h1>マイページ</h1>

<h2>本棚の本</h2>

<%
	if (bookshelf.size() == 0) {
%>
<p>本棚に本はありません。</p>
<%
	} else {
%>
<table border="1">
	<tr>
		<td class="center">
			タイトル
		</td>
		<td class="center">
			作者
		</td>
		<td class="center">
			出版社
		</td>
		<td colspan="2">
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
				<%=b.getTitle() %>
			</td>
			<td class="center">
				<%=b.getAuthor() %>
			</td>
			<td class="center">
				<%=b.getPublisher() %>
			</td>

			<td class="center">
				<%
				if (b.getStock() == 0) {
					url = "stockNotError.jsp";
				} else {
					url = "rental";
				}
				%>
				<form action=<%=url %> method="post">
					<input type="hidden" name="B_ID" value="<%=b.getId() %>">
					<input type="submit" value="貸出">
				</form>
			</td>
			<td class="center">
				<form action=bookshelf.jsp method="post">
					<input type="hidden" name="B_ID" value="<%=b.getId() %>">
					<% // bookshelf.remove(B_ID) %>
					<input type="submit" value="本棚から削除">
				</form>
			</td>
		</tr>
	<%
			}
		}
	%>
</table>
<% } %>
<br>

<%
	if (rentalList.size() == 0) {
%>
<p>貸出中の本はありません。</p>
<%
	} else {
%>
<h2>貸出中の本</h2>
<table border="1">
	<tr>
		<td class="center">
			タイトル
		</td>
		<td class="center">
			作者
		</td>
		<td class="center">
			出版社
		</td>
		<td>
		</td>
	</tr>
	<%
		for (String s : rentalList) {
		UserBooksDAO dao = new UserBooksDAO();
		list = dao.bookDetails(s);
	%>
	<% for (Books b : list) { %>
		<tr>
			<td class="center">
				<%=b.getTitle() %>
			</td>
			<td class="center">

				<%=b.getAuthor() %>
			</td>
			<td class="center">
				<%=b.getPublisher() %>
			</td>

			<td class="center">
				<form action="return" method="post">
					<input type="hidden" name="B_ID" value="<%=b.getId() %>">
					<input type="submit" value="返却">
				</form>
			</td>
		</tr>
	<%
			}
		}
	%>
</table>
<%
	}
%>

<br>

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
			<form action="../favorite.jsp" method="post">
				<input type="submit" value="お気に入り">
			</form>
		</td>
		<td class="center">
			<form action="../history.jsp" method="post">
				<input type="hidden" name="back" value="bookshelf">
				<input type="submit" value="最近見た本">
			</form>
		</td>
	</tr>
</table>

<table>
	<tr>
		<td class="center">
			<form action="userEdit" method="post">
				<input type="submit" value="ユーザー情報の編集">
			</form>
		</td>
		<td class="center">
			<form action="withdrawApply.jsp" method="post">
				<input type="submit" value="退会申請">
			</form>
		</td>
	</tr>
</table>

<table>
	<tr>
		<td class="center">
			<form action="../userIndex.jsp" method="post">
				<button onclick="history.back()">ホーム</button>
			</form>
		</td>
	</tr>
</table>
</div>

<%@include file="../../footer1.html" %>