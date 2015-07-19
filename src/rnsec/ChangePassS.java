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
 * Servlet implementation class ChangePassS
 */
public class ChangePassS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassS() {
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
		String npassword=request.getParameter("npassword");
		
	//	String seqque=request.getParameter("security_questn");
		//String seqans=request.getParameter("sq_answer");

	//	out.print(mail+seqque+seqans);
		// HttpSession ses = null;
		//String s="abc";
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("id");
		
		//out.print(var);
		
		try{
			
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
			
			PreparedStatement ps=conn.prepareStatement("update register SET password=? where userid=?");
			ps.setString(1,npassword);
			ps.setString(2,userid);
					ps.executeUpdate();
					response.setContentType("text/html");  
					out.println("<script type=\"text/javascript\">");  
					out.println("alert('Password Successfully changed.LogIn again.');");  
					out.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("/login.html");
					rd.include(request, response);
					
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		request.removeAttribute("id");
		}
}
