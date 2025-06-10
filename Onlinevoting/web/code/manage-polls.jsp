<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="code/manage-polls.jsp" %>
<?xml version="1.0" encoding="utf-8"?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<%= trans.s("common.charset","UTF-8") %>" />
<title><%= trans.s("common.manage","Manage") %></title>
<script type="text/javascript" src="create-poll.js"></script>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<%= message %>
<form method="post" action="manage-polls.jsp">
<table border="0" cellspacing="0" cellpadding="0">
<%
if(conn!=null) {
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM vote_polls ORDER BY poll_id DESC");
    while (rs.next()) {
%><tr>
    <td colspan="2">
[<%= rs.getInt("poll_id") %>]
[<a href="../view-poll.jsp?poll_id=<%= rs.getInt("poll_id") %>" target="_blank"><%= trans.s("common.view","View") %></a>]
[<a href="edit-poll.jsp?poll_id=<%= rs.getInt("poll_id") %>&a=edit" onclick="return confirm('<%= trans.s("manage.are.you.sure","Are you sure") %>?');" target="_blank"><%= trans.s("common.edit","Edit") %></a>]
<% if(rs.getString("expired").compareToIgnoreCase("N")==0) { %>
[<a href="?poll_id=<%= rs.getInt("poll_id") %>&a=expire" onclick="return confirm('<%= trans.s("manage.are.you.sure","Are you sure") %>?');"><%= trans.s("common.expire","Expire") %></a>]
<% } else { %>
[<a href="?poll_id=<%= rs.getInt("poll_id") %>&a=unexpire" onclick="return confirm('<%= trans.s("manage.are.you.sure","Are you sure") %>?');"><%= trans.s("manage.clear.expired","Clear Expired") %></a>]
<% } if(rs.getString("enabled").compareToIgnoreCase("N")==0) { %>
[<a href="?poll_id=<%= rs.getInt("poll_id") %>&a=enable" onclick="return confirm('<%= trans.s("manage.are.you.sure","Are you sure") %>?');"><%= trans.s("common.enable","Enable") %></a>]
<% } else { %>
[<a href="../vote-poll.jsp?poll_id=<%= rs.getInt("poll_id") %>" target="_blank"><%= trans.s("common.vote","Vote") %></a>]
[<a href="?poll_id=<%= rs.getInt("poll_id") %>&a=disable" onclick="return confirm('<%= trans.s("manage.are.you.sure","Are you sure") %>?');"><%= trans.s("common.disable","Disable") %></a>]
<% } %>
[<a href="?poll_id=<%= rs.getInt("poll_id") %>&a=delete" onclick="return confirm('<%= trans.s("manage.are.you.sure","Are you sure") %>?');"><%= trans.s("common.delete","Delete") %></a>]
    </td>
</tr>
<tr>
    <td><%= trans.s("common.title","Title") %>: </td><td><% message = new String(rs.getString("title").getBytes("ISO-8859-1"), "UTF-8"); out.print( message ); %></td>
</tr>
<tr>
    <td><%= trans.s("common.description","Description") %>: </td><td><% message = new String(rs.getString("description").getBytes("ISO-8859-1"), "UTF-8"); out.print( message ); %></td>
</tr>
<tr>
    <td colspan="2"><hr></td>
</tr>
<%
    }
    rs.close();
    st.close();
}
%>
</table>
</form>
</body>
</html>
