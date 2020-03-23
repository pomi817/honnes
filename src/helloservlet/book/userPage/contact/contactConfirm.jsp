<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Contact"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header1.html" %>


<%
	// セッションから値を取得
	List<Contact> contact = (List<Contact>)session.getAttribute("contact");

	String strAddress = "";
	String strSubject = "";
	String strContent = "";
	// 値を変数に代入
	if (null != contact) {
		for (Contact c : contact) {
			strAddress = c.getC_Address();
			strSubject = c.getC_Subject();
			strContent = c.getC_Content();
		}
	}
%>
	<div class="main-wrap">

		<p>この内容でよろしいですか？</p>

<<<<<<< HEAD
		<table class="center-table">
			<tr>
				<td>
					連絡先メールアドレス
				</td>
				<td >
					<%=strAddress %>
				</td>
			</tr>
			<tr>
				<td>
					お問い合わせ件名
				</td>
				<td >
					<%=strSubject %>
				</td>
			</tr>
			<tr>
				<td>
					お問い合わせ内容
				</td>
				<td >
					<%=strContent %>
				</td>
			</tr>
		</table>
=======
<table>
	<tr>
		<td class="center">
			<form action="contactInsert" method="post">
				<input type="submit" value="送信する">
			</form>
		</td>
		<td class="center">
			<button onclick="history.back()">戻る</button>
		</td>
	</tr>
</table>
>>>>>>> e6ba0d5328f6c66b815e124641034b1bd40c41ad

		<table class="center-table">
			<tr>
				<td>
					<form action="contactInsert" method="post">
						<input class="submit" type="submit" value="送信する">
					</form>
				</td>
				<td>
					<form action="contact.jsp" method="post">
						<input class="submit" type="submit" value="　戻る　">
					</form>
				</td>
			</tr>
		</table>
	</div>
<%@include file="../../footer1.html" %>