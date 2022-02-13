<%--
  Created by IntelliJ IDEA.
  User: wxw10
  Date: 2022/1/6
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.member.bean.Member" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>通讯录第一版</title>
    <style type="text/css">
        h1 {
            text-align: center;
        }

        body {
            background-color: antiquewhite;
            text-align: center;
        }

        th, td {
            width: 70px;
            height: 35px;
            text-align: center;
        }

        #before {
            text-align: center;
        }

    </style>
</head>
<body>
<%
    List<Member> memberList1 = (List<Member>) request.getAttribute("memberList1");
%>
<h1>查找页面</h1>
<div id="head">
    <table width="100%">
        <td align="right" id="headLink">
            <a href="allservlet">返回主页面</a>
        </td>
    </table>
</div>
<hr/>
<br>
    <%
    if(memberList1.size()==0){
    %>
没有查找到任何数据，请返回主页面重新查找
<%
    }else{
%>

<table align="center" cellspacing="0" align="center">
    <tr bgcolor="#5f9ea0">
        <th>姓名</th>
        <th>电话</th>
    </tr>
    <%
    for (int i = 0;i<memberList1.size();i++){
        Member member =memberList1.get(i);
    %>
    <tr>
        <td><%=member.getName()%></td>
        <td><%=member.getPhone_number()%></td>
    </tr>
    <%
        }
    %>
</table>
<%
    }
%>
</body>
</html>
