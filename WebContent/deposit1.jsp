<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
	function dil(form) {
		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Fill out all Fields")
				document.F1.accountno.focus()
				return false
			}
		}

		if (isNaN(document.F1.accountno.value)) {
			alert("A/C No.  must  be  number & can't be null")
			document.F1.accountno.value = ""
			document.F1.accountno.focus()
			return false
		}

		if (!isNaN(document.F1.username.value)) {
			alert("User Name  must  be  char's & can't be null")
			document.F1.username.value = ""
			document.F1.username.focus()
			return false
		}

		if (!isNaN(document.F1.password.value)) {
			alert("Password  must  be  char's & can't be null")
			document.F1.password.value = ""
			document.F1.password.focus()
			return false
		}

		if (isNaN(document.F1.amount.value)) {
			alert("Amount  must  be  number & can't be null")
			document.F1.amount.value = ""
			document.F1.amount.focus()
			return false
		}

		return true
	}
	
	function navigate(){ 
		window.history.forward();
		window.history.go(-2);
	    window.location.replace('http://localhost:8089/HEMBANK/');
	   return false;
	}
	
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HEM Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");

	}
</script>

</head>

<body>

	<div id="top_links">


		<div id="header">
		<h1>HEM BANK<span class="style1"></span>
			</h1>
			<h2>TRANSCAT SIMPLE</h2>
					<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="logout.jsp" >logout</a>

		</div>

		<div id="navigation">
			<ul></ul>
		</div>



		<table style="width: 897px; background: #FFFFFF; margin: 0 auto;">
			<tr>
				<td width="300" valign="top"
					style="border-right: #666666 1px dotted;">
					<div id="services">
						<h1>Services</h1>
						<br>
						<ul>
							<li><a href="#">www.hembank.se</a></li>
						</ul>

					</div>
				</td>

				<td width="1200" valign="top">
					<div id="welcome" style="border-right: #666666 1px dotted;">
						<h1>DEPOSIT FORM</h1>
						<br>
						<table align="center" bgcolor="white">
							<tr>

							</tr>
							<tr>
								<td><div>
										
									</div>
									<form name=F1 onSubmit="return dil(this)" action="deposit.jsp">
										<table cellspacing="5" cellpadding="3">
											<tr>
												<td><font color="black">ACCOUNT NO:</font></td>
												<td><font color="black"><input type="text" name="accountno" /></font></td>
											</tr>
											
											<tr>
												<td><font color="black">AMOUNT:</font></td>
												<td><font color="black"><input type="text" name="amount" /></font></td>
											</tr>
									

											<tr>
												<td></td>
												<td><input type="submit" value="Submit" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<INPUT TYPE=RESET VALUE="CLEAR"></td>
											</tr>
										</table>
									</form></td>
							</tr>
						</table>
					</div>
				</td>

				<td width="299" valign="top">
					<div id="welcome" style="border-right: #666666 1px dotted;">
						<h1>Welcome</h1>
						<br>
						<center>
							<img src="images/globe_10.gif" alt="business" width="196"
								height="106">
						</center>
						<br>
						<p>At HEM Bank we want to help our customers do well. That��s
							why we try to make it easy for you to succeed.</p>
						<br>
						<!-- <p> Our banking products are simple and less complicated, and designed to keep your hard-earned money in your pocket. -->
						<p>And we make it easy for you to keep on top of your online
							banking options. With the right products and our knowledgeable
							staff to guide you �C we are confident there is no goal too high
							for you to achieve.</p>

					</div>
				</td>


			</tr>
		</table>
		<div id="footer_top">
			<div id="footer_navigation"></div>

			<div id="footer_copyright" >
		    <p>HEM Bank is the global source of information about and access to financial services provided by the HEM group family of companies.</p>
	  
  Copyright ? HEM Bank 2015</div>
</div>
		</div>

		<script type="text/javascript">
document.onload = ctck();
</script>
	</div>

</body>
</html>