<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.html" %>

<%
//初期値の設定
String U_ID=(String)request.getParameter("U_ID");
String U_PASS=(String)request.getParameter("U_PASS");
int Passlength = U_PASS.length();
String Pass = "";
for (int i = 0; i < Passlength; i++) {
	Pass += "●";
}
String U_NAME=(String)request.getParameter("U_NAME");
String U_NAME_KANA=(String)request.getParameter("U_NAME_KANA");
String U_POST=(String)request.getParameter("U_POST");
String U_ADDRESS=(String)request.getParameter("U_ADDRESS");
String U_PHONE=(String)request.getParameter("U_PHONE");
String U_EMAIL=(String)request.getParameter("U_EMAIL");
String U_INFO=(String)request.getParameter("U_INFO");
%>

<!DOCTYPE html>
<html>
<%@include file="../header.html"%>

<div class="main-wrap">

		<h1 id="title">新規登録</h1>
		<p>＜登録内容確認＞</p>
		<p>以下の項目で登録に進んでもいいですか？</p>
		<table class="center-table">
			<tr>
				<td>ID</td>
				<td><%=U_ID %></td>
			</tr>

			<tr>
				<td>パスワード</td>
				<td><%=Pass %></td>
			</tr>

			<tr>
				<td>氏名（漢字）</td>
				<td><%=U_NAME %></td>
			</tr>

			<tr>
				<td>氏名（カナ）</td>
				<td><%=U_NAME_KANA %></td>
			</tr>

			<tr>
				<td>郵便番号</td>
				<td><%=U_POST%></td>
			</tr>

			<tr>
				<td>住所</td>
				<td><%=U_ADDRESS %></td>
			</tr>

			<tr>
				<td>電話番号</td>
				<td><%=U_PHONE%></td>
			</tr>

			<tr>
				<td>メールアドレス</td>
				<td><%=U_EMAIL%></td>
			</tr>

			<tr>
				<td>予約確認方法</td>
				<td><%=U_INFO%></td>
			</tr>
		</table>

		<input  type="button" onclick="window.history.back();" value="入力画面に戻る">

		<form action=userInsert method="post">
			<input class="submit" type="submit" value="登録">
		</form>


		<div class="center-btn-wrap">
			<a class="submit" href="userIndex.jsp">ホームへ</a>
		</div>
	</div>
<%@include file="../footer1.html" %>