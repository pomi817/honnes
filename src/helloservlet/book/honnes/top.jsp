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
        <input class="search-input" type="text" name="book" placeholder="  書籍のタイトル、著作者名を入力してください">
        <input class="search-book" type="submit" value="検索">
    </form>
  </div>
</div>

<div class="menu-wrap">
  <div class="menu-var">
  <form action="UserSignUp.jsp" method="post">
    <input class="btn" type="submit" value="新規登録">
  </form>
  <form action="UserSignUp.jsp" method="post">
    <input class="btn" type="submit" value="ログイン">
  </form>
  <form action="UserSignUp.jsp" method="post">
    <input class="btn" type="submit" value="ログアウト">
  </form>
  <form action="UserSignUp.jsp" method="post">
    <input class="btn" type="submit" value="マイページ">
  </form>
  <form action="UserSignUp.jsp" method="post">
    <input class="btn" type="submit" value="お気に入り">
  </form>
  <form action="UserSignUp.jsp" method="post">
    <input class="btn" type="submit" value="最近見た本">
  </form>
</div>
</div>

<%--おすすめ--%>
<div class="favorite-wrap">
  <img src="img/main-side.png" class="side-bar-left">
  <img src="img/right.png" class="side-bar-right">

  <h1 class="favorite-logo">Pick Up!!</h1>
  <div class="book-img-wrap">
    <img src="img/IMG1.jpg" class="book-img" alt="本の書籍">
    <img src="img/IMG_00011.jpg" class="book-img" alt="本の書籍">
    <img src="img/IMG_0003.jpg" class="book-img" alt="本の書籍">
    <img src="img/IMG_0003.jpg" class="book-img" alt="本の書籍">
    <img src="img/IMG_00011.jpg" class="book-img" alt="本の書籍">
    <img src="img/IMG_0003.jpg" class="book-img" alt="本の書籍">
  </div>
</div>

<%@include file="../footer.html" %>
