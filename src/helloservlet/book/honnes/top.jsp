<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>

<%--title--%>
<div class="top-wrap">
  <div class="top-wrap-shadow"></div>
    <div class="top-wrap-contents">
      <h1 class="top-title">Honnes</h1>

<%--search--%>
      <form class="search-wrap" action="userBookSearch.jsp" method="post">
        <div class="search-select">
          <p><input type="radio" name="search" value="作品名">作品名</p>
          <p><input type="radio" name="search" value="著作者名">著作者名</p>
        </div>
        <input class="book-search-input" type="text" name="keyword" placeholder="  書籍のタイトル、著作者名を入力してください">
        <input class="book-search-btn" type="submit" value="検索">
      </form>
    </div>
</div>

<%--menu--%>
<div class="menu-wrap">
  <div class="menu-bar">
    <form action="userSignUp.jsp" method="post">
      <input class="btn" type="submit" value="新規登録">
    </form>

    <form action="userLogin.jsp" method="post">
      <input class="btn" type="submit" value="ログイン">
    </form>

    <form action="UserSignUp.jsp" method="post">
      <input class="btn" type="submit" value="ログアウト">
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

<%--pick up--%>

<div class="all-wrap">
  <div class="all-wrap-inner">
  <!-- <p><img src="img/main-side.png" class="side-bar-left" alt="cat-foot-left"></p>
  <p><img src="img/right.png" class="side-bar-right" alt="cat-foot-right"></p> -->

  <h1>Pick Up!!</h1>

  <div class="pick-up-img-wrap">
    <p class="book-cover"><img src="img/IMG1.jpg" class="book-img" alt="book-cover"></p>
    <p class="book-cover"><img src="img/IMG_00011.jpg" class="pick-book-img" alt="book-cover"></p>
    <p class="book-cover"><img src="img/IMG_0003.jpg" class="pick-book-img" alt="book-cover"></p>
    <p class="book-cover"><img src="img/IMG_0003.jpg" class="pick-book-img" alt="book-cover"></p>
    <p class="book-cover"><img src="img/IMG_00011.jpg" class="pick-book-img" alt="book-cover"></p>
    <p class="book-cover"><img src="img/IMG_0003.jpg" class="pick-book-img" alt="book-cover"></p>
  </div>
  </div>
</div>

<%@include file="../footer.html" %>
