import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.*;


import java.io.*;

public class MyServlet extends GenericServlet
{

public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
{
String name1=req.getParameter("name1");
res.setContentType("text/html");
PrintWriter out=res.getWriter();
out.print("<html><body>");  
out.print("<p>parameter="+name1+" </p>");  
out.print("</body></html>");  
}

}
