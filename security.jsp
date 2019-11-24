<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="error.jsp" %>
<jsp:include page="header.jsp" />
<%
if(request.getParameterMap().containsKey("user"))
{

try{
String username=request.getParameter("user");
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
Statement st=con.createStatement();
String sql="select secq,seca from register where email='"+username+"'";
ResultSet rs = st.executeQuery(sql);
if(rs.next()){
String seca=rs.getString(2);
}
 %>
    <div class="container">
                        <h3 class="agileits_w3layouts_head"><span>Update your Security here.</span></h3> 
                        <div class="wthree_latest_albums_grids gallery">
				        <div class="col-md-8 agile_mail_grid_left">
                        <form action="security.jsp?user=<%out.println(username);%>" method="post">
                        Security Question:
                        <input type="text" name="secq" value="<% out.println(rs.getString(1));%>">
                        Security Answer
                        <input type="text" name="seca" placeholder="Answer the security question" required="">
						<input type="password"
                               placeholder="Enter new password" required=""name="newpass" >
						<input type="submit" value="Reset password" name="submit2" >
					</form>
                    </div>
            </div>
    </div>
<%}catch(Exception e){}
}
if(request.getParameterMap().containsKey("submit2")){
String use=request.getParameter("user");
String a=request.getParameter("seca");
String p=request.getParameter("newpass");
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
String username=request.getParameter("username");
String userpassword=request.getParameter("pass");
Statement st=con.createStatement();
String sql="select seca from register where email='"+use+"'";
ResultSet rst=st.executeQuery(sql);
if(rst.next()){
if(a.equals(rst.getString(1))){
PreparedStatement pst=con.prepareStatement("update register set password=? where email=?");
pst.setString(1,p);
pst.setString(2,use);
pst.executeUpdate();
%><script>alert("You have successfully reset your password");</script><%
response.sendRedirect("index.jsp");
}
}
}
%>
<jsp:include page="footer.jsp" />
