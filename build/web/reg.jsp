<%-- 
    Document   : reg
    Created on : 22 Sep, 2018, 11:52:19 PM
    Author     : ARCHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    
</html>
<%
    String name=request.getParameter("name");
    String username=request.getParameter("username");
    String dob=request.getParameter("date1");
    String email=request.getParameter("email");
    String password=request.getParameter("pass");
    Connection con;
    Statement st;
    try
    {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");
            st=con.createStatement();
            String sql="INSERT INTO userreg values('"+username+"','"+password+"','"+name+"','"+dob+"','"+email+"')";
            st.execute(sql);
            String site = new String("http://localhost:8080/Quiz/");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
    }
    catch(Exception ex)
    {
        
    }
%>