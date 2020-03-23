<%@page import="bean.Books"%>
<%@page import="dao.UserBooksDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>

<%
	List<String> bookHistory = (List<String>) session.getAttribute("bookHistory");
	if (bookHistory == null) {
		bookHistory = new ArrayList<String>();
	}
	List<Books> list = new ArrayList<Books>();
	String strBack = request.getParameter("back");
%>

	<div class="main-wrap">

		<h1>最近の閲覧履歴</h1>

			<%
				if (bookHistory.size() == 0) {
			%>
					<p>最近見た本はありません。</p>
			<%
				} else {
			%>

		<div class="book-list">
		<table border=1>
			<tr>
				<td>
				</td>
				<td>
					タイトル
				</td>
				<td>
					作者
				</td>
				<td>
					出版社
				</td>
				<td>
				</td>
			</tr>

			<%
				for (String s : bookHistory) {
					UserBooksDAO dao = new UserBooksDAO();
					list = dao.bookDetails(s);
			%>
					<% for (Books b : list) { %>
				<tr>
					<td>
						<%=bookHistory.indexOf(s) + 1 %>
					</td>
					<td>
						<%=b.getTitle() %>
					</td>
					<td>
						<%=b.getAuthor() %>
					</td>
					<td>
						<%=b.getPublisher() %>
					</td>
					<td>
						<form action="books/bookDetails" method="post">
							<input type="hidden" value="history" name="back">
							<input type="hidden" name="B_ID" value="<%=b.getId() %>">
							<input  class="submit" type="submit" value="詳細を見る">
						</form>
					</td>
				</tr>
			<%
					}
				}
			%>
		</table>
		<% } %>

<<<<<<< HEAD
		<table class="center-table">
			<tr>
				<td>
					<form action="../userPage/userIndex2.jsp" method="post">
						<input class="submit" type="submit" value="Homeへ戻る">
					</form>
				</td>
			</tr>
		</table>
=======
<table  align="center">
	<tr>
		<td>
			<button onclick="history.back()">戻る</button>
		</td>
	</tr>
</table>

		<br>
		<br>
		<div class="center-btn-wrap">
			<a href="../honnes/userIndex.jsp" class="center-btn home" align="center">Topに戻る</a>
		</div>
	</div>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad
</div>

<%@include file="../footer.html" %>