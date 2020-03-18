<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>

<%--メイン--%>
<div class="top-wrap">
  <div class="top-wrap-shadow"></div>
    <div class="top-wrap-contents">
      <br>
      <h1 class="top-title">Honnes</h1>

<%--検索--%>
      <form class="search-wrap" action="userBookSearch.jsp" method="post">
      	<div class="search-select">
		<p><input type="radio" name="search" value="作品名">作品名</p>
		<p><input type="radio" name="search" value="著作者名">著作者名</p>
		</div>
        <input class="search-input" type="text" name="keyword" placeholder="  書籍のタイトル、または著作者名を入力してください">
        <input class="search-book" type="submit" value="検索">
    </form>
  </div>
</div>

<div class="menu-wrap">
  <div class="menu-var">
  <form action="userSignUp.jsp" method="post">
    <input class="btn" type="submit" value="新規登録">
  </form>
  <form action="userLogin.jsp" method="post">
    <input class="btn" type="submit" value="ログイン">
  </form>
  <form action="bookshelf.jsp" method="post">
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

<%--おすすめ--%>
<div class="all-wrap">
  <img src="../css/img/main-side.png" class="side-bar-left">
  <img src="../css/img/right.png" class="side-bar-right">

  <h1 class="favorite-logo">Pick Up!!</h1>
  <div class="book-img-wrap">
    <img src="../css/img/IMG1.jpg" class="book-img" alt="本の書籍">
    <img src="../css/img/IMG_00011.jpg" class="book-img" alt="本の書籍">
    <img src="../css/img/IMG_0003.jpg" class="book-img" alt="本の書籍">
    <img src="../css/img/IMG_0003.jpg" class="book-img" alt="本の書籍">
    <img src="../css/img/IMG_00011.jpg" class="book-img" alt="本の書籍">
    <img src="../css/img/IMG_0003.jpg" class="book-img" alt="本の書籍">
  </div>
</div>

<%@include file="../footer.html" %>