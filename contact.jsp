<%@ page import="java.sql.*"%>
<%@ page session="false" %>
<%@ page import="java.io.*"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="javax.servlet.*"%>
<%
HttpSession session=request.getSession(true);
String name=(String)session.getAttribute("name");
if(name==null){
response.sendRedirect("index.jsp");
}
else{
try{
if(request.getParameterMap().containsKey("submit1"))
{
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
String usrname=request.getParameter("name");
String mail=request.getParameter("email");
String feed=request.getParameter("msg");
PreparedStatement st=con.prepareStatement("insert into feedback values(?,?,?)");
st.setString(1,usrname);
st.setString(2,mail);
st.setString(3,feed);
st.executeUpdate();
%><script> alert("Your response has been recorded, Thank you"); </script><%
}
}
catch(Exception e){}
}%>
<jsp:include page="afterlogin_header.jsp" />
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="w3l_breadcrumbs_left">
				<ul>
					<li><a href="index.php">Home</a><i>/</i></li>
					<li>Feedback</li>
				</ul>
			</div>
			<div class="w3_agile_breadcrumbs_right">
				<h2>Feedback</h2>
				<p>Send Us Your Valueable Feedback</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- mail -->
	<div class="w3_agile_map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d117977.4581779031!2d69.98837310283281!3d22.474315327970555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3957154934c04597%3A0xe8b7dd81a49b75ca!2sJamnagar%2C+Gujarat!5e0!3m2!1sen!2sin!4v1535700676720" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head">send us Your Valueable <span>Feedback</span></h3>
			<p class="w3_agileits_para">We Care For Your Response.</p>
			<div class="wthree_latest_albums_grids gallery">
				<div class="col-md-8 agile_mail_grid_left">
					<form action="contact.jsp" method="post">
						<input type="text" name="name" placeholder="Name" required="">
						<input type="email" name="email" placeholder="Email" required="">
						<textarea name="msg" placeholder="Your message here..." required=""  > </textarea>
						<input type="submit" value="Submit Now" name="submit1" >
					</form>
				</div>
                
  
                
				<div class="col-md-4 w3_agileits_mail_grid_right">
					<div class="wthree_mail_grid_right">
						<img src="images/3.png" alt=" " class="img-responsive" />
						<h4>MAHEK THAKER<span>Web Site Maintainer</span></h4>
						<ul class="agileinfo_phone_mail">
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email: <a href="mailto:mahek.haker@gmail.com">mahek.haker@gmail.com</a></li>
						</ul>
						<ul class="social_agileinfo">
							<li><a href="https://t.me/MRHACKER5476" class="w3_facebook"><i class="fa fa-paper-plane"></i></a></li>
							<li><a href="https://github.com/MRTHAKER/" class="w3_twitter"><i class="fa fa-github"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //mail -->

