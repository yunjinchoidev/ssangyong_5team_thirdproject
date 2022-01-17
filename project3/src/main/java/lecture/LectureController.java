package lecture;

import talentGive.*;
import talentTake.*;

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
@WebServlet(name = "lecture", urlPatterns = { "/lecture/*" })
public class LectureController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String BOARD_IMAGE_REPO = "C:\\oft\\oft_image";
	LectureService LectureService = new LectureService();
	LectureDAO LectureDAO = new LectureDAO();
	LectureVO LectureVO = new LectureVO();


	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String nextPage = "";
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String action = request.getPathInfo();

		ArrayList<LectureVO> oftList = new ArrayList<LectureVO>();
		LectureVO oftVO = new LectureVO();
		
		
		if (action == null || action.equals("/list.do")) {
			oftList = LectureService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/4_lecture/0_list.jsp";

			
			
		} else if (action.equals("/list.do")) {
			oftList = LectureService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/4_lecture/0_list.jsp";

			
			
			
		} else if (action.equals("/addForm.do")) {
			nextPage = "/views/10_Store/4_lecture/1_addForm.jsp";
			
		} else if (action.equals("/add.do")) {

			String lecName = request.getParameter("lecName");
			if (lecName == null)
				lecName = "";
			
			String lecTeacher = request.getParameter("lecTeacher");
			if (lecTeacher == null)
				lecTeacher = "";
			
			String leclimitcntS = request.getParameter("leclimitcnt");
			int leclimitcnt = 0;
			if (leclimitcntS != null) {
				leclimitcnt = Integer.parseInt(leclimitcntS);
			}
			;
			String leconlineavailS = request.getParameter("leconlineavail");
			int leconlineavail = 0;
			if (leconlineavailS != null) {
				leconlineavail = Integer.parseInt(leconlineavailS);
			}
			;
			
			String lecdifficulty = request.getParameter("lecdifficulty");
			if (lecdifficulty == null)
				lecdifficulty = "";
			String leccontents = request.getParameter("leccontents");
			if (leccontents == null)
				leccontents = "";
			String lecscoreS = request.getParameter("lecscore");
			int lecscore = 0;
			if (lecscoreS != null) {
				lecscore = Integer.parseInt(lecscoreS);
			}
			;
			String proCateKeyS = request.getParameter("proCateKey");
			int proCateKey = 0;
			if (proCateKeyS != null) {
				proCateKey = Integer.parseInt(proCateKeyS);
			}
			;
			
			
			String fileKey = request.getParameter("fileKey");
			if (fileKey == null)
				fileKey = "";
			
			
			String lecPriceS = request.getParameter("lecPrice");
			int lecPrice = 0;
			if (lecPriceS != null) {
				lecPrice = Integer.parseInt(lecPriceS);
			}
			;
			
			

			LectureVO off = new LectureVO(
					0,
					lecName,
					lecTeacher,
					leclimitcnt,
					leconlineavail,
					lecdifficulty,
					leccontents,
					lecscore,
					proCateKey,
					fileKey,
					lecPrice);


			LectureService.add(off);
			
			nextPage="/lecture/list.do";

			
		} else if (action.equals("/view.do")) {
			String lecKeyS = request.getParameter("lecKey");
			int lecKey = 0;
			if (lecKeyS != null) {
				lecKey = Integer.parseInt(lecKeyS);
			}
			;
			
			oftVO = LectureService.view(lecKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/10_Store/4_lecture/3_detail.jsp";

			
			
			
		} else if (action.equals("/modForm.do")) {
			String lecKeyS = request.getParameter("lecKey");
			int lecKey = 0;
			if (lecKeyS != null) {
				lecKey = Integer.parseInt(lecKeyS);
			}
			;
			
			oftVO = LectureService.view(lecKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/10_Store/4_lecture/2_modForm.jsp";
			

		} else if (action.equals("/mod.do")) {
			String lecKeyS = request.getParameter("lecKey");
			int lecKey = 0;
			if (lecKeyS != null) {
				lecKey = Integer.parseInt(lecKeyS);
			}
			;
			String lecName = request.getParameter("lecName");
			if (lecName == null)
				lecName = "";
			
			String lecTeacher = request.getParameter("lecTeacher");
			if (lecTeacher == null)
				lecTeacher = "";
			
			String leclimitcntS = request.getParameter("leclimitcnt");
			int leclimitcnt = 0;
			if (leclimitcntS != null) {
				leclimitcnt = Integer.parseInt(leclimitcntS);
			}
			;
			String leconlineavailS = request.getParameter("leconlineavail");
			int leconlineavail = 0;
			if (leconlineavailS != null) {
				leconlineavail = Integer.parseInt(leconlineavailS);
			}
			;
			
			String lecdifficulty = request.getParameter("lecdifficulty");
			if (lecdifficulty == null)
				lecdifficulty = "";
			String leccontents = request.getParameter("leccontents");
			if (leccontents == null)
				leccontents = "";
			String lecscoreS = request.getParameter("lecscore");
			int lecscore = 0;
			if (lecscoreS != null) {
				lecscore = Integer.parseInt(lecscoreS);
			}
			;
			String proCateKeyS = request.getParameter("proCateKey");
			int proCateKey = 0;
			if (proCateKeyS != null) {
				proCateKey = Integer.parseInt(proCateKeyS);
			}
			;
			
			
			String fileKey = request.getParameter("fileKey");
			if (fileKey == null)
				fileKey = "";
			
			
			String lecPriceS = request.getParameter("lecPrice");
			int lecPrice = 0;
			if (lecPriceS != null) {
				lecPrice = Integer.parseInt(lecPriceS);
			}
			;
			
			

			LectureVO oft = new LectureVO(
					0,
					lecName,
					lecTeacher,
					leclimitcnt,
					leconlineavail,
					lecdifficulty,
					leccontents,
					lecscore,
					proCateKey,
					fileKey,
					lecPrice);

			LectureVO off = new LectureVO(
					lecKey,
					lecName,
					lecTeacher,
					leclimitcnt,
					leconlineavail,
					lecdifficulty,
					leccontents,
					lecscore,
					proCateKey,
					fileKey,
					lecPrice);
			

			LectureService.mod(off);
			request.setAttribute("oft", off);
			
			
			nextPage="/lecture/list.do";

			
		} else if (action.equals("/del.do")) {
			String lecKeyS = request.getParameter("lecKey");
			int lecKey = 0;
			if (lecKeyS != null) {
				lecKey = Integer.parseInt(lecKeyS);
			}
			;

			LectureService.del(lecKey);
			nextPage = "/lecture/list.do";

		} else {
			oftList = LectureService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/4_lecture/0_list.jsp";		
			}
		
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

	private Map<String, String> upload(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
					if (fileItem.getSize() > 0) {
						int idx = fileItem.getName().lastIndexOf("\\");
						if (idx == -1) {
							idx = fileItem.getName().lastIndexOf("/");
						}

						String fileName = fileItem.getName().substring(idx + 1);
						System.out.println("���ϸ�:" + fileName);
						articleMap.put(fileItem.getFieldName(), fileName); // �ͽ��÷η����� ���ε� ������ ��� ���� �� map��
																			// ���ϸ� ����
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
