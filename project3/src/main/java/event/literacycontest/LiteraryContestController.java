package event.literacycontest;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LiteraryContestController
 */
@WebServlet("/LiteraryContest")
public class LiteraryContestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LiteraryContestDAO literaryContestDAO;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LiteraryContestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doHead(HttpServletRequest, HttpServletResponse)
	 */
	protected void doHead(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		System.out.println("action:" + action);
		
		if (action == null || action.equals("/listLiteraryContest.do")) {
			List<LiteraryContestVO> membersList = literaryContestDAO.listLiteraryContest();
			request.setAttribute("membersList", membersList);
			nextPage = "/views/11_Event/1_LiteraryContest/4_listliteraryContest.jsp";
			
		} else if (action.equals("/addLiteraryContest.do")) {
			
			String liberTitle = request.getParameter("liberTitle");
			String liberContents = request.getParameter("liberContents");
			String liberSort = request.getParameter("liberSort");
			String liberCareer = request.getParameter("liberCareer");
			String liberProductionDate = request.getParameter("liberProductionDate");
			int _liberProductionDate = Integer.parseInt(liberProductionDate);
			
			LiteraryContestVO literaryContest = new LiteraryContestVO(liberTitle,liberContents,liberSort, liberCareer, _liberProductionDate);
			literaryContestDAO.addLiteraryContest(literaryContest);
			request.setAttribute("msg", "addMember");
			nextPage = "/LiteraryContest/listLiteraryContest.do";
			
		} else if (action.equals("/listLiteraryContestForm.do")) {
			nextPage = "/views/11_Event/1_LiteraryContest/1_apply.jsp";
			
		}else {
			List<LiteraryContestVO> membersList = literaryContestDAO.listLiteraryContest();
			request.setAttribute("membersList", membersList);
			nextPage = "/views/11_Event/1_LiteraryContest/4_listliteraryContest.jsp";
		}
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}








