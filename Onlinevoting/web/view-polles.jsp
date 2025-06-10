<%-- 
    Document   : view-polles
    Created on : Nov 20, 2017, 4:58:25 PM
    Author     : Sanjeev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="code/view-poll.jsp" %>
<!DOCTYPE html>
<html>
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
                                                        <li class="current"><a href="viewhistory.jsp">View History</a></li>
                                                        <li class=""><a href="index.html">Logout</a></li>	
							<li><a href="#" class="button special">About</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-mobile"></span>
						<h2>User <strong> Polls</strong></h2>
						<p>Where user can view polls</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<!-- Content -->
								<div class="content">
									<%= message %>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
    <td><%= trans.s("common.title","Title") %>: </td>
    <td><%= vote.getTitle() %></td>
</tr>
<tr>
    <td><%= trans.s("common.description","Description") %>: </td>
    <td><%= vote.getDescription() %></td>
</tr>
<tr>
    <td><%= trans.s("common.max.answers","Max.answers") %>: </td>
    <td><%= vote.getMaxanswers() %></td>
</tr>
<tr>
    <td valign="top"><%= trans.s("common.options","Options") %>: </td>
    <td><table border="0" cellspacing="0" cellpadding="0">
    <tr><td><%= opts %></td></tr>
    </table>
    </td>
</tr>
<tr>
    <td><%= trans.s("common.anonymous","Anonymous(IP track)") %>: </td>
    <td><%= vote.getAnonymous().compareToIgnoreCase("Y")==0?"Yes":"No" %></td>
</tr>
<tr>
    <td><%= trans.s("common.enabled","Enabled") %>: </td>
    <td><%= vote.getEnabled().compareToIgnoreCase("Y")==0?"Yes":"No" %></td>
</tr>
<tr>
    <td><%= trans.s("common.expired","Expired") %>: </td>
    <td><%= vote.getExpired().compareToIgnoreCase("Y")==0?"Yes":"No" %></td>
</tr>
</table>
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