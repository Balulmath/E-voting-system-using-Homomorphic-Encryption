<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="code/manage-polls.jsp" %>
<?xml version="1.0" encoding="utf-8"?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
		<title>Online voting System</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
                <script type="text/javascript" src="create-poll.js"></script>
                <link rel="stylesheet" type="text/css" href="style.css">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="no-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1 id="logo"><a href="#">Online Voting System <span> </span></a></h1>
					<nav id="nav">
						<ul>
							<li class=""><a href="#">Home</a></li>
                                                        <li class=""><a href="../createpoll.jsp">Create Polling</a></li>
                                                        <li class="current"><a href="manage-polls.jsp">Manage Polling</a></li>
                                                        <li class=""><a href="../index.html">Logout</a></li>	
							<li><a href="#" class="button special">About</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-mobile"></span>
						<h2>Admin <strong>Manage Poll</strong></h2>
						<p>Where admin Manage polls</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<!-- Content -->
								<div class="content">
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
<!--[<a href="../vote-poll.jsp?poll_id=<%= rs.getInt("poll_id") %>" target="_blank"><%= trans.s("common.vote","Vote") %></a>]-->
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
</div>

						</section>

					<!-- Two -->
						<section class="wrapper style1 container special">
							<div class="row">
								<div class="4u 12u(narrower)">

									<section>
                                                                            <a href="#" class="image featured"><img src="images/vote2.jpg" alt="" /></a>
									</section>

								</div>
								<div class="4u 12u(narrower)">

									<section>
                                                                            <a href="#" class="image featured"><img src="images/Vote3.jpg" alt="" /></a>
									</section>

								</div>
								
							</div>
						</section>

				</article>

			<!-- Footer -->
				<footer id="footer">

					<ul class="icons">
						<li><a href="#" class="icon circle fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon circle fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon circle fa-google-plus"><span class="label">Google+</span></a></li>
						<li><a href="#" class="icon circle fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon circle fa-dribbble"><span class="label">Dribbble</span></a></li>
					</ul>

					<ul class="copyright">
						<li>&copy;  </li><li>Design: <a href="http://www. tech.com"> </a></li>
					</ul>

				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>
