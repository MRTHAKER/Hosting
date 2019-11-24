<%@ page session="false" %>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="error.jsp" %>
<%
HttpSession session=request.getSession(true);
String name=(String)session.getAttribute("name");
if(name==null){
response.sendRedirect("index.jsp");
}
else{
if(request.getParameterMap().containsKey("success")){
if(request.getParameter("success").equals("true"))
{
%> <script> alert("your file was uploaded successfully"); </script><%
}
if(request.getParameter("success").equals("false"))
{
%> <script> alert("There was some problem with your upload, please try again."); </script><%
}
}
 %>
<jsp:include page="afterlogin_header.jsp" />
<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head">Up <span>LOAD</span></h3>
			<div class="wthree_latest_albums_grids gallery">
				<div class="wthree_mail_grid_right">
                <form action="uploadfile.jsp?user=<% out.println(name); %>" method="post" enctype="multipart/form-data">
    Select File to upload:
    <input type="file" name="name">
    <input type="submit" value="Upload File" name="submit">
    </form>
    
                </div>
            </div>
    </div>
</div>
<br>
<%}%>
<jsp:include page="footer.jsp" />
