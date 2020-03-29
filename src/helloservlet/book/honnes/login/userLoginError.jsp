<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.html"%>

	<div class="main-wrap">

		<div class="point-message">
			<p>IDまたはパスワードが違います。<br>もう一度入力してください。</p>
		</div>

		<form action="userSignUp.jsp" method="post">
			<input class="submit" type="submit" value="新規登録はこちら">
		</form>

		<%-- ユーザーID＆パスワード入力フォーム --%>
		<form action="loginAction" method="post">
			<table class="center-table">
				<tr>
					<td>ID</td>
					<td>
					<input class="input-zone" type="text" name="U_ID" maxlength="10" placeholder="ユーザー名を入力">
					</td>
				</tr>

				<tr>
					<td>パスワード</td>
					<td>
					<input  class="input-zone" type="password" name="U_PASS" maxlength="8" placeholder="パスワードを入力">
					</td>
				</tr>
			</table>
			<table class="center-table">
				<tr>
					<td>
						<input class="submit" type="submit" value="ログイン">
					</td>
				</tr>
			</table>
		</form>
	</div>

<%@include file="../footer.html" %>

