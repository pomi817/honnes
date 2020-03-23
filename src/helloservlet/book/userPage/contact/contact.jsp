<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header1.html" %>


	<div class="main-wrap">

		<form action="contact" method="post">

		<h1>お問い合わせ</h1>
			<table class="center-table">
				<tr>
					<td>
						連絡先メールアドレス
					</td>
					<td >
						<input required="required" value="@gmail.com" type="email" name="mail" placeholder="メールアドレスを入力してください。">
					</td>
				</tr>
				<tr>
					<td>
						お問い合わせ件名
					</td>
					<td >
						<input required="required" type="text" name="subject" placeholder="件名を入力してください。">
					</td>
				</tr>
				<tr>
					<td>
						お問い合わせ内容
					</td>
					<td >
						<textarea required="required" name="content" cols="30" rows="5"></textarea>
					</td>
				</tr>
			</table>

			<table class="center-table" >
				<tr>
					<td>
						<input class="submit" type="submit" value="次へ">
					</td>
					</tr>
			</table>
		</form>

		<table class="center-table">
			<tr>
<<<<<<< HEAD
				<td>
					<form action="../../userPage/userIndex2.jsp" method="post">
						<input class="submit" type="submit" value="Homeへ戻る">
					</form>
=======
				<td class="center">
					<button onclick="history.back()">戻る</button>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad
				</td>
			</tr>
		</table>
	</div>

<%@include file="../../footer1.html" %>