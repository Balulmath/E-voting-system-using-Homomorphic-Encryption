<%-- 
    Document   : userlogin
    Created on : Nov 20, 2017, 3:54:34 PM
    Author     : Sanjeev
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>User Registration</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="no-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1 id="logo"><a href="index.html">Online Voting System <span> </span></a></h1>
					<nav id="nav">
						<ul>
							<li class=""><a href="index.html">Home</a></li>
                                                        <li class=""><a href="adminlogin.jsp">Admin</a></li>
							<li class="submenu">
								<a href="#">User</a>
								<ul>
                                                                    <li><a href="userlogin.jsp">Login</a></li>
									<li class="current"><a href="#">Register</a></li>
									
								</ul>
							</li>
							<li><a href="#" class="button special">About</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon fa-mobile"></span>
						<h2>User <strong>Registration</strong></h2>
						<p>Where New User can get register into our polling system</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<!-- Content -->
								<div class="content">
									<section>
                                                                            <form name="userreg" action="userreg" method="POST">
                                                                                <table border="0">
                                                                                   
                                                                                        <tr>
                                                                                            <td>Name</td>
                                                                                            <td><input type="text" name="name" value="" size="20" /></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>User Name</td>
                                                                                            <td><input type="text" name="uname" value="" size="20" /></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Password</td>
                                                                                            <td><input type="password" name="pass" value="" size="20" /></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Email id</td>
                                                                                            <td><input type="email" name="email" value="" /></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Mobile no</td>
                                                                                            <td><input type="text" name="mono" value="" size="20" /></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Gender</td>
                                                                                            <td><input type="radio" name="g1" value="Male" />Male <input type="radio" name="g1" value="Female" />Female</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Age</td>
                                                                                            <td><select name="age">
                                                                                                    <%for(int i=18;i<=100;i++)
                                                                                                    {%>
                                                                                                    <option value="<%=i%>"><%=i%></option>
                                                                                                    <%}%>
                                                                                                </select></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td><input type="submit" value="Register" name="submit" /></td>
                                                                                            <td><input type="reset" value="Clear" name="reset" /></td>
                                                                                        </tr>
                                                                                    
                                                                                </table>

                                                                            </form>
									</section>
								</div>

						</section>

					<!-- Two -->
						<section class="wrapper style1 container special">
							<div class="row">
								<div class="4u 12u(narrower)">

									<section>
										<header>
											<h3>Internet Voting</h3>
										</header>
										<p>Electronic voting (also known as e-voting or EVM) refers to voting using electronic means to either aid or take care of the chores of casting and counting votes.</p>
										<footer>
											<ul class="buttons">
												<li><a href="#" class="button small">Learn More</a></li>
											</ul>
										</footer>
									</section>

								</div>
								<div class="4u 12u(narrower)">

									<section>
										<header>
											<h3>E-Voting System</h3>
										</header>
										<p>Depending on the particular implementation, e-voting may use standalone electronic machines (also called EVM) or computers connected to the internet. It encompasses a range of Internet services, from basic data transmission to full-function online voting through common connectable household devices. Similarly, the degree of automation may vary from simple chores to a complete solution that includes voter registration & authentication, vote input, local or precinct tallying, vote data encryption and transmission to servers, vote consolidation and tabulation, and election administration.</p>
										<footer>
											<ul class="buttons">
												<li><a href="#" class="button small">Learn More</a></li>
											</ul>
										</footer>
									</section>

								</div>
								<div class="4u 12u(narrower)">

									<section>
										<header>
											<h3>Applications</h3>
										</header>
										<p>
Electronic voting technology can include punched cards, optical scan voting systems and specialized voting kiosks (including self-contained direct-recording electronic voting systems, or DRE). It can also involve transmission of ballots and votes via telephones, private computer networks, or the Internet.</p>
										<footer>
											<ul class="buttons">
												<li><a href="#" class="button small">Learn More</a></li>
											</ul>
										</footer>
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