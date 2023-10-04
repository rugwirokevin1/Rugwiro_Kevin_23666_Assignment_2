package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/LoginServlet")
public class LoginFilters implements Filter{

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
			HttpServletRequest request = (HttpServletRequest) req;
			HttpServletResponse response = (HttpServletResponse) res;
			
			PrintWriter out = res.getWriter();
			String email = request.getParameter("logemail");
			String password = request.getParameter("logpass");
			
			if(!email.isEmpty() &&  !password.isEmpty() ) {
				if(password.equals("root")) {
					req.getRequestDispatcher("admission.jsp").forward(req,res);
				}else {
					RequestDispatcher red = req.getRequestDispatcher("recover.jsp");
					red.forward(request, response);
					
					response.sendRedirect("recover.jsp?email="+email+"&password="+password);
				}
			}
			
			/*String name =  request.getParameter("name");
			String password = request.getParameter("password");
			
			if(!name.isEmpty() &&  !password.isEmpty() ) {
				if(password.equals("admin")) {
					
					//chain.doFilter(request, response);
					req.getRequestDispatcher("HomePage.jsp").forward(req,res);
				}else {
					RequestDispatcher red = req.getRequestDispatcher("ForgetPassword.jsp");
					red.forward(request, response);
					
					response.sendRedirect("FogetPassword.jsp?name="+name+"&password="+password);
				}
			}*/
	}

	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
