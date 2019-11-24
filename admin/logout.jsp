<%@ page session="false" %>
<%@ page errorPage="../error.jsp" %>
<%
HttpSession session=request.getSession(true);
String name=(String)session.getAttribute("admin");
if(name==null){
response.sendRedirect("../index.jsp");
}else{
session.setAttribute("name",null);
response.sendRedirect("../index.jsp");}
%>

