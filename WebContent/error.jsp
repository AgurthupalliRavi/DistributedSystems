<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Toyota</title>
  <link rel="stylesheet" href="css/home.css">
  </head>
  <body>
  <html:form action="login">
  <div id="bodycontainer">
  <div id="headerDiv">
  <a class="logo" title="Home Page" href="http://www.toyota.com"></a>
  <hr class="hr-style" />
  </div>
  <div id="contentDiv">
  <b style="color:red">An Error has occurred. Please contact Administrator</b>
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