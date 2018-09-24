<%@ page import ="java.sql.*"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    String name=request.getParameter("username");
    String password= request.getParameter("password");
    Connection con;
    Statement st ;
    ResultSet rs;
    try
    {       Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","");
            st=con.createStatement();
            String sql="Select *from userreg where username='"+name+"' and password='"+password+"'";
            rs=st.executeQuery(sql);
            if(rs.next()){
                out.print("success");
                
            String site = new String("http://localhost:8080/Quiz/Take Test.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
            }
            else{
                out.print("failed");
            }
    }
    catch(Exception e){
    }
%>