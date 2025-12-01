
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Call Attributes Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {color: #FF00FF}
.style5 {font-size: 24px}
.style6 {color: #FFFFFF}
.style7 {font-weight: bold}
.style8 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style5">A Personal Privacy Data Protection Scheme for Encryption and Revocation of High-Dimensional Attribute Domains</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
         <h2><span class="style2">View Call Attributes Data Details!!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
		  
		  		  
		  <table width="423" height="196" border="3" align="center"  cellpadding="0" cellspacing="0"  ">
					<tr bgcolor="#99FF33">
					
					     
					 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
 
 
  <th height="57" bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">Fid</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">lat</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">lng</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">desc</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">zip</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">title</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">timeStamp</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">twp</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">addr</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">call_mins</span></th>
<th width="85" bgcolor="#FF0000"><span class="style10 style6 style3 style1 style8">hashcode</span></th>
 
 
 
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17;
						
int i=0,count=0;
try 
{

					String Call_ID=request.getParameter("Call_ID");	
					String query="select * from datasets where Fid='"+Call_ID+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
								s9=rs.getString(10);
								s10=rs.getString(11);
								s11=rs.getString(12);
								
								
								
								String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
						
						
						String decryptedValue2 = new String(Base64.decode(s2.getBytes()));
						String decryptedValue3 = new String(Base64.decode(s3.getBytes()));
						String decryptedValue4 = new String(Base64.decode(s4.getBytes()));
						String decryptedValue5 = new String(Base64.decode(s6.getBytes()));
						String decryptedValue6 = new String(Base64.decode(s7.getBytes()));
		

		%>
			<tr>
                         <td  width="28" height="60" align="center" valign="middle" ><span class="style7 style2">
                <%out.println(s1);%>
              </span></td>
              <td  width="24" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(decryptedValue2);%>
              </span></td>
              <td  width="30" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(decryptedValue3);%>
              </span></td>
              <td  width="42" height="60" align="center" valign="middle"><span class="style7 style2">
               <textarea cols="25" rows="8"><%out.println(decryptedValue4);%></textarea>
              
              </span></td>
			  <td  width="31" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s5);%>
              
              </span></td>
			   <td  width="37" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(decryptedValue5);%>
              
              </span></td>
			   <td  width="84" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(decryptedValue6);%>
              
              </span></td>
			   <td  width="38" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s8);%>
              
              </span></td>
			   <td  width="43" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s9);%>
              
              </span></td>
			   <td  width="94" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s10);%>
              
              </span></td>
			   <td  width="85" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s11);%>
              
              </span></td>
                      </tr>
					<%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>
		 
         <p align="right"><a href="EndUserMain.jsp">Back</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
