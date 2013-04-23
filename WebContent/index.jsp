<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Toyota</title>
  <script src="jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
  <script src="jquery/jquery.orbit-1.2.3.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="css/orbit-1.2.3.css">
  <link rel="stylesheet" href="css/home.css">
  </head>
  <body>
  <html:form action="login">
  <div id="bodycontainer">
  <div id="headerDiv">
  <a class="logo" title="Home Page" href="http://www.toyota.com"></a>
  <div class="nav-user">
  	<p style="text-align:right">
        Username: <html:text property="userName"></html:text>&nbsp;&nbsp;&nbsp;Password: <html:password property="password"></html:password>&nbsp;&nbsp;&nbsp;<img src='images/login.png' width='100' style="cursor:pointer;vertical-align:middle;border:0" onclick="document.forms[0].action.value='userLogin';document.forms[0].submit(); return false;" /><br>
		<a href="#"><img src='images/ContactUs.png' width='100' style="cursor: pointer;" /></a>
        
    </p>
</div>
<hr class="hr-style" />
  </div>
  <div id="contentDiv">
  <div id="slideshow" style="float:left;width:600px;min-height:200;text-align:left;padding:30px;">
  	   <div id="featured"> 
       <img src="images/car1.jpg" alt="More Power" />
       <img src="images/car2.jpg"  alt="More Reliable" />
       <img src="images/car3.jpg" alt="More Efficient" />
	   <img src="images/car4.jpg" alt="More Enjoyable" />
	   <img src="images/car5.jpg" alt="More FUN" />
	   </div>
	   <script type="text/javascript">
     $(window).load(function() {
         $('#featured').orbit();
     });
</script>
  </div>
  <div id="othercontent" style="float:right;width:250px;min-height:200;text-align:center;padding-top:40px;">
  <img src="images/models.jpg" style="cursor: pointer;" border=0 onclick="document.forms[0].action.value='showModels';document.forms[0].submit(); return false;" />
  <br><br>
  <img src="images/interested.jpg" border=0 style="cursor: pointer;" border=0 onclick="document.forms[0].action.value='showbuyerForm';document.forms[0].submit(); return false;"/>
  </div>
  </div>
  <div id="footerDiv">
  <hr class="hr-style" style="top:0px" />
  <div class="linkList" style="float:right;margin-top:-20px;">
      <ul class="linkColumn horizontal">
        <li>
          <a href="#">Developer's HOME</a>
        </li>
        <li>
          <div class="linksDivider">|</div>
          <a href="#">The TEAM</a>
        </li>
        <li>
          <div class="linksDivider">|</div>
          <a href="#">Contact Us</a>
        </li>
        <li>
          <div class="linksDivider">|</div>
          <a href="#">References</a>
        </li>
      </ul>
  </div>
  </div>
  </div>
  <input type=hidden name=action value=''>
  </html:form>
  </body>
</html>