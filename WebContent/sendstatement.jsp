<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HEM Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");

	}
	function navigate() {
		window.history.forward();
		window.history.go(-100);
		window.location.replace('http://localhost:8089/HEMBANK/');
		return false;
	}

</script>

</head>

<body>

	<div id="top_links">


		<div id="header">
		<h1>
				HEM BANK<span class="style1"></span>
			</h1>
			<h2>TRANSCAT SIMPLE</h2>
			<A href="index.html"><IMG SRC="images/home1.gif"></IMG></A> <br>
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
			<ul>
		<li><div class="dropdown">
    <button class="dropbtn">GET FUNDS 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="/HEMBANK/balance.jsp">BALANCE</a>
      <a href="statement.jsp">STATEMENT</a>     
    </div>
  </div> </li>
  
  
  
 <li><div class="dropdown">
    <button class="dropbtn">MANAGE FUNDS 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <a href="/HEMBANK/transfer1.jsp">TRANSFER</a>
	<a href="/HEMBANK/paybill1.jsp">BILL PAY</a>
	<a href="/HEMBANK/financialdev.jsp">FINCIALDEV</a>
      
    </div>
  </div> </li>
  
  
   <li><div class="dropdown">
    <button class="dropbtn">USER RELATED
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
<a href="/HEMBANK/userrating.jsp">USER RATING</a>
<a href="/HEMBANK/profile.jsp">PROFILE</a>
      
    </div>
  </div> </li>
     <li><div class="dropdown">
    <button class="dropbtn">ABOUT US
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
<a href="/HEMBANK/about.jsp">ABOUT US</a>      
    </div>
  </div> </li>
			</ul>
		</div>



		<table style="width: 897px; background: #FFFFFF; margin: 0 auto;">
			<tr>
				<td width="300" valign="top"
					style="border-right: #666666 1px dotted;">
					<div id="services">
						<h1>Services</h1>
						<br>
						<ul>
        	<li>
<a href="/HEMBANK/quicklinks.html" 
  target="popup" 
  onclick="window.open('/HEMBANK/quicklinks.html','popup','width=600,height=600'); return false ;">
   Quick Links
</a></li>        
            </ul>

					</div>
				</td>

				<td width="1200" valign="top">
					<%
						
					%>
					<table><tr><td><font color="black">
						<%
							System.out.println("reached send statment");
											 String startDate=request.getParameter("startdate");							 
											 Object accno=session.getAttribute("accountno");
											 String Accn=accno.toString();											
												 String endDate=request.getParameter("enddate");
												 String query="";
												 String email="";
												 int accountNumber=Integer.valueOf(Accn);
													System.out.println("start and end dates "+startDate+" "+endDate);
													Connection con=GetCon.getCon();
													PreparedStatement ps=con.prepareStatement("Select Email from NEWACCOUNT where accountno=?");
												            ps.setInt(1,accountNumber);
													ResultSet rs=ps.executeQuery();										
											
													while(rs.next()){
													    email=rs.getString(1);
													}
													
													
													PdfWrite pdf=new PdfWrite();
													pdf.writeUsingIText("D:/Files/EMAIL-STATEMENT.pdf",startDate,endDate,Accn,email);
													
													
													out.print("<table align='left' cellspacing='5' cellpadding='5'>");
																								
													out.print("<tr>");
													out.print("<th> Statment has been sent to your email Id which is registered with us   </th>");
													
													out.print("</tr>");												
												
												out.print("</table>");
													
													
												
						%>
								</font></td></tr>
					</table> <%
						
					%>
				
		</table>
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
		    <p>HEM Bank is the global source of information about and access to financial services provided by the HEM group family of companies.</p>
	  
  Copyright � HEM Bank 2015</div>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>
</body>
</html>

		<%@ page import="java.sql.*"%>
		<%@ page import="java.io.*"%>
		<%@ page import="javax.servlet.*"%>
		<%@ page import="g.*"%>