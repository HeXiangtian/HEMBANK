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

function dil(form)
{

  		var email=document.F1.eamil.value;
  		 alert(email);
  	    substring = "@";
  	if(email.includes(substring)){
  		 return true;
  	   }else{
  		   alert("not a valid email id");
  		   return false;
  	   }
  	
  	
  	
  	
	if(!isNaN(document.F1.phone.value))
	   {
		   if(document.F1.phone.value >9999999999 )
		   {
			 alert("ye kabhi nhi aayegi")
			 document.F1.phone.value=""
			 document.F1.phone.focus()
	         return false   
		   }
	   
	   else
	   {
	       alert("This  field  must  be  number")
		   document.F1.phone.value=""
		   return false
	   }
		}
  	
  	   }            
function navigate(){   
    window.location.replace('http://localhost:8089/HEMBANK/');
   return false;
}
  	   
  	   
</SCRIPT>
<style>
.button {
    background-color: #DFDCE3;
    border: #999999;
    color: #0375B4;
    padding: 2px 3px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 11px;
    margin: 3px 2px;
    cursor: pointer;
}
</style>
</head>

<body>

	<div id="top_links">


		<div id="header">
		<h1>HEM BANK<span class="style1"></span></h1>
<h2>TRANSCAT SIMPLE</h2>
			<br><br><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="button" onclick="navigate()">  logout  </button>
		</div>

		<div id="navigation">
			<ul>
				<!--    <li><a href="create.html">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="statement.jsp">STATEMENT</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li> -->
				<!-- <li><a href="about.jsp">Contact Us</a></li> -->
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
        	<li><a href="#">https://www.hembank.se/</a></li>           
            </ul>

					</div>
				</td>

				<td width="1200" valign="top">
					<%
						
					%>
					<table><tr><td><font color="black">
						<%
						try{
							Object accno=session.getAttribute("accountno");						
						    Object usern=session.getAttribute("username");  
						    Object pwd=session.getAttribute("password");  
						    	 String Accn=accno.toString();
						    	 String username=usern.toString();
						    	 String password=pwd.toString();
						    	 System.out.println("ACCN is :::"+Accn);
						
							
								int accountno=Integer.parseInt(Accn);						        
								System.out.println("username and password "+username+"--"+password);
							    //boolean status=verifyLogin1.checkLogin(accountno,username,password);
								
								//if(status==true){
								//	out.print("Welcome    " + username);
								
													
								
							Connection con=GetCon.getCon();
							PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT where accountno=?");
						            ps.setInt(1,accountno);
							ResultSet rs=ps.executeQuery();
							
							out.print("<table align='left' cellspacing='5' cellpadding='5'>");
								/* 	out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>"); */
							while(rs.next()){
							    int accountno1=rs.getInt(1);
								session.setAttribute("accountno",accountno);
								//String fulName=rs.getString(2);
								String userName=rs.getString(3);
								String emailSave=rs.getString(9);
								int balance=rs.getInt(6);
								String stringbalance=String.valueOf(balance);%>
								
							<form name=F1 onSubmit="return dil(this)" action="profileUpdate.jsp" >
								
								<table>
								<tr><td><b>Profile Details</b> </td></tr>
								<tr><td>Full Name:</td> <td><%out.print(rs.getString(2)); %></td></tr>
								<tr><td>User Id:</td> <td><%out.print(rs.getString(3)); %></td></tr>
								<tr><td>Address:</td> <td><%out.print(rs.getString(7)); %></td></tr>
								<tr><td>Phone:</td> <td><%out.print(rs.getInt(8)); %></td></tr>
								<tr><td>New Phone</td><td><input type="text" name="phone"></td></tr>
								<tr><td>Email:</td> <td><%out.print(rs.getString(9)); %></td></tr>
								<tr><td>New Email</td><td><input type="text" name="email"/></td></tr>
								
								<tr><td></td><td><input type="submit" value=" save "></td></tr>
								</table>
								</form>
								<% out.print("<tr>");
								//out.print("<th> Balance Amount Available:   </th><td style="+"background-color:lightgreen;"+">" +stringbalance+ "</td><th> SEK</th>");
								
								out.print("</tr>");
							
							}
							out.print("</table>");
							
						
							
						%>
					
						<%
							
								 }catch (SQLException e) {
							e.printStackTrace();
							System.out.println("session expired please login again");
								}
								
								//}
								
							//}
						%></font></td></tr>
					</table> <%
						
					%>
				
		</table>
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
		    <p>HEM Bank is the global source of information about and access to financial services provided by the HEM group family of companies.</p>
	  
  Copyright © HEM Bank 2015</div>
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