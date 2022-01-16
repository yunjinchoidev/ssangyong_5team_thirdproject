package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import harrypotter.HarryPotterVO;
import lord.LordVO;
import marvel.MarvelVO;

/**
 * Servlet implementation class MemupdateController
 */
@WebServlet(name = "memupdate.do", urlPatterns = { "/memupdate.do" })
public class MemupdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemupdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // post
		response.setContentType("text/html; charset=UTF-8");
		
		String nickname = request.getParameter("nickname");
		String addfirst = request.getParameter("addfirst");
		String addsecond = request.getParameter("addsecond");
		String email = addfirst+addsecond;
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String giftdona = request.getParameter("giftdona");
		String gifttext1 = request.getParameter("gifttext1");
		String sessionid = request.getParameter("sessionid");
		String sessionpass = request.getParameter("sessionpass");
		String potterchar = request.getParameter("potterchar");
		String marvelchar = request.getParameter("marvelchar");
		String lordchar = request.getParameter("lordchar");
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO upt = new MemberVO(nickname, email, phone, address, giftdona, gifttext1);
		HarryPotterVO potterupt = new HarryPotterVO(potterchar);
		LordVO lordupt = new LordVO(lordchar);
		MarvelVO marvelupt = new MarvelVO(marvelchar);
		
		PrintWriter out = response.getWriter();
		
		if(nickname!=null && email!=null && phone!=null && address!=null) {
			dao.updateMember(upt, sessionid, sessionpass);
			dao.updatePotter(potterupt, sessionid, sessionpass);
			dao.updateMarvel(marvelupt, sessionid, sessionpass);
			dao.updateLord(lordupt, sessionid, sessionpass);
			
		}
		
		String page="views\\4_member\\memberInfoUpdate.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
