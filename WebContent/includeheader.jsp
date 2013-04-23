<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Toyota</title>
  <link rel="stylesheet" href="css/home.css">
  <style>
	.navi
	{
	list-style-type:none;
	margin-top:135px;
	margin-left:-30px;
	overflow:hidden;
	position: absolute;
	font-size: 12px;
	}
	.navi li
	{
	float:left;
	}
	.navi a:link,a:visited
	{
	display:block;
	padding-top:3px;
	padding-bottom:3px;
	width:110px;
	font-weight:bold;
	color:#FFFFFF;
	background-color:#D54534;
	text-align:center;
	text-decoration:none;
	}
	.navi a:hover,a:active
	{
	background-color:#827E7E;
	}
	</style>
  
  </head>
  <body>
  <%
        String message = (String)request.getAttribute("message");
  %>
  <html:form action="login">
  <div id="bodycontainer">
  <div id="headerDiv">
  	<a class="logo" title="Home Page" href="http://www.toyota.com"></a>
  	<img src="images/Logout.png" style="cursor: pointer;float: right;height: 30px;margin-top: 20px;" border=0 onclick="document.forms[0].action.value='logoutSession';document.forms[0].submit(); return false;" />
  	<hr class="hr-style" />
  	<ul class="navi">
  	<% if(message.equals("webmaster")) { %>
	<li><a href="#">Models & Add-Ons</a></li>
	<li><a href="#">Vehicles</a></li>
	<li><a href="#">Sales-Personnel</a></li>
	<li><a href="#">Rebates</a></li>
	<li><a href="#">Sales</a></li>
	<li><a href="#">Customers</a></li>
	<li><a href="#">Finance</a></li>
	<li><a href="#">Potential-Buyers</a></li>
	<% } %>
	<% if(message.equals("dealer1")) { %>
	<li><a href="#">Models & Add-Ons</a></li>
	<li><a href="#">Vehicles</a></li>
	<li><a href="#">Sales-Personnel</a></li>
	<li><a href="#">Rebates</a></li>
	<li><a href="#">Sales</a></li>
	<li><a href="#">Customers</a></li>
	<li><a href="#">Finance</a></li>
	<li><a href="#">Potential-Buyers</a></li>
	<% } %>
	<% if (message.equals("dealer2")) { %>
	<li><a href="#">Models & Add-Ons</a></li>
	<li><a href="#">Vehicles</a></li>
	<li><a href="#">Sales-Personnel</a></li>
	<li><a href="#">Rebates</a></li>
	<li><a href="#">Sales</a></li>
	<li><a href="#">Customers</a></li>
	<li><a href="#">Finance</a></li>
	<li><a href="#">Potential-Buyers</a></li>
	<% } if(!(message.equals("dealer1") || message.equals("dealer2") || message.equals("webmaster"))) {%>
	<li><a href="#">My Profile</a></li>
	<li><a href="#">Vehicles</a></li>
	<li><a href="#">My Orders</a></li>
	<%} %>
	</ul>
 </div>
 <div id="contentDiv">
 <div style="margin-top:-35px;float:right;color:#D54534;margin-right:15px;"><b>Logged in as <%= message %></b></div>
 </div>
 </div>
<input type=hidden name=action value=''>
</html:form>
</body>
</html>