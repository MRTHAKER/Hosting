<%@ page import="java.sql.*"%>
<%@ page session="false" %>
<%@ page import="java.io.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.datatransfer.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="error.jsp" %>
<%
HttpSession session=request.getSession(true);
String name=(String)session.getAttribute("name");
if(name.equals(null)){
response.sendRedirect("index.jsp");
}
else{
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);%>
<jsp:include page="afterlogin_header.jsp" />
<script>
</script>
<div class="container">
<table class="table table-hover">
<thead>
<tr>
<th>File ID
<th>File Name
<th>Delete
<th>Download
<th>Sharing Link
<tbody>
<%
String sql="select id,file from userfiles where email='"+name+"'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
%>
<tr>
<td> <% String fname=rs.getString(2);int fid=rs.getInt(1); out.println(fid); %></td>    
<td> <% out.println(fname); %></td>
<td><a href="delete.jsp?fileid=<%out.println(fid);%>"
<span class="glyphicon glyphicon-remove"></a></td>
<td><a href="download.jsp?fileid=<%out.println(fid);%>"
<span class="glyphicon glyphicon-download"></a></td>
<td><a><% out.println("Here is your shareable link: http://localhost:9090/web7/download.jsp?fileid="+rs.getInt(1));%> </a></td>
<%
} %>
</table>
</div>

<%}%>		
               
    
                </div>
            </div>
    </div>
</div>
<jsp:include page="footer.jsp" />
<br>         
                    
