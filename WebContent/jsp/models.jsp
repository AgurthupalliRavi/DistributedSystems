<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://displaytag.sf.net/el" prefix="display" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Toyota</title>
  <link rel="stylesheet" href="css/home.css">
  <style type="text/css">
  		#contentDiv table {
        border: 1px solid #666;
        width: 100%;
        margin: 20px 0 20px 0 !important;
		}
		
 		#contentDiv caption {
        font-size: 18px;
        font-weight: bold;
		}
		
		#contentDiv th, #contentDiv td {
		        padding: 2px 4px 2px 4px !important;
		        text-align: left;
		        vertical-align: top;
		}
		
		#contentDiv thead tr {
		        background-color: #fc0;
		}
		
		#contentDiv th.sorted {    
		        background-color: orange;
		}
		
		#contentDiv th a, #contentDiv th a:visited {
		        color: black;
		}
		
		#contentDiv th a:hover {
		        text-decoration: underline;
		        color: black;
		}
		
		#contentDiv th.sorted a, #contentDiv th.sortable a {
		        background-position: right;
		        background-repeat: no-repeat;
		        display: block;
		        width: 100%;
		}
		
		#contentDiv th.sortable a {
		        background-image: url(arrow_off.png);
		}
		
		#contentDiv th.order1 a {
		        background-image: url(arrow_down.png);
		}
		
		#contentDiv th.order2 a {
		        background-image: url(arrow_up.png);
		}
		
		#contentDiv tr.odd {
		        background-color: #fff
		}
		
		#contentDiv tr.tableRowEven, #contentDiv tr.even {
		        background-color: #fea
		}
		
		#contentDiv div.exportlinks {
		        background-color: #eee;
		        border: 1px dotted #999;
		        padding: 2px 4px 2px 4px;
		        margin: 2px 0 10px 0;
		        width: 95%;
		}
		
		#contentDiv span.export {
		        padding: 0 4px 1px 20px;
		        display: inline;
		        display: inline-block;
		        cursor: pointer;
		}
		
		#contentDiv span.excel {
		        background-image: url(ico_file_excel.png);
		        background-repeat: no-repeat;
		}
		
		#contentDiv span.csv {
		        background-image: url(ico_file_csv.png);
		        background-repeat: no-repeat;
		}
		
		#contentDiv span.xml {
		        background-image: url(ico_file_xml.png);
		        background-repeat: no-repeat;
		}
		
		#contentDiv span.pdf {
		        background-image: url(ico_file_pdf.png);
		        background-repeat: no-repeat;
		}
		
		#contentDiv span.rtf {
		        background-image: url(ico_file_rtf.png);
		        background-repeat: no-repeat;
		}
		
		#contentDiv span.pagebanner {
		        background-color: #eee;
		        border: 1px dotted #999;
		        padding: 2px 4px 2px 4px;
		        width: 95%;
		        margin-top: 10px;
		        display: block;
		        border-bottom: none;
		}
		
		#contentDiv span.pagelinks {
		        background-color: #eee;
		        border: 1px dotted #999;
		        padding: 2px 4px 2px 4px;
		        width: 95%;
		        display: block;
		        border-top: none;
		        margin-bottom: -5px;
		}
        </style>
  
  </head>
  <body>
  <jsp:useBean id="loginForm" type="login.LoginForm" scope="session" />
  <html:form action="login">
  <div id="bodycontainer">
  <div id="headerDiv">
  <a class="logo" title="Home Page" href="http://www.toyota.com"></a>
  <hr class="hr-style" />
  </div>
  <div id="contentDiv" style="margin-top:20px;">
    <display:table export="true"  id="data" name="sessionScope.LoginForm.modelsList" >
    <display:caption>Models</display:caption>
    <display:column property="modelName" title="Model Name" />
    <display:column property="price" title="Price" />
    <display:column property="type" title="Type" />
    <display:column property="mileage" title="Mileage" />
    <display:column property="seat" title="Seat" />
    <display:column property="capacity" title="Capacity" />
    </display:table>
  </div>
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