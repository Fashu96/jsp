<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  %>
    <%@page import="com.sccc.status"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>突发状况</title>
</head>
<body bgcolor="pink">
<jsp:useBean id="status" class="com.sccc.status" scope="session"/>
<h1>这是正经的哟~~</h1>
<form action="showInfo.jsp" method="post">
    <%
       String test = status.getZhuangTai().get(0);//取出问题
       ArrayList<String> xuanXiang = status.getTiMu().get(test);//根据问题取出选项
          out.println("<h1>"+test+"用女生的第六感去回答吧~</h1>");
//显示出所有选项
for(int i=0;i<6;i++){
	String neiRong=xuanXiang.get(i);
	String num=String.valueOf(i);
	out.print("<p><input type='radio' name='phone'value='+"+num+"'>"+neiRong+"</input></p>");
	
}
%>
<button>提交</button>
</form>
</body>
</html>