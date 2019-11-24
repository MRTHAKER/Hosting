<%@ page import="java.sql.*"%>
<%@ page session="false" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Random"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.List"%>
<%@ page import="java.nio.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page errorPage="error.jsp" %>
<%
try{
String user=request.getParameter("user");
String root="/home/mrhacker5476/Downloads/apache-tomcat-7.0.96-windows-x64/apache-tomcat-7.0.96/webapps/web7/files/"+user;
String url="jdbc:mysql://localhost:3306/mahek";
String uname="root";
String pass="Sumo@123";
Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection(url,uname,pass);
PreparedStatement ps=con.prepareStatement("insert into userfiles values(?,?,?,?)");
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = upload.parseRequest(request);
Iterator iterator = items.iterator();
FileItem item = (FileItem) iterator.next();
String fileName = item.getName();
File uploadedFile = new File(root + "/" + fileName);
File udir=new File(root);
if(udir.exists()){
String fpath=uploadedFile.getAbsolutePath();
item.write(uploadedFile);
Random rand = new Random();
int n = rand.nextInt(99999999);
ps.setInt(1,n);
ps.setString(2,fpath);
ps.setString(3,user);
ps.setString(4,fileName);
int k=ps.executeUpdate();
if(k>0)
response.sendRedirect("upload.jsp?success=true");
else
response.sendRedirect("upload.jsp?success=false");
}
else{
udir.mkdir();
String fpath=uploadedFile.getAbsolutePath();
item.write(uploadedFile);
ps.setInt(1,0);
ps.setString(2,fpath);
ps.setString(3,user);
ps.setString(4,fileName);
int k=ps.executeUpdate();
if(k>0)
response.sendRedirect("upload.jsp?success=true");
else
response.sendRedirect("upload.jsp?success=false");
}
}
catch(Exception e){
out.println(e);}
%>
