<%-- 
    Document   : test
    Created on : 25 Sep, 2018, 1:58:22 AM
    Author     : ARCHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
    Connection con;
    Statement st ;
    ResultSet rs;
    try
    {       Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");
            st=con.createStatement();
            String sql="Select *from test";
            rs=st.executeQuery(sql);
            if(rs.next()){
                out.print("success");
                
            }
            else{
                out.print("failed");
            }
    }
    catch(Exception e){
    }
    %>
