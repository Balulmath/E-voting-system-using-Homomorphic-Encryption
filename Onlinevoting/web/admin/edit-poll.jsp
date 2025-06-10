<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="code/edit-poll.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Online voting System</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
                <script type="text/javascript" src="edit-poll.js"></script>
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
                                                        <li class="current"><a href="../createpoll.jsp">Create Polling</a></li>
                                                        <li class=""><a href="manage-polls.jsp">Manage Polling</a></li>
                                                        <li class=""><a href="../index.html">Logout</a></li>	
							<li><a href="#" class="button special">About</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-mobile"></span>
						<h2>Admin <strong>Edit Polls</strong></h2>
						<p>Where admin Edit polls</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<!-- Content -->
								<div class="content">
									<% if(poll_id>0) { %>
<%= message %>
<form method="post" action="edit-poll.jsp">
<input type="hidden" name="poll_id" value="<%= poll_id %>">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
    <td><%= trans.s("common.title","Title") %>: </td>
    <td><input type="text" name="title" value="<%= vote.getTitle() %>" maxlength="255"></td>
</tr>
<tr>
    <td><%= trans.s("common.description","Description") %>: </td>
    <td><input type="text" name="description" value="<%= vote.getDescription() %>" maxlength="255"></td>
</tr>
<tr>
    <td><%= trans.s("common.max.answers","Max.answers") %>: </td>
    <td><select name="max_answers" id="max_answers">
<option value="1">1</option>
</select></td>
</tr>
<tr>
    <td valign="top"><%= trans.s("common.options","Options") %>: </td>
    <td><table border="0" cellspacing="0" cellpadding="0">
    <tr><td class="options">
<input type="hidden" id="cnt"  name="cnt"  value="<%= cnt %>">
<input type="hidden" id="oid"  name="oid"  value="<%= d %>">
<input type="text"   id="opt"  name="opt"  value="<%= c %>" maxlength="255">
<input type="button" name="drop" value=" &minus; " onclick="dropOpt(this);">
<input type="button" id="addopt" value=" + " onclick="addOpt(this,'',0,0);">
    </td></tr>
    </table>
<%= e %>    
    </td>
</tr>
<tr>
    <td><%= trans.s("common.anonymous","Anonymous(IP track)") %>: </td>
    <td><input type="checkbox" name="anonymous" value="Y" <%= vote.getAnonymous().compareToIgnoreCase("Y")==0?"checked":"" %> ></td>
</tr>
<tr>
    <td colspan="2" align="right"><hr><input type="submit" name="go" value="<%= trans.s("edit.update.poll","Update Poll") %>"></td>
</tr>
</table>
<script language="JavaScript">
var ma = document.getElementById("max_answers");
for(var i=0;i<ma.options.length;i++) {
    if(ma.options[i].value=='<%= max_opts %>') {
	ma.selectedIndex = i;
    }
}
</script>
</form>
<% } else { %>
<%= trans.s("common.incorrect.poll","Incorrect Poll ID") %>
<% } %>			</div>

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