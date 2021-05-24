<%-- 
    Document   : processAuthor
    Created on : May 24, 2021, 5:35:59 PM
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


        <h1>LAb 6 - Task 2 - Perform creating and retrieving records via JSP page</h1>

        <jsp:useBean id="myAuthor" class="lab6.com.Author" scope="request"/>

        <jsp:setProperty name="myAuthor" property="*"/>

        <%
            int result;
            Class.forName("com.mysql.jdbc.Driver");

            String myURL = "jdbc:mysql://localhost/cse3209";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "");

            String sInsertQry = "INSERT INTO Author(authno, name, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

            myPS.setString(1, myAuthor.getAuthno());
            myPS.setString(2, myAuthor.getName());
            myPS.setString(3, myAuthor.getAddress());
            myPS.setString(4, myAuthor.getCity());
            myPS.setString(5, myAuthor.getState());
            myPS.setString(6, myAuthor.getZip());

            result = myPS.executeUpdate();
            if (result > 0) {
                out.println("\tRecord succesfully added into Author table...!");
                out.println("<p>" + "Record with author no " + myAuthor.getAuthno()
                        + " succesfully created..!" + "</p>");
                out.println("<p>" + "Details of record are; " + "</p>");
                out.println("<p>Name : " + myAuthor.getName() + "</p>");
                out.println("<p>Address : " + myAuthor.getAddress() + "</p>");
                out.println("<p>City : " + myAuthor.getCity() + "</p>");
                out.println("<p>State : " + myAuthor.getState() + "</p>");
                out.println("<p>Zip : " + myAuthor.getZip() + "</p>");
            }
            else{
                System.out.println("insert record fail");
            }

            System.out.println("Step 5: Close Database Connection...!");
            myConnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed...!");
        %>


    </body>
</html>
