<%@ page import="java.sql.*, java.io.*,javax.servlet.*,g.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>

<div id="top_links">
</div>
  

<div id="header">
	<h1>FAN - BANK<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>
    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>

<div id="navigation">
    <ul>
    <li><a href="create.html">NEW ACCOUNT</a></li>
    <li><a href="balance1.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
    <li><a href="about.jsp">Contact Us</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	        	<li><a href="http://www.esl-lab.com/vocab/v-bank.htm">http://www.esl-lab.com/vocab/v-bank.htm</a></li>
            <li><a href="http://www.bankservices.com">http://www.bankservices.com/ </a></li>
            <li><a href="http://en.wikipedia.org/wiki/Financial_services">http://en.wikipedia.org/wiki/Financial_services</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	
    	<% 
%>
<table><%


String username=request.getParameter("username");
String password=request.getParameter("password");
String  repassword=request.getParameter("repassword");

String amoun=request.getParameter("amount");
double amount=Double.parseDouble(amoun);

String adderess=request.getParameter("adderess");

String ph=request.getParameter("phone");
double phone=Double.parseDouble(ph);


boolean status=RegisterUser.register(username, password, repassword, amount, adderess,phone);


if(status==true){
	out.print("WELCOME! YOUR ACCOUNT HAS OPENED");
	
}
else{
	out.print("Sorry,Registration failed. please try later");

}


			%></table>
    	
    	
		</table>



</html>