package lordMeeting;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


/**
 * Servlet implementation class BoardController
 */
@WebServlet(name = "lordMeeting", urlPatterns = { "/lordMeeting/*" })
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static String BOARD_IMAGE_REPO = "C:\\board\\board_image";
	BoardService boardService=new BoardService();
	BoardDAO boardDAO = new BoardDAO();
	BoardVO boardVO = new BoardVO();

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
		
		
		ArrayList<BoardVO> bdList = new ArrayList<BoardVO>();
		
		
		if(action==null || action.equals("/list.do")) {
			bdList=boardService.listBd();
			request.setAttribute("bdList", bdList);
			nextPage="/views/5_LordOfRing/2_lordMeeting/0_list.jsp";
			
			
		}else if(action.equals("/listBd.do")){
			bdList=boardService.listBd();
			request.setAttribute("bdList", bdList);
			nextPage="/views/5_LordOfRing/2_lordMeeting/0_list.jsp";
	
		}else if(action.equals("/addForm.do")){
			nextPage="/views/5_LordOfRing/2_lordMeeting/1_addForm.jsp";
			
		}else if(action.equals("/add.do")){
			String boPostKeyS = request.getParameter("boPostKey"); 
			int boPostKey=0; if(boPostKeyS!=null) {boPostKey=Integer.parseInt(boPostKeyS);};
			
			String mKeyS = request.getParameter("mKey"); 
			int mKey=0; if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);};
			
			String fileKeyS = request.getParameter("fileKey"); 
			int fileKey=0; if(fileKeyS!=null) 
			{fileKey=Integer.parseInt(fileKeyS);};
			
			String boCateKeyS = request.getParameter("boCateKey"); 
			int boCateKey=0; if(boCateKeyS!=null) {boCateKey=Integer.parseInt(boCateKeyS);};

			String boWriter = request.getParameter("boWriter"); if(boWriter==null) boWriter="";
			String boWriterPass = request.getParameter("boWriterPass"); if(boWriterPass==null) boWriterPass="";
			String boWriterEmail = request.getParameter("boWriterEmail"); if(boWriterEmail==null) boWriterEmail="";
			String boTitle = request.getParameter("boTitle"); if(boTitle==null) boTitle="";
			String boModifyDate = request.getParameter("boModifyDate"); if(boModifyDate==null) boModifyDate="";
			String boWriteIp = request.getParameter("boWriteIp"); if(boWriteIp==null) boWriteIp="";
	
			String boViewsS = request.getParameter("boViews"); 
			int boViews=0; if(boViewsS!=null) {boViews=Integer.parseInt(boViewsS);};
			
			String ParentNOS = request.getParameter("ParentNO");
			int ParentNO=0; if(ParentNOS!=null) {ParentNO=Integer.parseInt(ParentNOS);};
			
			
			String boContent = request.getParameter("boContent"); if(boContent==null) boContent="";
			
			
			BoardVO b = new BoardVO(boPostKey, mKey, fileKey, boCateKey,
					boWriter, boWriterPass, boWriterEmail, "", boTitle,
					boModifyDate, boWriteIp, boViews, ParentNO, boContent, 0);
			
			boardDAO.insertBd(b);
			
			nextPage="/lordMeeting/listBd.do";
			
		}else if(action.equals("/view.do")){
			String boPostKeyS = request.getParameter("boPostKey"); 
			int boPostKey=0; if(boPostKeyS!=null) {boPostKey=Integer.parseInt(boPostKeyS);};
			boardVO = boardService.viewBd(boPostKey);
			request.setAttribute("boardVO", boardVO);
			nextPage="/views/2_Service/5_totalboard/3_detail.jsp";
			
		}else if(action.equals("/modForm.do")) {
			String boPostKeyS = request.getParameter("boPostKey"); 
			int boPostKey=0; if(boPostKeyS!=null) {boPostKey=Integer.parseInt(boPostKeyS);};
			boardVO = boardService.viewBd(boPostKey);
			request.setAttribute("boardVO", boardVO);
			nextPage="/views/5_LordOfRing/2_lordMeeting/2_modForm.jsp";
			
			
			
			
		}else if(action.equals("/mod.do")) {
			String boPostKeyS = request.getParameter("boPostKey"); 
			int boPostKey=0; if(boPostKeyS!=null) {boPostKey=Integer.parseInt(boPostKeyS);};
			
			String mKeyS = request.getParameter("mKey"); 
			int mKey=0; if(mKeyS!=null) {mKey=Integer.parseInt(mKeyS);};
			
			String fileKeyS = request.getParameter("fileKey"); 
			int fileKey=0; if(fileKeyS!=null) {fileKey=Integer.parseInt(fileKeyS);};
			
			String boCateKeyS = request.getParameter("boCateKey"); 
			int boCateKey=0; if(boCateKeyS!=null) {boCateKey=Integer.parseInt(boCateKeyS);};

			String boWriter = request.getParameter("boWriter"); if(boWriter==null) boWriter="";
			String boWriterPass = request.getParameter("boWriterPass"); if(boWriterPass==null) boWriterPass="";
			String boWriterEmail = request.getParameter("boWriterEmail"); if(boWriterEmail==null) boWriterEmail="";
			String boTitle = request.getParameter("boTitle"); if(boTitle==null) boTitle="";
			String boModifyDate = request.getParameter("boModifyDate"); if(boModifyDate==null) boModifyDate="";
			String boWriterIp = request.getParameter("boWriterIp"); if(boWriterIp==null) boWriterIp="";
	
			String boViewsS = request.getParameter("boViews"); 
			int boViews=0; if(boViewsS!=null) {boViews=Integer.parseInt(boViewsS);};
			
			String ParentNOS = request.getParameter("boParentNO");
			int ParentNO=0; if(ParentNOS!=null) {ParentNO=Integer.parseInt(ParentNOS);};
			
			
			String boContent = request.getParameter("boContent"); if(boContent==null) boContent="";
			
			
			BoardVO b = new BoardVO(boPostKey, mKey, fileKey, boCateKey,
					boWriter, boWriterPass, boWriterEmail, "", boTitle,
					boModifyDate, boWriterIp, boViews, ParentNO, boContent, 0);
			
			boardService.modBd(b);
			
			nextPage="/lordMeeting/listBd.do";
			
			
			
			
		}else if(action.equals("/del.do")) {
			String boPostKeyS = request.getParameter("boPostKey"); 
			int boPostKey=0; if(boPostKeyS!=null) {boPostKey=Integer.parseInt(boPostKeyS);};
			
			boardDAO.deleteBd(boPostKey);
			nextPage = "/lordMeeting/list.do";
		
		}else {
			bdList=boardService.listBd();
			request.setAttribute("bdList", bdList);
			nextPage="/views/5_LordOfRing/2_lordMeeting/0_list.jsp";
			
		}	
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

	private Map<String, String> upload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, String> articleMap = new HashMap<String, String>();
		String encoding = "utf-8";
		File currentDirPath = new File(BOARD_IMAGE_REPO);
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(currentDirPath);
		factory.setSizeThreshold(1024 * 1024);
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List items = upload.parseRequest(request);
			for (int i = 0; i < items.size(); i++) {
				FileItem fileItem = (FileItem) items.get(i);
				if (fileItem.isFormField()) {
					System.out.println(fileItem.getFieldName() + "=" + fileItem.getString(encoding));
					articleMap.put(fileItem.getFieldName(), fileItem.getString(encoding));
				} else {
					System.out.println("�Ķ���͸�:" + fileItem.getFieldName());
					//System.out.println("���ϸ�:" + fileItem.getName());
					System.out.println("����ũ��:" + fileItem.getSize() + "bytes");
					//articleMap.put(fileItem.getFieldName(), fileItem.getName());
					if (fileItem.getSize() > 0) {
						int idx = fileItem.getName().lastIndexOf("\\");
						if (idx == -1) {
							idx = fileItem.getName().lastIndexOf("/");
						}

						String fileName = fileItem.getName().substring(idx + 1);
						System.out.println("���ϸ�:" + fileName);
						articleMap.put(fileItem.getFieldName(), fileName);  //�ͽ��÷η����� ���ε� ������ ��� ���� �� map�� ���ϸ� ����
						File uploadFile = new File(currentDirPath + "\\" + fileName);
						fileItem.write(uploadFile);

					} // end if
				} // end if
			} // end for
		} catch (Exception e) {
			e.printStackTrace();
		}
		return articleMap;
	}





}
