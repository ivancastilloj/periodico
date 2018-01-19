package basico;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Consultar
 */
@WebServlet(description = "Consulta base de datos", urlPatterns = { "/Consultar" })
public class Consultar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Consultar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Metodo DoGET");
		//getServletConfig().getServletContext().getRequestDispatcher("/leer.jsp").forward(request, response);

		try {
			PrintWriter out = response.getWriter();
			
			Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/periodico","root","");
		Statement st = conn.createStatement();
		ResultSet rs= st.executeQuery("SELECT * FROM noticias");
		
		//writerA.println(rs.getString("<html>\r\n" + "<body>\r\n"));

	String ra = "";
		while(rs.next()){
			
		
			ra+="<tr><td>"+ rs.getString(2)+"</td>";
		
			ra+="<td>"+ rs.getString(4)+"</td>";
		
			ra+="<td>"+ rs.getString(5)+"</td></tr>";
			
		
			//email+=rs.getString(3);
			//request.getSession().setAttribute("email",email);
			//titulo+=rs.getString(4);
			//request.getSession().setAttribute("titulo",titulo);
			//texto+=rs.getString(5);
			
		//writerA.println(rs.getString("texto"));
		
		
		}
		
		request.getSession().setAttribute("todo",ra);
		//writerA.println(rs.getString("</html>\r\n" + "</body>\r\n"));
		
	
		response.sendRedirect("leer.jsp");
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
