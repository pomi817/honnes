<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.html"%>

	<div class="main-wrap">
		<div class="main-wrap-inner">

		<p>ログアウトしますか？</p>


		<table class="center-table">
			<tr>
				<td><form action="logoutAction" method="get">
				<input class="submit" type="submit" value="はい">
				</form></td>

				<td><form>
					<input class="submit"  type="button" value="いいえ">
				</form></td>
			</tr>
		</table>
	</div>
</div>
<%@include file="../footer1.html" %>