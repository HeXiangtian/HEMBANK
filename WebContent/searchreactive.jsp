<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			<%@ page import="java.sql.*"%>
			<%@ page import="java.io.*"%>
			<%@ page import="javax.servlet.*"%>
			<%@ page import="g.*"%>
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function test(){
	alert(document.getElementByName("sperno"));
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HEM Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{

var sds = document.getElementById("dum");

}


</script>

</head>

<body>
<%if(request.getAttribute("accountdetails")!=null)
			{
			out.print(request.getAttribute("accountdetails"));
			}
			String perNo=(session.getAttribute("perNo")).toString();
			session.setAttribute("perNo", perNo);
		    AccountNumberService ac=new AccountNumberService();
		    int accountno=ac.validate(perNo);
		    session.setAttribute("accountno", accountno);
		    
		    System.out.println("perno and accountno is session "+perNo+"--"+accountno);
			 %>
<div id="top_links">
  

<div id="header">
	<h1>HEM BANK<span class="style1"></span></h1>
			<h2>TRANSCAT SIMPLE</h2>	

</div>
<br><br>

<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	
    
    <td width="550px" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>ENTER DETAILS HERE</h1><br>
    	    <table  align="center" bgcolor="white">
		
		<tr>
			<td>
				<form name="fr"  " action="/HEMBANK/adminreactivate.jsp" >
				   <table cellspacing="5" cellpadding="3">	
				  <tr><td><font color="black">PERSONAL NUMBER</font></td><td> <input type="text" name="sperno"></td></tr>
							
					<tr><td align="center"><input type="submit" value="Go" /></td> 
					</tr>
             	</table>
				</form>
			</td>
		</tr>
	</table>
    	   </div>      
    </td>
    
    <td width="650px" valign="top">
    	<div id="welcome" style="border-right:#666666 1px "><h1>Welcome</h1><br>
    	    <center><img src="images/globe_10.gif" alt="business" width="196" height="106"></center><br>
		    <p>At HEM Bank we want to help our customers do well. That�s why we try to make it easy for you to succeed.</p>
		    <br>
		     <!-- <p> Our banking products are simple and less complicated, and designed to keep your hard-earned money in your pocket. --> 
		      <p>And we make it easy for you to keep on top of your online banking options.  With the right products and our knowledgeable staff to guide you � we are confident there is no goal too high for you to achieve.</p>
	    	
	    </div>     
    </td>
            	
    
</tr></table>
    
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
