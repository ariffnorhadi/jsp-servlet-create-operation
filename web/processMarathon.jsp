<%-- 
    Document   : processMarathon
    Created on : May 24, 2021, 5:54:14 PM
    Author     : ariffnorhadi
--%>

<%@page import="lab6.com.MarathonDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lab6.com.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="myMarathon" class="lab6.com.Marathon" scope="request"/>

        <jsp:setProperty name="myMarathon" property="*"/>


        <%
            int result;

            result = MarathonDao.save(myMarathon);

            if (result > 0) {
                out.println("\tRecord succesfully added into Author table...!");
                out.println("<p>Ic No    : " + myMarathon.getIcNo() + "</p>");
                out.println("<p>Name     : " + myMarathon.getName() + "</p>");
                out.println("<p>Category : " + myMarathon.getCategory() + "</p>");
            } else {
                System.out.println("insert record fail");
            }
//
//            System.out.println("Step 5: Close Database Connection...!");
//            myConnection.close();
//            System.out.println(" ");
//            System.out.println("Database connection is closed...!");
        %>
    </body>
</html>
