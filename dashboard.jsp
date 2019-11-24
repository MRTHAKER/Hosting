<%@ page import="java.sql.*"%>
<%@ page session="false" %>
<%@ page import="java.io.*"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="javax.servlet.*"%>
<%
HttpSession session=request.getSession(true);
String name=(String)session.getAttribute("name");
if(name==	null){
response.sendRedirect("index.jsp");
}
else{
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
String username=request.getParameter("username");
String userpassword=request.getParameter("pass");
Statement st=con.createStatement();
String sql="select git from register where email='"+name+"'";
ResultSet rs=st.executeQuery(sql);
rs.next();
 %>
<jsp:include page="afterlogin_header.jsp" />
    
    <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="w3l_breadcrumbs_left">
				<ul>
					<li><a href="index.jsp">Home</a><i>/</i></li>
					<li>Dashboard</li>
				</ul>
			</div>
			<div class="w3_agile_breadcrumbs_right">
				<h2>Welcome To Dashboard.</h2>
				<p><% out.println(name); %></p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //breadcrumbs -->
<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head"><span>Take Control over your Profile</span></h3>
            <p class="w3_agileits_para"><a href="resetpass.jsp?user=<% out.println(name);%>" class="w3-button w3-black">Change Password.</a></p>
            <div class="wthree_latest_albums_grids gallery">
				<div class="col-md-8 agile_mail_grid_left">
					<form action="updateuser.jsp" method="post">
                        Github Username:
                        <input type="text" name="git" value="<% out.println(rs.getString(1)); %>" readonly>
                        Email:
						<input type="text" name="email" value="<% out.println(name);%>" readonly>
						<input type="submit" value="Edit Details" name="submit1" >

					</form>
				</div>
            </div>
    </div>
</div>
<jsp:include page="footer.jsp" />
<%}%>
