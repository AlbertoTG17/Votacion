package servlets;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Encuesta;
import utilidades.Conexion;


@WebServlet("/ServletEncuesta")
public class ServletEncuesta extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String query = "Select nombreGrupo, total , comentarios from encuesta order by total Desc";
		try {
			Statement st = Conexion.obtenerConexion().createStatement();
			ResultSet rs = st.executeQuery(query);
			
			List<Encuesta> lista = new ArrayList<>();
			
			while(rs.next()) {
				
				String nombreGrupo = rs.getString(1);
				float total  =rs.getFloat(2);
				//System.out.println("Total recogido " + total);
				String comentarios = rs.getString(3);
				
				Encuesta encuesta = new Encuesta(nombreGrupo, total, comentarios);
				
				//System.out.println("Total recogido " + encuesta.getTotal());
				
				lista.add(encuesta);
								
			}
			
			
			request.setAttribute("lista", lista);
			
			request.getRequestDispatcher("lista.jsp").forward(request, response);
			
			
			
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int usabilidad = Integer.parseInt(request.getParameter("usabilidad"));
		int presentación = Integer.parseInt(request.getParameter("presentación"));
		int diseño = Integer.parseInt(request.getParameter("disenio"));
		int facilidad = Integer.parseInt(request.getParameter("facilidad"));
		int seguridad = Integer.parseInt(request.getParameter("seguridad"));
		int recursos = Integer.parseInt(request.getParameter("recursos"));
		int objetivos = Integer.parseInt(request.getParameter("objetivos"));
		int creatividad = Integer.parseInt(request.getParameter("creatividad"));
		int resolucion = Integer.parseInt(request.getParameter("resolucion"));
		String nombre = request.getParameter("nombre");
		String comentarios = request.getParameter("comentarios");
		
		float total = (float) (usabilidad + presentación + diseño + facilidad + seguridad + recursos + objetivos + creatividad + resolucion) / 9;
		total = Math.round(total * 100f) / 100f;
		
		
		Encuesta encuesta = new Encuesta(usabilidad, presentación, diseño, facilidad, seguridad, recursos, objetivos,
				creatividad, resolucion, nombre, comentarios, total);
		
		String query = "Insert into encuesta values (?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			
			PreparedStatement prst = Conexion.obtenerConexion().prepareStatement(query);
			
			prst.setString(1, encuesta.getNombreGrupo());
			prst.setInt(2, encuesta.getUsabilidad());
			prst.setInt(3, encuesta.getPresentación());
			prst.setInt(4, encuesta.getDiseño());
			prst.setInt(5, encuesta.getFacilidad());
			prst.setInt(6, encuesta.getSeguridad());
			prst.setInt(7, encuesta.getRecursos());
			prst.setInt(8, encuesta.getObjetivos());
			prst.setInt(9, encuesta.getCreatividad());
			prst.setInt(10, encuesta.getResolucion());
			prst.setFloat(11, total);
			prst.setString(12, encuesta.getComentarios());
			
			System.out.println("Registros Insertados---> " + prst.executeUpdate());
			
			request.setAttribute("encuesta", encuesta);
			
			request.getRequestDispatcher("succes.jsp").forward(request, response);
			
			
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			Conexion.cerrarConexion();
		}
		
	}

}
