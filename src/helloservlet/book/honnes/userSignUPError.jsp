<%@ page contentType="text/html; charset=UTF-8"%>
<%

//エラーメッセージをリクエスト属性から取得
String error = (String) request.getAttribute("error");

//初期値の設定
String U_ID=(String)request.getParameter("U_ID");
String U_PASS=(String)request.getParameter("U_PASS");
String U_NAME=(String)request.getParameter("U_NAME");
String U_NAME_KANA=(String)request.getParameter("U_NAME_KANA");
String U_POST=(String)request.getParameter("U_POST");
String U_ADDRESS=(String)request.getParameter("U_ADDRESS");
String U_PHONE=(String)request.getParameter("U_PHONE");
String U_EMAIL=(String)request.getParameter("U_EMAIL");
String U_INFO=(String)request.getParameter("U_INFO");
%>



<%@include file="../header.html"%>
<<<<<<< HEAD
	<div class="main-wrap">

		<p class="point-message">IDが重複してます</p>

		<div>
			<a href="userIndex.jsp">ホームへ</a>
=======
<div class="main-wrap">
	<img src="../css/img/main-side.png" class="side-bar-left">
  	<img src="../css/img/right.png" class="side-bar-right">



		<section>
			<h1 id="title">新規登録</h1>

			<p align="center"><%=error %></p>

			<form action="userConfirm" method="post">
				<table align="center">
					<tr>
						<td>ID</td>
						<td>
							<input class="input-zone" type="text" name="U_ID" maxlength="10" value="<%=U_ID %>" placeholder="ユーザー名を入力"></td>
					</tr>

					<tr>
						<td>パスワード</td>
						<td><input class="input-zone" type="password" name="U_PASS" maxlength="8" value="<%=U_PASS %>" placeholder="パスワードを入力"></td>
					</tr>

					<tr>
						<td>氏名（漢字）</td>
						<td><input class="input-zone" type="text" name="U_NAME" maxlength="50" value="<%=U_NAME %>" placeholder="漢字で入力"></td>
					</tr>

					<tr>
						<td>氏名（カナ）</td>
						<td><input class="input-zone" type="text" name="U_NAME_KANA" maxlength="50" value="<%=U_NAME_KANA %>" placeholder="カタカナで入力"></td>
					</tr>

					<tr>
						<td>郵便番号</td>
						<td><input class="input-zone" type="text" name="U_POST" maxlength="50" value="<%=U_POST%>" placeholder="郵便番号を入力"></td>
					</tr>

					<tr>
						<td>住所</td>
						<td><input class="input-zone" type="text" name="U_ADDRESS" maxlength="50" value="<%=U_ADDRESS %>" placeholder="住所を入力"></td>
					</tr>

					<tr>
						<td>電話番号</td>
						<td><input class="input-zone" type="text" name="U_PHONE" value="<%=U_PHONE%>" placeholder="電話番号を入力"></td>
					</tr>

					<tr>
						<td>メールアドレス</td>
						<td><input class="input-zone" type="text" name="U_EMAIL" maxlength="50" value="<%=U_EMAIL%>" placeholder="メールアドレスを入力"></td>
					</tr>
					<tr>
						<td>予約連絡方法</td>
						<td>
						<input type="radio" name="U_INFO" value="電話"
						<% if (U_INFO.equals("電話")){%>
						checked
						<% } %>>電話　
						<input type="radio" name="U_INFO" value="メール"
						<% if (U_INFO.equals("メール")){%>
						checked
						<% } %>>メール
						</td>
					</tr>

					<tr>
						<td colspan="2" class="button">
							<button type="submit">次へ</button>
						</td>
					</tr>
				</table>
			</form>

		</section>
<br>
<br>
<div class="center-btn-wrap">
			<a class="center-btn" href="userIndex.jsp">ホームへ</a>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad
		</div>

</div>
<%@include file="../footer.html" %>