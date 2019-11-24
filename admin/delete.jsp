<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="../error.jsp" %>
<%
try{
int id=Integer.parseInt(request.getParameter("id"));
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
PreparedStatement st=con.prepareStatement("delete from register where id=?");
st.setInt(1,id);
st.executeUpdate();
response.sendRedirect("registered.jsp");
}
catch(Exception e){}
%>

