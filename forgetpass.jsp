<%@ page import="java.sql.*"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<jsp:include page="header.jsp" />
<%
if(request.getParameterMap().containsKey("submit1"))
{
try{
String username=request.getParameter("email");
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
String usrname=request.getParameter("username");
String userpassword=request.getParameter("pass");
Statement st=con.createStatement();
String sql="select email from register where email='"+username+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next()){
response.sendRedirect("security.jsp?user="+username);
}
else{
%><script>alert("No user found, please verify details you entered and try again.");</script><%
}}catch(Exception e){}}%>
</div>
		</div>
	</div>
    
    
<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head"><span>Forgot Your Password?Fine its common with humans.</span></h3>
			<div class="wthree_latest_albums_grids gallery">
				<div class="wthree_mail_grid_right">
					<form action="forgetpass.jsp" method="post">
						<input type="text" name="email" placeholder="Enter Your Email ID" required="">
						<input type="submit" value="Next Step" name="submit1" >
					</form>
				</div>
                </div>
				</div>
				<div class="clearfix"> </div>
			</div>

