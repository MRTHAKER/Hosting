<%@ page import="java.sql.*"%>
<%@ page session="false" %>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="error.jsp" %>
<%
HttpSession session=request.getSession(true);
String name=(String)session.getAttribute("name");
if(name==null){
response.sendRedirect("index.jsp");
}
else{try{
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
if(request.getParameterMap().containsKey("submit2"))
{
String updategit=request.getParameter("git");
String updateemail=request.getParameter("email");
PreparedStatement st=con.prepareStatement("update register set git=?,email=? where email=?");
st.setString(1,updategit);
st.setString(2,updateemail);
st.setString(3,name);
st.executeUpdate();
}

Statement st=con.createStatement();
String sql="select git,email from register where email='"+name+"'";
ResultSet rs=st.executeQuery(sql);
rs.next();

%>
<jsp:include page="afterlogin_header.jsp" />

                        <div class="container">
                        <h3 class="agileits_w3layouts_head"><span>Updated your details.</span></h3> 
                        <div class="wthree_latest_albums_grids gallery">
				        <div class="col-md-8 agile_mail_grid_left">
                        <form action="updateuser.jsp" method="post">
                        Username:
                        <input type="text" name="git" value="<% out.println(rs.getString(1)); %>">
                        Email:
						<input type="text" name="email" value="<% out.println(rs.getString(2)); %>" >
						<input type="submit" value="Save Changes" name="submit2" >
					</form>
                    </div>
            </div>
    </div>
<br><br>
<%}catch(Exception e){out.println(e);}}%>
<jsp:include page="footer.jsp" />                 
                    
                    
