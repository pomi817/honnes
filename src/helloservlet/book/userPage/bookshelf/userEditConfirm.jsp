<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header1.html" %>



<%
	// 入力値の取得
	String strU_ID = request.getParameter("U_ID");
	String strU_PASS = request.getParameter("U_PASS");
	String strU_NAME = request.getParameter("U_NAME");
	String strU_NAME_KANA = request.getParameter("U_NAME_KANA");
	String strU_POST = request.getParameter("U_POST");
	String strU_ADDRESS = request.getParameter("U_ADDRESS");
	String strU_PHONE = request.getParameter("U_PHONE");
	String strU_EMAIL = request.getParameter("U_EMAIL");


%>

	<div class="main-wrap">

		<p>この内容で登録してよろしいでしょうか？</p>


		<table class="center-table">
			<tr>
				<td>
					ユーザーID：
				</td>
				<td >
					<%=strU_ID %>
				</td>
			</tr>
			<tr>
				<td>
					パスワード：
				</td>
				<td>
					<%=strU_PASS %>
				</td>
			</tr>
			<tr>
				<td >
					ユーザー名：
				</td>
				<td >
					<%=strU_NAME %>
				</td>
			</tr>
			<tr>
				<td>
					ユーザー名(カナ)：
				</td>
				<td>
					<%=strU_NAME_KANA %>
				</td>
			</tr>
			<tr>
				<td >
					郵便番号：
				</td>
				<td>
					<%=strU_POST %>
				</td>
			</tr>
			<tr>
				<td>
					住所：
				</td>
				<td >
					<%=strU_ADDRESS %>
				</td>
			</tr>
			<tr>
				<td>
					電話番号：
				</td>
				<td>
					<%=strU_PHONE %>
				</td>
			</tr>
			<tr>
				<td>
					e-mail：
				</td>
				<td>
					<%=strU_EMAIL %>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="center">
					<form action="userEditResult" method="post">
						<input type="hidden" name="U_ID" value="<%=strU_ID %>">
						<input type="hidden" name="U_PASS" value="<%=strU_PASS %>">
						<input type="hidden" name="U_NAME" value="<%=strU_NAME %>">
						<input type="hidden" name="U_NAME_KANA" value="<%=strU_NAME_KANA %>">
						<input type="hidden" name="U_POST" value="<%=strU_POST %>">
						<input type="hidden" name="U_ADDRESS" value="<%=strU_ADDRESS %>">
						<input type="hidden" name="U_PHONE" value="<%=strU_PHONE %>">
						<input type="hidden" name="U_EMAIL" value="<%=strU_EMAIL %>">
						<input class="submit" type="submit" value="変更確定">
					</form>
				</td>
			</tr>
		</table>

<<<<<<< HEAD
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
			<tr>
				<td>
					<form action="userEdit.jsp" method="post">
						<input class="submit" type="submit" value="　戻る　">
					</form>
				</td>
			</tr>
		</table>
	</div>
<%@include file="../../footer1.html" %>