<%-- 
    Document   : insertAuthor
    Created on : May 24, 2021, 5:33:34 PM
    Author     : ariffnorhadi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        <form id="insertAuthorForm" action="processAuthor.jsp" method="POST">
            <fieldset>
                <legend>Author Registration</legend>
                <table>
                    <tr>
                        <td><label>Author No</label></td>
                        <td><input name="authno" type="text" size="30" placeholder="E.g.: UKXXXXXX"/></td>
                    </tr>
                    <tr>
                        <td><label>Name</label></td>
                        <td><input name="name" type="text" size="50" placeholder="Enter your name"/></td>
                    </tr>
                    <tr>
                        <td><label>Address</label></td>
                        <td><input name="address" type="text" size="50" placeholder="Enter your address"/></td>
                    </tr>
                    <tr>
                        <td><label>City</label></td>
                        <td><input name="city" type="text" size="50" placeholder="Enter your city"/></td>
                    </tr>
                    <tr>
                        <td><label>State</label></td>
                        <td><input name="state" type="text" size="50" placeholder="Enter your state"/></td>
                    </tr>
                    <tr>
                        <td><label>Zip</label></td>
                        <td><input name="zip" type="text" size="50" placeholder="Enter your zip"/></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" id="btnSubmit" value="Submit"/>
                            <input type="reset" id="btnCancel" value="Cancel">
                        </td>
                        <td></td>
                    </tr>
                </table>
            </fieldset>    
        </form>
        
    </body>
</html>
