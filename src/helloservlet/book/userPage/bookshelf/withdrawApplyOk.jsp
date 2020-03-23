<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../../header1.html" %>

	<div class="main-wrap">

<%
	//session.setAttribute("U_ID",0);
%>
	<p>退会しました。ご利用ありがとうございました。</p>

		<table class="center-table">
			<tr>
				<td>
					<form action="../../userPage/userIndex2.jsp" method="post">
						<input class="submit" type="submit" value="Homeへ戻る">
					</form>
				</td>
			</tr>
		</table>
	</div>
<%@include file="../../footer1.html" %>