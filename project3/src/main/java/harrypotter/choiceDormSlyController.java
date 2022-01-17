package harrypotter;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;

/**
 * Servlet implementation class choiceDormDAO
 */
@WebServlet(name = "choiceDormSly.do", urlPatterns = { "/choiceDormSly.do" })
public class choiceDormSlyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public choiceDormSlyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dorm = request.getParameter("dorm");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		
		MemberDAO dao = new MemberDAO();
		
		
		Date date= new Date();
		HarryPotterVO potter = new HarryPotterVO(dorm,date);
		
		if(dorm!=null && id!=null && pass!=null) {
		dao.updateDorm(potter, id, pass);
		}
		
		String page="views\\8_HarryPotter\\1_choiceDorm\\choiceSlytherin.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
