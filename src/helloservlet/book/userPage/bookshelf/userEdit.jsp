<%@page import="bean.Customer"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header.html" %>
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<%
	List<Customer> userInfo = (List<Customer>)session.getAttribute("userInfo");
%>
<p>利用者情報編集</p>

<form action="userEditConfirm.jsp" method="post">

<%
	for (Customer u : userInfo) {
%>

<table>
	<tr>
		<td class="right">
			ユーザーID：
		</td>
		<td class="left">
			<input type="text" required="required" name="U_ID" value="<%=u.getU_ID() %>">
		</td>
	</tr>
	<tr>
		<td class="right">
			パスワード：
		</td>
		<td class="left">
			<input type="password" required="required" name="U_PASS" value="<%=u.getPassword() %>">
		</td>
	</tr>
	<tr>
		<td class="right">
			ユーザー名：
		</td>
		<td class="left">
			<input type="text" required="required" name="U_NAME" value="<%=u.getName() %>">
		</td>
	</tr>
	<tr>
		<td class="right">
			ユーザー名(カナ)：
		</td>
		<td class="left">
			<input type="text" required="required" name="U_NAME_KANA" value="<%=u.getName_kana() %>">
		</td>
	</tr>
	<tr>
		<td class="right">
			郵便番号：
		</td>
		<td class="left">
			<input type="text" required="required" pattern="\d{3}-\d{4}" name="U_POST" value="<%=u.getU_POST() %>" title="○○○‐○○○○">
		</td>
	</tr>
	<tr>
		<td class="right">
			住所：
		</td>
		<td class="left">
			<input type="text" required="required" name="U_ADDRESS" value="<%=u.getAddress() %>">
		</td>
	</tr>
	<tr>
		<td class="right">
			電話番号：
		</td>
		<td class="left">
			<input type="tel" required="required" name="U_PHONE" value="<%=u.getPhone() %>">
		</td>
	</tr>
	<tr>
		<td class="right">
			e-mail：
		</td>
		<td class="left">
			<input required="required" type="email" name="U_EMAIL" value="<%=u.getEmail() %>">
		</td>
	</tr>
	<tr>
		<td colspan="2" class="center">
			<input type="submit" value="変更">
		</td>
	</tr>
</table>
<% } %>
</form>

<table>
	<tr>
		<td class="center">
			<button onclick="history.back()">戻る</button>
		</td>
	</tr>
</table>

<%@include file="../../footer.html" %>