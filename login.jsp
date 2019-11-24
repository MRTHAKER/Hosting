<jsp:include page="header.jsp" />
<%@ page import="java.sql.*"%>
<%@ page session="false" %>
<%@ page errorPage="error.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
</div>
		</div>
	</div>
    
    
<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head">Log-<span>IN</span></h3>
			<div class="wthree_latest_albums_grids gallery">
				<div class="wthree_mail_grid_right">
					<form action="login.jsp" method="post">
						<input type="text" name="username" placeholder="Username" required="">
                        <input type="password" name="pass" placeholder="Password" required="">
                        <br>
                        <br>
                        <a href="forgetpass.jsp" class="w3-btn w3-black">Forgot password?</a>
                        <br>
                        <br>
						<input type="submit" value="Login" name="submit1" >
					</form>
				</div>
                </div>
				</div>
				<div class="clearfix"> </div>
			</div>
<%
if(request.getParameterMap().containsKey("submit1"))
{
try{
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
String username=request.getParameter("username");
String userpassword=request.getParameter("pass");
if(username.equals("admin")){
if(userpassword.equals("123")){
HttpSession session=request.getSession(true);
%><script>window.alert("You are logged in welcome Admin");</script><%
session.setAttribute("name",username);
response.sendRedirect("admin/index.jsp");
}
}
else{
Statement st=con.createStatement();
String sql="select email,password from register where email='"+username+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next()==false){
%><script>window.alert("You are not registered");</script><%
}
String fromdbuname=rs.getString(1);
String fromdbpass=rs.getString(2);
if(username.equals(fromdbuname)){
if(userpassword.equals(fromdbpass)){
HttpSession session=request.getSession(true);
%><script>window.alert("You are logged in welcome");</script><%
session.setAttribute("name",username);
response.sendRedirect("dashboard.jsp");
}
else{
%><script>window.alert("Password is wrong");</script><%
}
}
}
}
catch(Exception e){}
}
%>
<jsp:include page="footer.jsp" />
