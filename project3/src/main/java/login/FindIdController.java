package login;

import java.io.IOException;

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
@WebServlet(name = "findid", urlPatterns = { "/findid.do" })
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // post
		response.setContentType("text/html; charset=UTF-8");
		
		String firstNum = request.getParameter("firstNum");
		String numsecond = request.getParameter("numsecond");
		String reg = firstNum + numsecond;
		String name = request.getParameter("name");
		String rid = "";
		
		MemberDAO dao = new MemberDAO();
		if(name!=null && reg!=null) {
			
			for(MemberVO member : dao.findid(name, reg)) {
				System.out.println("아이디 찾기 DB에서 받아온 아이디:"+member.getmId());
				rid = member.getmId();
				request.setAttribute("rid", rid);
			}
		}
		
		String page="views\\7_find\\IdFind.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
