package rnsec;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class LoginS
 */
public class LoginS extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginS() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		String userid=request.getParameter("u_id");
		String pass=request.getParameter("password");
		String type=request.getParameter("type");
		
		HttpSession ses = request.getSession(true);
		ses.setAttribute("id",userid);
		/*or*/
		//request.getSession().setAttribute("id",userid);
		
	//	out.print(username+pass+type);
		
		if(userid.equals("admin") && pass.equals("admin") && type.equals("admin"))
		{
			RequestDispatcher rd = request.getRequestDispatcher("/adminhome.html");
			rd.include(request, response);
		}
		else
		{
		
	//	out.print("hdxwksjdkwj");
		try{
		
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
		PreparedStatement ps=conn.prepareStatement("select * from register where userid=? and password=? ");
		
		ps.setString(1,userid);
		ps.setString(2, pass);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			String st=rs.getString("verify");
			if(st.equals("no"))
			{
				response.setContentType("text/html");  
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Wait for approval');");  
				out.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/login.html");
				rd.include(request, response);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/user.jsp");
			rd.include(request, response);
		//out.print("welcome");
		}
		else
		{
			/*if(userid.equals("") || pass.equals(""))
			{
				RequestDispatcher rd = request.getRequestDispatcher("/login.html");
				rd.include(request, response);
			}
			else
			{*/
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('User does not exist or Wrong password entered');");  
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/login.html");
			rd.include(request, response);
			//}
		}
			//out.print("NOT ");
		out.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
		}		
	}
}
