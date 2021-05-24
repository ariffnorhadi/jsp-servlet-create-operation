package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class SampleInsertionRecord_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <h2>Task 1 , Simple insertion record</h2>\n");
      out.write("            ");

            int result;
            
            //Step 1: load JDBC Driver....
            Class.forName("com.mysql.jdbc.Driver");
            out.println("Step 1: MySQL driver loaded..!");
     
        
      out.write("\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        ");

            String myURL = "jdbc:mysql://localhost/cse3209";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "");
            out.println("Step 2: Databse is connected..!");
        
      out.write("\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        ");

            out.println("Step 3: Prepared Statement created...!");
            
            String sInsertQry = "INSERT INTO FirstTable VALUE(?)";
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
        
      out.write("\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
