
          
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
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {color: #FF0000}
.style3 {color: #FFFFFF}
-->
            </style>
		      




          <title>A_View_All_Datasets_By_Blockchain</title><h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s111,hsign;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(hcode) from datasets";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from datasets where hcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(7);
							
							
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
							
							String decryptedValue1 = new String(Base64.decode(s111.getBytes()));
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
			<table width="1200" height="176" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
         <tr>
         	  
			<th height="37" bgcolor="#000000"><span class="style10 style6 style5 style1">Fid</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">lat</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">lng</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">desc</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">zip</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">title</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">timeStamp</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">twp</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">addr</span></th>	
 <th bgcolor="#000000"><span class="style10 style6 style5 style1">call_mins</span></th>
<th width="85" bgcolor="#000000"><span class="style10 style6 style5 style1">hashcode</span></th>
        </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">Call Title Blockchain--->::</span> <%=decryptedValue1%><br>
			    <span class="style1">Call Title Blockchain Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
									i=rs.getInt(1);
		s1=rs.getString(2); // id
		s2=rs.getString(3); //lat
		s3=rs.getString(4); //lng
		s4=rs.getString(5); //desc
		s5=rs.getString(6); //zip
		s6=rs.getString(7); //title
		s7=rs.getString(8); //time stamp
		s8=rs.getString(9);
		s9=rs.getString(10);
		s10=rs.getString(11);
		s11=rs.getString(12);
		
		
	
						
						
						String decryptedValue2 = new String(Base64.decode(s2.getBytes()));
						String decryptedValue3 = new String(Base64.decode(s3.getBytes()));
						String decryptedValue4 = new String(Base64.decode(s4.getBytes()));
						String decryptedValue5 = new String(Base64.decode(s6.getBytes()));
						String decryptedValue6 = new String(Base64.decode(s7.getBytes()));
		
		
		
					%>
	      </div>  
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
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        