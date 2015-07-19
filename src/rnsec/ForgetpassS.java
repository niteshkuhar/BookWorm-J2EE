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
 * Servlet implementation class ForgetpassS
 */
public class ForgetpassS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetpassS() {
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
		String mail=request.getParameter("email");
		String seqque=request.getParameter("security_questn");
		String seqans=request.getParameter("sq_answer");

	//	out.print(mail+seqque+seqans);
	
		
		try{
			
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
			PreparedStatement ps=conn.prepareStatement("select * from register where mail=? and seqque=? and seqans=? ");
			ps.setString(1,mail );
			ps.setString(2,seqque );
			ps.setString(3,seqans);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				String userid=rs.getString("userid");
				/*response.setContentType("text/html");  
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('ask for new password now...');");  
				out.println("</script>");
				*/
				//out.print("<html><head></head>");
				
				//out.print("<body><form><input type=password name=password/></body></html>");
				
				HttpSession ses = request.getSession(true);
				ses.setAttribute("id",userid);
					
				RequestDispatcher rd = request.getRequestDispatcher("/forgot.html");
				rd.include(request, response);
			//out.print("welcome");
			}
			else
			{
				response.setContentType("text/html");  
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('User does not exist...');");  
				out.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("/login.html");
				rd.include(request, response);
				
			}
			
		}
catch(Exception e)
{
	e.printStackTrace();
}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
}
