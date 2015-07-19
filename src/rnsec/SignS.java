package rnsec;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignS
 */
public class SignS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignS() {
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
		
		String userid=request.getParameter("u_id");
		String fullname=request.getParameter("full_name");
		String mail=request.getParameter("email");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		String dob=request.getParameter("dob");
	//	String gender=request.getParameter("gender");
		//String dob=request.getParameter("dob");
		String collegecode=request.getParameter("college");
		String streamcode=request.getParameter("stream");
		String semcode=request.getParameter("semester");
		String seqque=request.getParameter("security_questn");
		String seqans=request.getParameter("sq_answer");
	
	
		
	//	out.print(username+pass+"  "+ gender+"  "+dob+college+stream+year+mobile+mail);
		boolean flag=true;
		
		
		try{
			
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select * from register");
			while(rs.next())
			{
				if(rs.getString("userid").equals(userid) && rs.getString("mail").equals(mail))
						{
					response.setContentType("text/html");  
					out.println("<script type=\"text/javascript\">");  
					out.println("alert('User name  or mail Id exists.please re-enter:');");  
					out.println("</script>");
					RequestDispatcher rd = request.getRequestDispatcher("/signup.html");
					rd.include(request, response);
					flag=false;
					break;
				
							
						}
			}
			if(flag)
			{
			PreparedStatement ps=conn.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?,?,'no')");
			ps.setString(1,userid );
			ps.setString(2,fullname );
			ps.setString(3,mail );
			ps.setString(4,phone);
			ps.setString(5,password);
			ps.setString(6,dob);
			ps.setString(7,collegecode );
			ps.setString(8,streamcode );
			ps.setString(9,semcode );
			ps.setString(10,seqque );
			ps.setString(11,seqans);
			ps.executeUpdate();
			
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Registration Successful. Now Login');");  
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
		
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
