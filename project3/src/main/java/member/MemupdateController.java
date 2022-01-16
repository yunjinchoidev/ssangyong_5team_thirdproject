package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO upt = new MemberVO(nickname, email, phone, address, giftdona, gifttext1);
		
		if(nickname!=null && email!=null && phone!=null && address!=null) {
			dao.updateMember(upt, sessionid, sessionpass);
		}
		
		String page="views\\4_member\\memberInfoUpdate.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
