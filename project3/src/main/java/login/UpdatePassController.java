package login;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

/**
 * Servlet implementation class FindIdController
 */
@WebServlet(name = "passupt", urlPatterns = { "/passupt.do" })
public class UpdatePassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePassController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // post
		response.setContentType("text/html; charset=UTF-8");
		
		String pass = request.getParameter("pass");
		String passcheck = request.getParameter("passcheck");
		String idsession = request.getParameter("idsession");
		
		MemberDAO dao = new MemberDAO();
		
		Date date = new Date();
		MemberVO member = new MemberVO(pass,date);
		
		if(pass!=null && passcheck!=null) {
			dao.updatePass(member, idsession);
		}
		
		
		String page="views\\7_find\\PassUpdate.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
