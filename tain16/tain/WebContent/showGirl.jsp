<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示数据页面</title>
<!-- 初始化男朋友 -->
<jsp:useBean id="myGirlFriend" class="com.sccc.GirlFriend" scope="session"/>



<jsp:setProperty property="*" name="myGirlFriend"/>

<!-- 将刚才填入的值，设置到男朋友内。
<jsp:setProperty name="myGirlFriend" property="YanZhi"/>
<jsp:setProperty name="myGirlFriend" property="TiZhong"/>
<jsp:setProperty name="myGirlFriend" property="Shenggao"/>
<jsp:setProperty name="myGirlFriend" property="Shengqi"/>
<jsp:setProperty name="myGirlFriend" property="Ai"/>
 -->



</head>
<body bgcolor="pink">
<p><jsp:setProperty name="myGirlFriend" property="yanzhi"/></p>
<p><jsp:setProperty name="myGirlFriend" property="tizhong"/> </p>
<p><jsp:setProperty name="myGirlFriend" property="shenggao"/> </p>
<p><jsp:setProperty name="myGirlFriend" property="shengqi"/> </p>
<p><jsp:setProperty name="myGirlFriend" property="ai"/></p>


<p><a href="status.jsp">开始测试！请谨慎回答。</a></p>






</body>
</html>