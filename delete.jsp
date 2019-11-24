<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="error.jsp" %>
<%
try{
int id=Integer.parseInt(request.getParameter("fileid"));
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
Statement stt=con.createStatement();
String sql="select path from userfiles where id="+id;
ResultSet rs=stt.executeQuery(sql);
if(rs.next()==false){
%><script>window.alert("File doesn't exist");</script><%
}
else{
String filepath=rs.getString(1);
File del=new File(filepath);
del.delete();
PreparedStatement st=con.prepareStatement("delete from userfiles where id=?");
st.setInt(1,id);
st.executeUpdate();
response.sendRedirect("userfiles.jsp");
}
}
catch(Exception e){%><script>window.alert("File doesn't exist");</script><%}
%>

