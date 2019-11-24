<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="error.jsp" %>
<%
String name=request.getParameter("user");
if(name==null){
response.sendRedirect("index.jsp");
}else{
if(request.getParameterMap().containsKey("submit1"))
{
try{
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
Statement st=con.createStatement();
String sql="select password from register where email='"+name+"'";
ResultSet rs=st.executeQuery(sql);
if(rs.next()){
String old=request.getParameter("oldpassword");
String newp=request.getParameter("newpassword");
String conf=request.getParameter("confirmpassword");
if(rs.getString(1).equals(old)){
if(newp.equals(conf)){
PreparedStatement pst = con.prepareStatement("update register set password=? where email=?");
pst.setString(1,newp);
pst.setString(2,name);
pst.executeUpdate();
%> <script>alert("Your password is updated.");</script><%
}
else{
%> <script>alert("New password and Confirm password doesn't match.");</script><%
}
}
else{
%> <script>alert("Old password you entered is wrong.");</script><%
}
if(old.equals(newp)){
%> <script>alert("New password can't be same as old password.");</script><%
}
}
}
catch(Exception e){}}%>

<jsp:include page="afterlogin_header.jsp" />
</div>
		</div>
	</div>
    
    
<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head"><span>Hello <% out.print(name);%>, Enter new password for your account.</span></h3>
			<div class="wthree_latest_albums_grids gallery">
				<div class="wthree_mail_grid_right">
					<form action="resetpass.jsp?user=<% out.println(name);%>" method="post" align="center">
                                                <input type="password" name="oldpassword" placeholder="Enter current password" required=""><br><br>
						<input type="password" name="newpassword" placeholder="Enter new password" required=""><br><br>
                        <input type="password" name="confirmpassword" placeholder="Confirm new password" required=""><br><br>
						<input type="submit" value="Reset your password" name="submit1" ><br><br>
					</form>
				</div>
                </div>
				</div>
				<div class="clearfix"> </div>
			</div>
<%}%>            
<jsp:include page="footer.jsp" />

