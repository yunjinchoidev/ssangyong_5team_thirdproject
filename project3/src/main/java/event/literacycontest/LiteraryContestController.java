package event.literacycontest;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class MemberController
 */
@WebServlet("/LiteraryContest/*")
public class LiteraryContestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LiteraryContestDAO literaryContestDAO;
	public void init() throws ServletException {
		literaryContestDAO = new LiteraryContestDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		System.out.println("action:" + action);
		
		if (action == null || action.equals("/listLiteraryContest.do")) {
			List<LiteraryContestVO> LiteraryContestList = literaryContestDAO.listLiteraryContest();
			request.setAttribute("LiteraryContestList", LiteraryContestList);
			nextPage = "/views/11_Event/1_LiteraryContest/4_listliteraryContest.jsp";
			
		} else if (action.equals("/addLiteraryContest.do")) {
			String liberKey = request.getParameter("liberKey");
			String liberTitle = request.getParameter("liberTitle");
			String liberContents = request.getParameter("liberContents");
			String liberSort = request.getParameter("liberSort");
			String liberCareer = request.getParameter("liberCareer");
			
			
			LiteraryContestVO literaryContest = new LiteraryContestVO(liberKey, liberTitle,liberContents,liberSort, liberCareer);
			literaryContestDAO.addLiteraryContest(literaryContest);
			request.setAttribute("msg", "addMember");
			nextPage = "/LiteraryContest/listLiteraryContest.do";
			
		} else if (action.equals("/LiteraryContestForm.do")) {
			nextPage = "/views/11_Event/1_LiteraryContest/1_apply.jsp";
			
		}else {
			List<LiteraryContestVO> LiteraryContestList = literaryContestDAO.listLiteraryContest();
			request.setAttribute("LiteraryContestList", LiteraryContestList);
			nextPage = "/views/11_Event/1_LiteraryContest/4_listliteraryContest.jsp";
		}
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}
