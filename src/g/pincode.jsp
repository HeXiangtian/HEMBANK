<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



</head>
<body>
<%
String perNo=request.getParameter("perNo");
String status="";
boolean preCheck=false;
String personalNumber="";
String persNo="";

System.out.println("received is "+perNo);
SecurityG3 s1=new SecurityG3();
 persNo=s1.encrypt(perNo,"ssshhhhhhhhhhh!!!!");
System.out.println("persNo"+persNo);
try {
	Connection con1=GetCon.getCon();
	String query="Select * from NEWACCOUNT where personal number='"+persNo+"'";
	PreparedStatement ps1=con1.prepareStatement(query);
	System.out.println("query is "+query);
   
    System.out.println("before result set");
	ResultSet rs=ps1.executeQuery();
	System.out.println(query);
	
	if(rs.next()){
		preCheck=true;
personalNumber=rs.getString(2);
status=rs.getString(7);
System.out.println(" From database "+personalNumber+"--"+status);
	}
	
if(preCheck){
	if(persNo.equals(personalNumber) && status.equals("create")){
	%>
	
	
	
	<td><div><%if(request.getAttribute("account details")!=null)
			{
			out.print(request.getAttribute("account details"));
			}
			
			 %>


<%}else if(status.equals("active"))
		out.print("Your Account activated already.. please login using PIN code or contact branch to reset your PIN code");
	}else{
		out.print("Your Don't have account created in our branch..");
	}

	
}catch(Exception e){
	e.printStackTrace();
}
%>	



</body>
</html>
<%@ page import="java.sql.*"%>
		<%@ page import="java.io.*"%>
		<%@ page import="javax.servlet.*"%>
		<%@ page import="g.*"%>