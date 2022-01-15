package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberController
 */
@WebServlet(name = "member.do", urlPatterns = { "/member.do" })
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // post
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String path = request.getContextPath();
		
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		String numfirst = request.getParameter("numfirst");
		String numsecond = request.getParameter("numsecond");
		String reg = numfirst+numsecond;
		String phonenum=request.getParameter("phonenum");
		String nickname=request.getParameter("nickname");
		String addfirst=request.getParameter("addfirst");
		String addsecond=request.getParameter("addsecond");
		String address=request.getParameter("address");
		String email=addfirst+"@"+addsecond;
		String gender=request.getParameter("gender");
		
		
		MemberDAO dao = new MemberDAO();
		
		if(id!=null) {
			// 회원가입 정보 입력
			if(!id.equals("") && !pass.equals("") && !name.equals("") && !numfirst.equals("") && !numsecond.equals("") 
					&& !phonenum.equals("") && !nickname.equals("") && !addfirst.equals("") && !addsecond.equals("")
					&&!email.equals("")) {
				dao.insertMember(new MemberVO(id,pass,name,email,
									phonenum,reg,nickname,gender,address));
				
				// 가입 시 해리포터 정보 초기화
				dao.insertPotter(null);
				
				// 가입 시 마블 정보 초기화
				dao.insertMarvel(null);
				
				// 가입 시 반지의제왕 정보 초기화
				dao.insertLord(null);
			}	
		}
			
	
		
		// 3. view단 호출
		String page="views\\4_member\\join_Membership.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
