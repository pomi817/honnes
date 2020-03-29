<%@page contentType="text/html; charset=UTF-8"%>

<%
//エラーメッセージをリクエスト属性から取得
String error = (String) request.getAttribute("error");

//初期値の設定
String U_ID=request.getParameter("U_ID");
String U_PASS=request.getParameter("U_PASS");
String U_NAME=request.getParameter("U_NAME");
String U_NAME_KANA=request.getParameter("U_NAME_KANA");
String U_POST=request.getParameter("U_POST");
String U_ADDRESS=request.getParameter("U_ADDRESS");
String U_PHONE=request.getParameter("U_PHONE");
String U_EMAIL=request.getParameter("U_EMAIL");
String U_INFO=(String)request.getParameter("U_INFO");

//null表示の対応
if(U_ID == null) {
	U_ID = "";
}
if(U_PASS == null) {
	U_PASS = "";
}
if(U_NAME== null) {
	U_NAME = "";
}

if(U_NAME_KANA == null) {
	U_NAME_KANA = "";
}

if(U_POST == null) {
	U_POST = "";
}

if(U_ADDRESS == null) {
	U_ADDRESS = "";
}

if(U_PHONE == null){
	U_PHONE= "";
}

if(U_EMAIL == null) {
	U_EMAIL = "";
}

%>


<%@include file="../header.html"%>
	<div class="main-wrap">

		<form action="userLogin.jsp" method="post">
			<input type="submit" value="会員の方はこちら">
		</form>

		<section>
			<h1 id="title">新規登録</h1>

			<%
				if (error != null) {
			%>
			<p align="center"><%=error %></p>
			<%
				}
			%>


			<p class="point-message">※全て必須項目です</p>
<<<<<<< HEAD
			<form action="userInsert" method="post">
				<table class="center-table" >
=======
			<form action="userConfirm" method="post">
				<table align="center">
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad
					<tr>
						<td>ID</td>
						<td>
							<input class="input-zone" type="text" name="U_ID" maxlength="10" value="<%=U_ID %>" placeholder="ユーザー名を入力"></td>
					</tr>

					<tr>
						<td>パスワード</td>
						<td><input  class="input-zone" type="password" name="U_PASS" maxlength="8" value="<%=U_PASS %>" placeholder="8桁のパスワードを入力"></td>
					</tr>

					<tr>
						<td>氏名（漢字）</td>
						<td><input  class="input-zone" type="text" name="U_NAME" maxlength="50" value="<%=U_NAME %>" placeholder="漢字で入力"></td>
					</tr>

					<tr>
						<td>氏名（カナ）</td>
						<td><input  class="input-zone" type="text" name="U_NAME_KANA" maxlength="50" value="<%=U_NAME_KANA %>" placeholder="カタカナで入力"></td>
					</tr>

					<tr>
						<td>郵便番号</td>
						<td><input  class="input-zone" type="text" name="U_POST" maxlength="50" value="<%=U_POST%>" placeholder="郵便番号を入力"></td>
					</tr>

					<tr>
						<td>住所</td>
						<td><input  class="input-zone" type="text" name="U_ADDRESS" maxlength="50" value="<%=U_ADDRESS %>" placeholder="住所を入力"></td>
					</tr>

					<tr>
						<td>電話番号</td>
						<td><input  class="input-zone" type="text" name="U_PHONE" maxlength="50" value="<%=U_PHONE%>" placeholder="電話番号を入力"></td>
					</tr>

					<tr>
						<td>メールアドレス</td>
						<td><input  class="input-zone" type="text" name="U_EMAIL" maxlength="50" value="<%=U_EMAIL%>" placeholder="メールアドレスを入力"></td>
					</tr>
<<<<<<< HEAD
=======

					<tr>
						<td>予約連絡方法</td>
						<td>
						<input type="radio" name="U_INFO" value="電話"
						<% if ("電話".equals(U_INFO)){%>
						checked
						<% } %>>電話　
						<input type="radio" name="U_INFO" value="メール"
						<% if ("メール".equals(U_INFO)){%>
						checked
						<% } %>>メール
						</td>
					</tr>

					<tr>
						<td class="button">
							<input type="submit" value="次へ">
						</td>
					</tr>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad
				</table>

				<input class="submit" type="submit" value="次へ">

			</form>

		</section>
	</div>
<%@include file="../footer.html"%>