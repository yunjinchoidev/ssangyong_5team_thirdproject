package literacyContest;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet("/literaryContest/*")
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
			List<LiteraryContestVO> literaryContestList = literaryContestDAO.listLiteraryContest();
			request.setAttribute("literaryContestList", literaryContestList);
			nextPage = "/views/11_Event/1_LiteraryContest/4_listLiteraryContest.jsp";
			
		} else if (action.equals("/addLiteraryContest.do")) {
			try {
			String literKey = request.getParameter("literKey");
			int _literKey = Integer.parseInt(literKey);
			String literTitle = request.getParameter("literTitle");
			String literContents = request.getParameter("literContents");
			String literSort = request.getParameter("literSort");
			String literCareer = request.getParameter("literCareer");
			String literProductionDate = request.getParameter("literProductionDate");
			int _literProductionDate = Integer.parseInt(literProductionDate);
			

			
			LiteraryContestVO literaryContest = new LiteraryContestVO
					(_literKey, literTitle,literContents,literSort, 
					literCareer, _literProductionDate);

			literaryContestDAO.addLiteraryContest(literaryContest);
			}catch (NumberFormatException e) {
				// TODO: handle exception
			}
			
			request.setAttribute("msg", "addMember");
			nextPage = "/literaryContest/listLiteraryContest.do";
			
		} else if (action.equals("/literaryContestForm.do")) {
			nextPage = "/views/11_Event/1_LiteraryContest/1_apply.jsp";
			
		}else if(action.equals("/modLiteraryContestsForm.do")){
		    try { 
			String literKey=request.getParameter("literKey");
		     int _literKey = Integer.parseInt(literKey);
		     LiteraryContestVO memInfo = literaryContestDAO.findLiteraryContest(_literKey);
		     request.setAttribute("memInfo", memInfo);
		     nextPage="/views/11_Event/1_LiteraryContest/5_modLiteraryContestForm.jsp";
		    }catch(NumberFormatException e) {
		    	
		    }
		     
		     
		}else if(action.equals("/modLiteraryContestForm.do")){
		   
			try{ 
				String literKey=request.getParameter("literKey");
		 	int _literKey = Integer.parseInt(literKey);
		     String literTitle=request.getParameter("literTitle");
		     String literContents= request.getParameter("literContents");
	         String literSort= request.getParameter("literSort");
	         String literCareer= request.getParameter("literCareer");
	     	String literProductionDate = request.getParameter("literProductionDate");
			int _literProductionDate = Integer.parseInt(literProductionDate);
			
			  LiteraryContestVO literaryContestVO = new LiteraryContestVO(
					  _literKey, literTitle, literContents, literSort, literCareer,
		        		 _literProductionDate);
			  
			  literaryContestDAO.modLiteraryContest(literaryContestVO);
			}catch(NumberFormatException e){
			}finally {
			
			
	       
	       
		     request.setAttribute("msg", "modified");
		     nextPage="/literaryContest/listLiteraryContest.do";
		 	
			}
		     
		     
		}else if(action.equals("/delLiteraryContests.do")){
		     try {
				String literKey=request.getParameter("literKey");
		     int _literKey = Integer.parseInt(literKey);
		     literaryContestDAO.delLiteraryContest(_literKey);
		     }catch (NumberFormatException e) {
		    	 
			}finally {
		     
		     
		     request.setAttribute("msg", "deleted");
		     nextPage="/literaryContest/listLiteraryContest.do";
		
			}
		
		}else {
			List<LiteraryContestVO> literaryContestList = literaryContestDAO.listLiteraryContest();
			request.setAttribute("literaryContestList", literaryContestList);
			nextPage = "/views/11_Event/1_LiteraryContest/4_listLiteraryContest.jsp";
		}
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}
