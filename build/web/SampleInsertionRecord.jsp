<%-- 
    Document   : SampleInsertionRecord
    Created on : May 24, 2021, 5:24:54 PM
    Author     : ariffnorhadi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>Task 1 , Simple insertion record</h2>
            <%
            int result;
            
            //Step 1: load JDBC Driver....
            Class.forName("com.mysql.jdbc.Driver");
            out.println("Step 1: MySQL driver loaded..!");
     
        %>
        
        <br>
        
        <%
            String myURL = "jdbc:mysql://localhost/cse3209";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "");
            out.println("Step 2: Databse is connected..!");
        %>
        
        <br>
        
        <%
            out.println("Step 3: Prepared Statement created...!");
            
            String sInsertQry = "INSERT INTO FirstTable VALUE(?)";
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
        %>
        
        <br>
        
        <%
            out.println("Step 4: Prepared Statements created...!");
            
            String name = "hi !";
            
            myPS.setString(1, name);
            
            result = myPS.executeUpdate();
            
            if (result > 0){
                out.println("Step 5: Close database connection....!");
                
                out.println(" ");
                out.println("Database connection is closed..!");
                
                out.print("<p>" + "The record : (" + name + ") is succesfully created..!" + "<p>");
            }
            
            myConnection.close();
        %>
    </body>
</html>
