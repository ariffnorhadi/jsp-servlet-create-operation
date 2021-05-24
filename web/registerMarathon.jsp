<%-- 
    Document   : registerMarathon
    Created on : May 24, 2021, 5:44:20 PM
    Author     : ariffnorhadi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="lab6.com.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        <form action="processMarathon.jsp" method="POST">
            <fieldset>
                <legend>Marathon Registration</legend>
                <br>
                <table>
                    <tr>
                        <td><label>IC No</label></td>
                        <td><input name="icNo" type="text" size="30" placeholder="E.g.: 921110-10-2514"></td>
                    </tr>
                    <tr>
                        <td><label>Name</label></td>
                        <td><input name="name" type="text" size="50" placeholder="Enter your name"></td>
                    </tr>
                    <tr>
                        <td><label>Category</label></td>
                        <td>
                            <select name="category">
                                <option value="5">5 KM</option>
                                <option value="7">7 KM</option>
                                <option value="10">10 KM</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" id="btnSubmit" value="Submit">
                            <input type="reset" id="btnCancel" value="Cancel">
                        </td>
                        <td></td>
                    </tr>
                </table>
            </fieldset>
        </form>
        
    </body>
</html>
