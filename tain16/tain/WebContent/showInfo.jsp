<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.sccc.GirlFriend" %>
    <%@page import="com.sccc.status"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>调查结果公布</title>
</head>
<body bgcolor="pink">
<%
  GirlFriend gf= (GirlFriend)session.getAttribute("myGirlFriend");
  String phone = request.getParameter("phone");
  
  int shengqi = gf.getShengqi();
  int ai =gf.getAi();
  
  if(phone.equals("0")){
	   shengqi = shengqi +20;
  }else if(phone.equals("1")){
	  shengqi = shengqi +30;
  }else if (phone.equals("2")){
	  ai = ai +20;
  }else{
	  ai = ai+10;
	  shengqi= shengqi + 10;
  }
  gf.setShengqi(shengqi);
  gf.setAi(ai);
  
  if(gf.getShengqi()>20){
     out.println("<h1>恭喜你，以后的路他打车你走路</h1>");
     }else{
        out.print("<h1>小心喔，再差一点你就成单身狗了</h1>"+gf.getShengqi()+"</h1>");
        
        if(gf.getAi() >30){
             out.print("<h1>哎哟，不错哦，男朋友还是蛮喜欢你的嘛</h1>");
             }
             out.print("<p><a href='status.jsp'>继续测试</a></p>");
             }
             if(gf.getAi() >100){
                   out.print("<h1>恭喜你们！可以考虑进入爱情的坟墓了</h1>");
                   }


%>
</body>
</html>