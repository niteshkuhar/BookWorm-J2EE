package rnsec;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UploadS
 */
public class UploadS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadS() {
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
		String bookname=request.getParameter("bookname");
		String semcode=request.getParameter("semester");
		String author=request.getParameter("author");
		String publication=request.getParameter("publication");
		String edition=request.getParameter("edition");
		String condition=request.getParameter("condition");
		String streamcode=request.getParameter("stream");
		String mrp=request.getParameter("mrp");
		String price=request.getParameter("price");
		String rating=request.getParameter("rating");
		//	String,userid,bookid,uploaddate;
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String datetime=(String)(dateFormat.format(date));
		String uploaddate=datetime.substring(0,10);
		
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("id");
		
		
		String bookid="";
		String image=request.getParameter("bookimage");
		//out.print(userid+bookid+bookname+semcode+author+publication+edition+condition+streamcode+mrp+price+rating+uploaddate+" " +image);
		
		
		try
		{
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
			PreparedStatement ps1=conn.prepareStatement("select * from book where userid=?");
			ps1.setString(1,userid);
			ResultSet rs=ps1.executeQuery();
			if(rs.next())
			{
			
				String s=rs.getString("bookid");
				while(rs.next())
				{
					s=rs.getString("bookid");
				}
				
				int code=Integer.parseInt(s.substring(userid.length(), s.length()));
				++code;
				bookid=userid+String.valueOf(code);
				
			}
			else
			{
				bookid=userid+"101";
			}
				
			
			PreparedStatement ps=conn.prepareStatement("insert into book values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,userid );
			ps.setString(2,bookid );
			ps.setString(3,bookname );
			ps.setString(4,semcode);
			ps.setString(5,author);
			ps.setString(6,publication);
			ps.setString(7,edition );
			ps.setString(8,condition );
			ps.setString(9,streamcode);
			ps.setString(10,mrp );
			ps.setString(11,price);
			ps.setString(12,rating);
			ps.setString(13,uploaddate);
			ps.executeUpdate();
			
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Uploaded Successfully.');");  
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("/user.jsp");
			rd.include(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	

		
		
		//String type=request.getParameter("type");
		
	}

}
