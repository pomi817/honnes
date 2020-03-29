<%@page contentType="text/html; charset=UTF-8" %>

<%@include file="../header.jsp" %>

<%--メイン--%>

<div class="top-wrap">
  <div class="top-wrap-shadow"></div>
    <div class="top-wrap-contents">
      <br>
      <h1 class="top-title">Ho<span class="top-span">nn</span>es</h1>

<%--検索--%>

      <form class="search-wrap" action="userBookSearch" method="post">
      	<div class="search-select">
					<input type="radio" name="search" value="作品名" checked="checked">作品名
					<input type="radio" name="search" value="著作者名">著作者名
					<div class="cp_ipselect cp_sl01">
						<select required name="booksort">
							<option value="B_TITLE">作品名昇順</option>
							<option value="B_TITLE">作品名降順</option>
							<option value="B_AUTHOR">作者名昇順</option>
							<option value="B_AUTHOR DESC">作者名降順</option>
							<option value="B_PUBLISHER">出版社別</option>
						</select>
					</div>
				</div>
			  <input class="book-search-input" type="text" name="keyword"    placeholder="  書籍のタイトル、または著作者名を入力してください">
        <input class="book-search-btn" type="submit" value="検索">
      </form>
	  </div>
</div>

<%--メニュー--%>

<div class="menu-wrap">
  <div class="menu-bar">
  	<form action="honnes/login/userSignUp.jsp" method="post">
   	 	<input class="btn" type="submit" value="新規登録">
		</form>

	<form action=<%=strLogin %> method="post">
		<input class="btn" type="submit" value=<%=strValue %>>
	</form>

	<form action=<%=strUrl %> method="post">
		<input class="btn" type="submit" value="マイページ">
	</form>
	<form action=<%=strURL %> method="post">
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



			<form class="book-cover" action="books/bookDetails" method="post">
				<input type="hidden" name="B_ID" value="<%=b.getId() %>">
				<input class="book" type="image" src=<%=b.getHyoushi_gazou() %> alt="<%=b.getTitle() %>" width=250px height=400px>
				<%=b.getTitle() %>
			</form>
     <% } %>
    </div>
  </div>
</div>
<%@include file="../footer.jsp" %>