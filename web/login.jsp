<%-- 
    Document   : login
    Created on : 22 Sep, 2018, 7:41:45 PM
    Author     : ARCHAN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%
    String name=request.getParameter("name");
    String password= request.getParameter("password");
%>
    <%
        Connection con;
        Statement st ;
        ResultSet rs;
try
    {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:4848/jdbc","root","");
            st=con.createStatement();
            String sql="Select password from userreg where username='"+name+"'";
            rs=st.executeQuery(sql);
            
                    %>
                    <script>
                        alert(rs.getString("password"));
                     </script>
                    <%
                if(rs.getString("password")==password)
                {
                    %>
                    <script>
                        alert("Welcome to my first jsp page");
                     </script>
                    <%
                }
                else
                {
                     %>  
                    <script>
                        alert("Pls Register");
                     </script>
                     <%
                }
            

    }
    catch(Exception ex)
    {
        System.out.print(ex);
    }
%>
