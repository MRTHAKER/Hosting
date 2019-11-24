<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="javax.servlet.*"%>
<%
try{
int id=Integer.parseInt(request.getParameter("fileid"));
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
Statement st=con.createStatement();
String sql="select email,file from userfiles where id="+id;
ResultSet rs=st.executeQuery(sql);
if(rs.next()==false){
%><script>window.alert("File doesn't exist");</script><%
}
else{
String dir=rs.getString(1);
String filename=rs.getString(2);
response.sendRedirect("files/"+dir+"/"+filename);
}
}
catch(Exception e){%><script>window.alert("File doesn't exist");</script><%}
%>

