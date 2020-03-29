<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

	<div class="main-wrap">

		<p>ログインしてください。</p>

			<form action="userLogin.jsp" method="post">
				<input class="submit" type="submit" value="ログイン">
			</form>

			<br>

			<form action="userSignUp.jsp" method="post">
				<input  class="submit" type="submit" value="新規登録">
			</form>
	</div>
		<a href="userIndex2.jsp" class="home-btn">Topに戻る</a>

<%@include file="../footer.html" %>