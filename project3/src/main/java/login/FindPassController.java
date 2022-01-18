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
@WebServlet(name = "findpass", urlPatterns = { "/findpass.do" })
public class FindPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPassController() {
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
		String id = request.getParameter("id");
		String rpass = "";
		String rid = "";
		
		MemberDAO dao = new MemberDAO();
		if(name!=null && reg!=null && id!=null) {
			
			for(MemberVO member : dao.findpass(id, name, reg)) {
				System.out.println("비밀번호 찾기 DB에서 받아온 아이디:"+member.getmId());
				System.out.println("비밀번호 찾기 DB에서 받아온 비밀번호:"+member.getmPass());
				
				rid = member.getmId();
				rpass = member.getmPass();
				request.setAttribute("rid", rid);
				request.setAttribute("rpass", rpass);			}
		}
		
		String page="views\\7_find\\PassFind.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
