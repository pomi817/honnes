<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>

	<div class="main-wrap">

<<<<<<< HEAD
		<h2>お気に入り</h2>
=======
<table>
	<tr>
		<td class="center">
			<button onclick="history.back()">戻る</button>
		</td>
	</tr>
</table>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad

		<table class="center-table">
			<% // for (int i = 0; i < list.size; i++) {} %>
			<tr>
				<td class="center">
					画像
				</td>
				<td class="center">
					タイトル
				</td>
				<td class="center">
					作者名
				</td>
				<td class="center">
					<form action="books/bookDetails.jsp" method="post">
						<input class="submit" type="submit" value="詳細を見る">
					</form>
				</td>
			</tr>
		</table>

		<table class="center-table">
			<tr>
				<td>
					<form action="../userPage/userIndex2.jsp" method="post">
						<input class="submit" type="submit" value="Homeへ戻る">
					</form>
				</td>
			</tr>
		</table>
	</div>
	<%@include file="../footer.html" %>