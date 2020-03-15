<%@page contentType="text/html; charset=UTF-8" %>

<%@include file="../header.html" %>

<div class="top-wrap">
  <div class="top-wrap-shadow"></div>
  <div class="top-wrap-contents">
<img class="top-img" src="img/top.png">
<h1 class="top-logo">honnes</h1>

<p>こんにちわ</p>
<form class="search-wrap"> 
  <input class="search-input" type="text" >
  <input class="search-book" type="submit" value="検索">
</form>
<p><%=new java.util.Date() %></p>
</div>
</div>

<ul>
	<li><a class="active" href="#home">Home</a></li>
	<li><a href="#news" class="menu-bar">News</a></li>
  <li><a href="#news" class="menu-bar">Contact</a></li>
	<li><a href="#about" class="menu-bar">About</a></li>
</ul>

<div class="favorite-wrap">
  <h1 class="favorite-logo">Pick Up!!</h1>
  <div class="book-img-wrap">
  <img src="img/c.jpg" class="book-img" alt="本の書籍">
  <img src="img/c.jpg" class="book-img" alt="本の書籍">
  <img src="img/c.jpg" class="book-img" alt="本の書籍">
  <img src="img/c.jpg" class="book-img" alt="本の書籍">
  <img src="img/c.jpg" class="book-img" alt="本の書籍">
  <img src="img/c.jpg" class="book-img" alt="本の書籍">
</div>


</div>
<%@include file="../footer.html" %>
