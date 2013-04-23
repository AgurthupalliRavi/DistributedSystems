<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://displaytag.sf.net/el" prefix="display" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Toyota</title>
  <link rel="stylesheet" href="css/home.css">
  <style type="text/css">
  .buyerStyle td
  {
  	padding: 5px;
  }
  </style>
  </head>
  <body>
  <%
        String message = (String)request.getAttribute("message");
  %>
  <jsp:useBean id="buyerForm" type="buyer.BuyerForm" scope="session" />
  <html:form action="buyer">
  <div id="bodycontainer">
  <div id="headerDiv">
  <a class="logo" title="Home Page" href="http://www.toyota.com"></a>
  <hr class="hr-style" />
  </div>
  <div id="contentDiv" style="margin-top:20px;">
  <table class="buyerStyle">
  <tr>
  <td>Name</td><td><html:text property="buyerName" maxlength="35"></html:text> </td>
  </tr>
  <tr>
  <td>Address</td><td><html:textarea property="buyerAddress" rows="3" ></html:textarea></td>
  </tr>
  <tr>
  <td>Phone</td><td><html:text property="buyerPhone" maxlength="15"></html:text> </td>
  </tr>
  <tr>
  <td>Email</td><td><html:text property="buyerEmail"  maxlength="25"></html:text> </td>
  </tr>
  <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
  <tr><td><img src="images/submit.png" style="cursor: pointer;width:120px;" border=0 onclick="document.forms[0].action.value='addpotentialbuyers';document.forms[0].submit(); return false;" /></td>
  <td><img src="images/reset.png" style="cursor: pointer;width:120px;" border=0 onclick="document.forms[0].reset(); return false;" /></td></tr>
  </table>
  <% if(message != null) { %>
  <div style="float:left;color:#D54534;margin-right:15px;"><h3><%= message %></h3></div>
  <% } %>
 </div></div>
  <div id="footerDiv" style="padding:35px;">
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