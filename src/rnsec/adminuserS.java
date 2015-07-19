package rnsec;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminuserS
 */
public class adminuserS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminuserS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		PrintWriter out=response.getWriter();
	String userid=request.getParameter("status");
		/*for(String s : result)
		{
			out.println(s);
		}*/
		//String type=request.getParameter("type");
		//String type="user";
		
		/*or*/
		//request.getSession().setAttribute("id",userid);
		
	//	out.print(username+pass+type);
	//	HttpSession session = request.getSession();
		//String userid = (String) session.getAttribute("id");

//	out.print(userid);
	if(userid.equals("null"))
	{
		response.setContentType("text/html");  
		out.println("<script type=\"text/javascript\">");  
		out.println("alert('No user approved.');");  
		out.println("</script>");
		RequestDispatcher rd = request.getRequestDispatcher("/adminhome.html");
		rd.include(request, response);
		
	}
	else
	{
		try{
		
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
		PreparedStatement ps=conn.prepareStatement("update register set verify='yes' where userid=?");
		
		ps.setString(1,userid);
		
		ResultSet rs=ps.executeQuery();
		
				response.setContentType("text/html");  
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Selected user approved.');");  
				out.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/adminuser.jsp");
				rd.include(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	}
}