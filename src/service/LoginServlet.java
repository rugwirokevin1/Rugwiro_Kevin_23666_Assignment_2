package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		PrintWriter out = response.getWriter();
        String u = "", p = "";
        u = request.getParameter("logemail");
        p = request.getParameter("logpass");
        
        if(u.equals("rugwirokevin1@gmail.com") && p.equals("root")){
            //out.println("<h1>Hello!! "+u+"</h1>");
        	HttpSession session = request.getSession(true);
        	session.setAttribute("username", u);
        	response.sendRedirect("admission.jsp");
        }
        else{
        	out.println("<h1>Login failed!!</h1>");
        }
	}
}
