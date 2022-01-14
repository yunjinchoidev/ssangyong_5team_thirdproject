package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberVO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(name = "login.do", urlPatterns = { "/login.do" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // post
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		System.out.println("jsp에서 받아온 id: "+id);
		System.out.println("jsp에서 받아온 pass: "+pass);
		
		String rid = "";
		String rpass = "";
		
		LoginDAO dao = new LoginDAO();
		if(id!=null && pass!=null) {
			dao.memberlist(id, pass);
			
			for(MemberVO member : dao.memberlist(id, pass)) {
				System.out.println("DB받아온 아이디"+member.getmId());
				System.out.println("DB받아온 비밀번호"+member.getmPass());
				rid = member.getmId();
				rpass = member.getmPass();
				request.setAttribute("id", rid);
				request.setAttribute("pass", rpass);
			}
		}
		
		
		
		String page="views\\3_login\\Login.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
