<%@page import="bean.Books"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header.html" %>


<%
	// 入力値の取得
	String ErrorWord = null;
	String strKeyword = request.getParameter("keyword");
	if (null == strKeyword || "".equals(strKeyword)) {
		strKeyword = "未入力";
	}
	String strSearch = request.getParameter("search");
	if (null == strSearch) {
		strSearch = "未指定";
	}
	List<Books> searchList = (List<Books>)session.getAttribute("searchList");
	if (null == searchList) {

	}
	int intSearch = searchList.size();
%>

<<<<<<< HEAD
	<div class="main-wrap">

		<h1>詳細検索</h1>
		<p>検索ワード：<%=strSearch %>:『<%=strKeyword %>』　<%=intSearch %>件ヒット</p>

		<form action="userBookSearch" method="post">
			<table class="center-table">
				<tr>
					<td>
						検索内容
						<select name="search">
							<option value="作品名">作品名</option>
							<option value="作者名">作者名</option>
						</select>
					</td>
					<td>
						<input type="text" name="keyword">
					</td>
					<td >
						<input class="submit" type="submit" value="検索">
					</td>
				</tr>
			</table>
		</form>
		<br>
		<table>
			<%
				if (searchList.size() == 0) {
			%>
			<tr>
				<td class="center">
					<% if ("".equals(request.getParameter("keyword"))) { %>
						検索ワードが未入力です。
					<% } else{ %>
						検索に一致する図書はありません。
					<% } %>
				</td>
			</tr>
			<%
				} else {
					for (Books b : searchList) {
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
					<form action="books/bookDetails" method="post">
						<input type="hidden" name="B_ID" value="<%=b.getId() %>">
						<input type="submit" value="詳細を見る">
					</form>
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
					<form action="userIndex.jsp" method="post">
						<input type="submit" value="戻る">
					</form>
				</td>
			</tr>
		</table>
		</div>
=======
<h1>詳細検索</h1>
<p>検索ワード：<%=strSearch %>:『<%=strKeyword %>』　<%=intSearch %>件ヒット</p>
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
<table>
	<%
		if (searchList.size() == 0) {
	%>
	<tr>
		<td class="center">
			<% if ("".equals(request.getParameter("keyword"))) { %>
				検索ワードが未入力です。
			<% } else{ %>
				検索に一致する図書はありません。
			<% } %>
		</td>
	</tr>
	<%
		} else {
			for (Books b : searchList) {
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
			<form action="books/bookDetails" method="post">
				<input type="hidden" name="B_ID" value="<%=b.getId() %>">
				<input type="submit" value="詳細を見る">
			</form>
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
			<form action="userIndex.jsp">
				<input type="submit" value="戻る">
			</form>
		</td>
	</tr>
</table>
</div>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad
<%@include file="../../footer.html" %>