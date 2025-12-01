<style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {color: #FF0000}
-->
</style>
			<table width="564" height="129" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
         	  
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">Fid</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">lat</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">lng</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">desc</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">zip</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">title</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">timeStamp</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">twp</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">addr</span></th>	
 <th bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">call_mins</span></th>
<th width="85" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">hashcode</span></th>

        </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19;
int i=0,rank=0;
try 
{
	String query="select * from datasets"; 
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
		
	
			%>
            <tr>
			  
              <td  width="28" height="60" align="center" valign="middle" ><span class="style7 style2">
                <%out.println(s1);%>
              </span></td>
              <td  width="24" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s2);%>
              </span></td>
              <td  width="30" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s3);%>
              </span></td>
              <td  width="42" height="60" align="center" valign="middle"><span class="style7 style2">
               <textarea cols="25" rows="8"><%out.println(s4);%></textarea>
              
              </span></td>
			  <td  width="31" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s5);%>
              
              </span></td>
			   <td  width="37" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s6);%>
              
              </span></td>
			   <td  width="84" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s7);%>
              
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
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
				