<%@ page import="org.kdea.web.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="user" class="org.kdea.web.cart.UserVO">
<jsp:setProperty property="*" name="user" />
</jsp:useBean>

<jsp:useBean id="svc" class="org.kdea.web.cart.LoginService"/>
<jsp:setProperty property="request" name="svc" value="<%=request%>"/>
<% 
boolean check = (boolean) session.getAttribute("check");
session.setAttribute("check", check);
%>
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR">
<title>로그인창</title>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">
var ok =<%=check%>;
if(ok){
alert("로그인 되었습니다");
$('#divLnk').css("visibility","visible");
}
else{
	alert("로그인실패");
	location.href="/MyWeb/UserServlet";
	}
</script>
<style type="text/css">
div #divLnk{visibility: hidden;}
</style>
</head>
<body>
<div id="divLnk"><a href="../0918_newcart/books.jsp">책 리스트</a></div>
</body>
</html>