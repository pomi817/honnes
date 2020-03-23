<%@page contentType="text/html; charset=UTF-8" %>

<%@include file="../header.html" %>

<%--メイン--%>

<div class="top-wrap">
  <div class="top-wrap-shadow"></div>
    <div class="top-wrap-contents">
      <br>
      <h1 class="top-title">Ho<span class="top-span">nn</span>es</h1>

<%--検索--%>

      <form class="search-wrap" action="userBookSearch" method="post">
      	<div class="search-select">
					<p><input type="radio" name="search" value="作品名" checked="checked">作品名</p>
					<p><input type="radio" name="search" value="著作者名">著作者名</p>
					</div>
        <input class="search-input" type="text" name="keyword" placeholder="  書籍のタイトル、または著作者名を入力してください">
        <input class="search-btn" type="submit" value="検索">
    	</form>
  	</div>
	</div>

<%--メニュー--%>

	<div class="menu-wrap">
		<div class="menu-bar">
			<form action="../honnes/userSignUp.jsp" method="post">
				<input class="btn" type="submit" value="新規登録">
			</form>
			<form action="../honnes/userLogin.jsp" method="post">
				<input class="btn" type="submit" value="ログイン">
			</form>
			<form action="bookshelf/bookshelf.jsp" method="post">
				<input class="btn" type="submit" value="マイページ">
			</form>
			<form action="favorite.jsp" method="post">
				<input class="btn" type="submit" value="お気に入り">
			</form>
			<form action="history.jsp" method="post">
				<input class="btn" type="submit" value="最近見た本">
			</form>
		</div>
	</div>

	<%--Pick up--%>

	<div class="main-wrap">
		<div class="main-wrap-inner">

			<h1>Pick Up!!</h1>
			<div class="pick-up-img-wrap">
				<p class="book-cover"><img src="../css/img/IMG1.jpg" class="book-img" alt="book-cover"></p>
				<p class="book-cover"><img src="../css/img/IMG_00011.jpg" class="pick-book-img" alt="book-cover"></p>
				<p class="book-cover"><img src="../css/img/IMG_0003.jpg" class="pick-book-img" alt="book-cover"></p>
				<p class="book-cover"><img src="../css/img/IMG_0003.jpg" class="pick-book-img" alt="book-cover"></p>
				<p class="book-cover"><img src="../css/img/IMG_00011.jpg" class="pick-book-img" alt="book-cover"></p>
				<p class="book-cover"><img src="../css/img/IMG_0003.jpg" class="pick-book-img" alt="book-cover"></p>
			</div>

		</div>
	</div>
</div>
<%@include file="../footer1.html" %>