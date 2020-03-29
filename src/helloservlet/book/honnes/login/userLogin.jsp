<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.html" %>

<%
//エラーメッセージをリクエスト属性から取得
String error = (String) request.getAttribute("error");
String blankId = (String) request.getAttribute("blankId");
String blankPass = (String) request.getAttribute("blankPass");
%>

	<body>
		<div class="all-wrap">

			<h1>会員ログインページ</h1>

		<form action="adminInfo.jsp" method="post">
			<input type="submit" value="新規登録はこちら">
		</form>

		<p>IDとパスワードを入力してください。</p>

		<%-- ユーザーID＆パスワード入力フォーム --%>

		<form  action="loginAction" method="post">
		<table class="login-table">
			<tr>
				<td>ID</td>
				<td><input type="text" name="login">
				<%
				//エラーメッセージの表示
				if (blankId != null) {
				%>
				<%=blankId %>
				<%
				}
				%></td>
			</tr>
			<tr>
				<td>パスワード</td>
				<td><input type="password" name="password">

				<%
				//エラーメッセージの表示
				if (blankPass != null) {
				%>
				<%=blankPass %>
				<%
				}
				%>
				</td>
			</tr>
		</table>

		<br>
		<%
			//エラーメッセージの表示
				if (error != null) {
			%>
			<div><%=error %></div>
			<%
				}
			%>


		<p><input type="submit" class="submit" value="ログイン"></p>
		</form>
	</div>
		</div>
<%@include file="../footer.html" %>