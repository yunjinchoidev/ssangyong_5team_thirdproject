package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemDeleteController
 */
@WebServlet(name = "memdelete.do", urlPatterns = { "/memdelete.do" })
public class MemDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // post
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String sid = request.getParameter("sid");
		String spass = request.getParameter("spass");
		
		String status = "init";
		
		MemberDAO dao = new MemberDAO();
		
		if(id!=null && pass!=null) {
			if(id.equals(sid) && pass.equals(spass)) {
				System.out.println(status);
				dao.deletePotter(sid, spass);
				dao.deletemarvle(sid, spass);
				dao.deletelord(sid, spass);
				dao.deleteMember(sid, spass);
				status = "success";
				request.setAttribute("status", status);
			}
		}else {
			status = "fail";
			request.setAttribute("status", status);
		}
		
		
		String page="views\\4_member\\memdelete.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
