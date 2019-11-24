<jsp:include page="header.jsp" />
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page errorPage="error.jsp" %>
     
        <div class="latest-albums">
	<div class="container">
        <div class="w3_agile_breadcrumbs_right">
	<div class="wthree_latest_albums_grids gallery">
                 <h3 class="agileits_w3layouts_head">Register-Now</h3>
			<p class="w3_agileits_para">Made For Developers</p>
				<div class="col-md-8 agile_mail_grid_left">
				<form action="register.jsp" method="post">
					<input type="text" name="fname" placeholder="First Name" required="">
        			        <input type="text" name="lname" placeholder="Last Name" required="">
        			        <input type="text" name="secq" placeholder="Enter Security Question" required="">
        			        <input type="text" name="seca" placeholder="Answer of security question, will be used to recovery your account incase you forget your password" required="">
					<input type="email" name="email" placeholder="Email" required="">
        			        <input type="password" name="password" placeholder="Password" required="">
                                        <textarea name="what" placeholder="what you develop ?" required=""></textarea>
					<input type="text" name="git" placeholder="Github Username" required="">
					<textarea name="why" placeholder="Explain in short why you need our service ?" required=""></textarea>
					<input type="submit" value="Submit Now" name ="submit1" >
                        <br>
                        <br>
				</form>
				</div>
         </div>
         </div>
         </div>
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

	String firstname=request.getParameter("fname");
	String lastname=request.getParameter("lname");
	String secq=request.getParameter("secq");
	String seca=request.getParameter("seca");
	String email=request.getParameter("email");
	String userpassword=request.getParameter("password");
	String what=request.getParameter("what");
	String git=request.getParameter("git");
	String why=request.getParameter("why");
	PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,0);
	ps.setString(2,firstname);
	ps.setString(3,lastname);
	ps.setString(4,secq);
	ps.setString(5,seca);
	ps.setString(6,email);
	ps.setString(7,userpassword);
	ps.setString(8,what);
	ps.setString(9,git);
	ps.setString(10,why);
	int k=ps.executeUpdate();
 if(k>0)
 out.println("added");
 else
 out.println("error");
}
catch(Exception e){out.println(e);}
}
%>
<jsp:include page="footer.jsp" />
                
