<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상세정보</title>
<style type="text/css">
div{float: left; margin-right: 50px;}
</style>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="bookinfo_js.js"></script>
</head>
<body>
<form id="form">
<input hidden="hidden" type="text" name="title" value="사물인터넷 웨어러블 0.9">
<input hidden="hidden" type="text" name="author" value="송태민">
<input hidden="hidden" type="text" name="publisher" value="한빛미디어">
<input hidden="hidden" type="text" name="pubdate" value="2015-04-10">
<input hidden="hidden" type="text" name="price" value="28000">
<input hidden="hidden" type="text" name="qty" value="0">
</form>
<div>
<img src="images/IOT.jpg" style="width: 100px;">
</div>
<div>
책이름 : 사물인터넷 웨어러블 0.9<br>
지은이 : 송태민  <br>
출판사 : 한빛미디어<br>
발행일 : 2015년 04월 10일<br>
정 가 : 2,8000원<br>
수 량 : <input type="text" id="qty" value="1">
<button id="btn_purchase">구매</button>
<button id="btn_cart_add">장바구니 담기</button>
<a href="cartlist.jsp"><button id="btn_cart_view">장바구니 보기</button></a>
</div>
<br>
<div>
<a href="books.jsp"><button>목록보기</button></a>
</div>

</body>
</html>