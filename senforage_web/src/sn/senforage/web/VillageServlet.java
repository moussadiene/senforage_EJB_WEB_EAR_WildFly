package sn.senforage.web;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.senforage_ejb.dao.IVillageLocal;
import com.senforage_ejb.entities.Village;


/**
 * Servlet implementation class Village
 */
@WebServlet(name = "villages" ,urlPatterns = "/villages" )
public class VillageServlet extends HttpServlet {

    /**
     * @see HttpServlet#HttpServlet()
     */
	@EJB
	private IVillageLocal villageRepository;
	
    public VillageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true); // permet d'initier la session 
		if(session==null) {
 			request.getRequestDispatcher("index.jsp").forward(request, response);
    	}else {
		
    		List<Village> villages = new ArrayList<Village>();
			villages = villageRepository.findAll();
			
			request.setAttribute( "villages", villages);
			
			request.getServletContext().getRequestDispatcher("/WEB-INF/villages2.jsp").forward(request, response);
    	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			Village village = new Village();
			village.setNomVillage(request.getParameter("nom"));
			
			int ok = villageRepository.add(village);
			if(ok ==1) {
				request.setAttribute("resultat", "Ajout");
			}else {
				request.setAttribute("resultat", "Erreur");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		doGet(request, response);
		// TODO Auto-generated method stub
		// doGet(request, response);
	}

}
