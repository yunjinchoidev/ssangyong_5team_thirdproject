package readingClub;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReadingClubController
 */
@WebServlet(name = "rc.do", urlPatterns = { "/rc/*" })
public class ReadingClubController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReadingClubDAO rcdao = new ReadingClubDAO();

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nextPage="";
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String action = request.getPathInfo();
		
		if(action==null || action.equals("/list.do")) {
			ArrayList<ReadingClubVO> rcList = rcdao.list();
			request.setAttribute("rcList", rcList);
			nextPage = "/views/2_Service/4_readingclub/0_default.jsp";
			
			
			
		}else if (action.equals("/addForm.do")){
			nextPage="/views/2_Service/4_readingclub/1_addForm.jsp";
			
		}else if (action.equals("/add.do")){
			String rcKeyS = request.getParameter("rcKey"); 
			int rcKey=0; if(rcKeyS!=null) {rcKey=Integer.parseInt(rcKeyS);};

			String rcName = request.getParameter("rcName"); if(rcName==null) rcName="";
	
			String rcCntS = request.getParameter("rcCnt"); 
			int rcCnt=0; if(rcCntS!=null) {rcCnt=Integer.parseInt(rcCntS);};
			
			String rcStartDate = request.getParameter("rcStartDate"); if(rcStartDate==null) rcStartDate="";
			
			String rcOperTimeS = request.getParameter("rcOperTime");
			int rcOperTime=0; if(rcOperTimeS!=null) {rcOperTime=Integer.parseInt(rcOperTimeS);};
			
			String rcPriceS = request.getParameter("rcPrice");
			int rcPrice=0; if(rcPriceS!=null) {rcPrice=Integer.parseInt(rcPriceS);};
			
			String rcContents = request.getParameter("rcContents"); if(rcContents==null) rcContents="";
			
			String mKeyS = request.getParameter("mKey");
			int mKey=0; if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);};
			
			String fileKeyS = request.getParameter("fileKey");
			int fileKey=0; if(fileKeyS!=null) {fileKey=Integer.parseInt(fileKeyS);};
			
			ReadingClubVO rcVO = new ReadingClubVO(
					rcKey, rcName, rcCnt, 
					rcStartDate, rcOperTime, 
					rcPrice, rcContents, mKey, 
					fileKey);
			
			rcdao.insertrc(rcVO);
			
			nextPage="/views/2_Service/4_readingclub/1_addForm.jsp";
		} else if(action.equals("/modForm.do")){
			String rcKeyS = request.getParameter("rcKey"); 
			int rcKey=0; if(rcKeyS!=null) {rcKey=Integer.parseInt(rcKeyS);};
			ReadingClubVO rcmodList = rcdao.searchListKey(rcKey).get(0);
			request.setAttribute("rcmodList", rcmodList);
			nextPage = "/views/2_Service/4_readingclub/2_modform.jsp";
			
			
		}else if(action.equals("/mod.do")){
			String rcKeyS = request.getParameter("rcKey"); 
			int rcKey=0; if(rcKeyS!=null) {rcKey=Integer.parseInt(rcKeyS);};

			String rcName = request.getParameter("rcName"); if(rcName==null) rcName="";
	
			String rcCntS = request.getParameter("rcCnt"); 
			int rcCnt=0; if(rcCntS!=null) {rcCnt=Integer.parseInt(rcCntS);};
			
			String rcStartDate = request.getParameter("rcStartDate"); if(rcStartDate==null) rcStartDate="";
			
			String rcOperTimeS = request.getParameter("rcOperTime");
			int rcOperTime=0; if(rcOperTimeS!=null) {rcOperTime=Integer.parseInt(rcOperTimeS);};
			
			String rcPriceS = request.getParameter("rcPrice");
			int rcPrice=0; if(rcPriceS!=null) {rcPrice=Integer.parseInt(rcPriceS);};
			
			String rcContents = request.getParameter("rcContents"); if(rcContents==null) rcContents="";
			
			String mKeyS = request.getParameter("mKey");
			int mKey=0; if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);};
			
			String fileKeyS = request.getParameter("fileKey");
			int fileKey=0; if(fileKeyS!=null) {fileKey=Integer.parseInt(fileKeyS);};
			
			ReadingClubVO rcVO = new ReadingClubVO(
					rcKey, rcName, rcCnt, 
					rcStartDate, rcOperTime, 
					rcPrice, rcContents, mKey, 
					fileKey);
			
			rcdao.updatelt(rcVO);
			nextPage = "/rc/list.do";
			
		}else if(action.equals("/del.do")){
			String rcKeyS = request.getParameter("rcKey"); 
			int rcKey=0; if(rcKeyS!=null) {rcKey=Integer.parseInt(rcKeyS);};
			
			rcdao.deleterc(rcKey);
			nextPage = "/rc/list.do";
			
		}else {
			ArrayList<ReadingClubVO> rcList = rcdao.list();
			request.setAttribute("rcList", rcList);
			nextPage = "/views/2_Service/4_readingclub/0_default.jsp";
		}
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);

			
	}

}
