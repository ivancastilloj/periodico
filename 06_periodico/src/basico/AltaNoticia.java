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
 * Servlet implementation class AltaNoticia
 */
@WebServlet("/AltaNoticia")
public class AltaNoticia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AltaNoticia() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String idnoticia = request.getParameter("idnoticia");
		String email = request.getParameter("email");
		String idcategoria = request.getParameter("idcategoria");
		String titulo = request.getParameter("titulo");
		String texto = request.getParameter("texto");
		String date = request.getParameter("date");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/periodico","root","");
			PreparedStatement ps = connect.prepareStatement("INSERT INTO noticias VALUES (?,?,?,?,?,?)");

			ps.setString(1, idnoticia);
			ps.setString(2, email);
			ps.setString(3, idcategoria);
			ps.setString(4, titulo);
			ps.setString(5, texto);
			ps.setString(6, date);
			ps.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
		}
	}

}
