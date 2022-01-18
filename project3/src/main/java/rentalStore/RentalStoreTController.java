package rentalStore;

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
@WebServlet(name = "rental", urlPatterns = { "/rental/*" })
public class RentalStoreTController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String BOARD_IMAGE_REPO = "C:\\oft\\oft_image";
	RentalStoreTService RentalStoreTService = new RentalStoreTService();
	RentalStoreTDAO RentalStoreTDAO = new RentalStoreTDAO();
	RentalStoreTVO RentalStoreTVO = new RentalStoreTVO();


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

		ArrayList<RentalStoreTVO> oftList = new ArrayList<RentalStoreTVO>();
		RentalStoreTVO oftVO = new RentalStoreTVO();
		
		
		if (action == null || action.equals("/list.do")) {
			oftList = RentalStoreTService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/2_rent/0_list.jsp";

			
			
		} else if (action.equals("/list.do")) {
			oftList = RentalStoreTService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/2_rent/0_list.jsp";

		} else if (action.equals("/addForm.do")) {
			nextPage = "/views/10_Store/2_rent/1_addForm.jsp";
			
		} else if (action.equals("/add.do")) {
			String rentalKeyS = request.getParameter("rentalKey");
			int rentalKey = 0;
			if (rentalKeyS != null) {
				rentalKey = Integer.parseInt(rentalKeyS);
			}
			;


			String rentalPname = request.getParameter("rentalPname");
			if ( rentalPname== null) rentalPname = "";
			
			String rentaltermS = request.getParameter("rentalterm");
			int rentalterm = 0;
			if (rentaltermS != null) {
				rentalterm = Integer.parseInt(rentaltermS);
			}
			;
			
			
			String rentalExplain = request.getParameter("rentalExplain");
			if ( rentalExplain == null)
				rentalExplain = "";
			
			
			String rentalStartDayS = request.getParameter("rentalStartDayS");
			if (rentalStartDayS == null)
				rentalStartDayS = "";
			
			
			String rentalEndDayS = request.getParameter("rentalEndDayS");
			if ( rentalEndDayS== null)
				rentalEndDayS= "";
			
			
			String proCateKeyS = request.getParameter("proCateKey");
			int proCateKey = 0;
			if (proCateKeyS != null) {
				proCateKey = Integer.parseInt(proCateKeyS);
			}
			;
			
			String fileKey = request.getParameter("fileKey");
			if (fileKey == null)
				fileKey = "";
			
			
			String rentPriceS = request.getParameter("rentPrice");
			int rentPrice = 0;
			if (rentPriceS != null) {
				rentPrice = Integer.parseInt(rentPriceS);
			}
			;
			
			
			
			
			
			

			RentalStoreTVO off = new RentalStoreTVO(
							rentalKey, rentalPname, rentalterm,
							rentalExplain, rentalStartDayS, rentalEndDayS,
							proCateKey, fileKey, rentPrice);

			RentalStoreTService.add(off);
			
			nextPage="/rental/list.do";

		} else if (action.equals("/view.do")) {
			String rentalKeyS = request.getParameter("rentalKey");
			int rentalKey = 0;
			if (rentalKeyS != null) {
				rentalKey = Integer.parseInt(rentalKeyS);
			}
			;
			oftVO = RentalStoreTService.view(rentalKey);
			request.setAttribute("oftVO", oftVO);
			
			nextPage = "/views/10_Store/2_rent/3_detail.jsp";

			
			
			
		} else if (action.equals("/modForm.do")) {
			String rentalKeyS = request.getParameter("rentalKey");
			int rentalKey = 0;
			if (rentalKeyS != null) {
				rentalKey = Integer.parseInt(rentalKeyS);
			}
			;
			
			oftVO = RentalStoreTService.view(rentalKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/10_Store/2_rent/2_modForm.jsp";
			

		} else if (action.equals("/mod.do")) {
			String rentalKeyS = request.getParameter("rentalKey");
			int rentalKey = 0;
			if (rentalKeyS != null) {
				rentalKey = Integer.parseInt(rentalKeyS);
			}
			;


			String rentalPname = request.getParameter("rentalPname");
			if ( rentalPname== null) rentalPname = "";
			
			String rentaltermS = request.getParameter("rentalterm");
			int rentalterm = 0;
			if (rentaltermS != null) {
				rentalterm = Integer.parseInt(rentaltermS);
			}
			;
			
			
			String rentalExplain = request.getParameter("rentalExplain");
			if ( rentalExplain == null)
				rentalExplain = "";
			
			
			String rentalStartDayS = request.getParameter("rentalStartDayS");
			if (rentalStartDayS == null)
				rentalStartDayS = "";
			
			
			String rentalEndDayS = request.getParameter("rentalEndDayS");
			if ( rentalEndDayS== null)
				rentalEndDayS= "";
			
			
			String proCateKeyS = request.getParameter("proCateKey");
			int proCateKey = 0;
			if (proCateKeyS != null) {
				proCateKey = Integer.parseInt(proCateKeyS);
			}
			;
			
			String fileKey = request.getParameter("fileKey");
			if (fileKey == null)
				fileKey = "";
			
			
			String rentPriceS = request.getParameter("rentPrice");
			int rentPrice = 0;
			if (rentPriceS != null) {
				rentPrice = Integer.parseInt(rentPriceS);
			};
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			RentalStoreTVO off = new RentalStoreTVO(
					rentalKey, rentalPname, rentalterm,
					rentalExplain, rentalStartDayS, rentalEndDayS,
					proCateKey, fileKey, rentPrice);

	
			

			RentalStoreTService.mod(off);
			request.setAttribute("off", off);
			
			nextPage="/rental/list.do";

			
		} else if (action.equals("/del.do")) {
			String rentalKeyS = request.getParameter("rentalKey");
			int rentalKey = 0;
			if (rentalKeyS != null) {
				rentalKey = Integer.parseInt(rentalKeyS);
			}
			;
			
			RentalStoreTService.del(rentalKey);
			nextPage = "/rental/list.do";

			
			
		} else {
			oftList = RentalStoreTService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/2_rent/0_list.jsp";		
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
