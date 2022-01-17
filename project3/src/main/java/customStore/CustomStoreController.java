package customStore;

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
@WebServlet(name = "custom", urlPatterns = { "/custom/*" })
public class CustomStoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String BOARD_IMAGE_REPO = "C:\\oft\\oft_image";
	CustomStoreService CustomStoreService = new CustomStoreService();
	CustomStoreDAO CustomStoreDAO = new CustomStoreDAO();
	CustomStoreVO CustomStoreVO = new CustomStoreVO();


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

		ArrayList<CustomStoreVO> oftList = new ArrayList<CustomStoreVO>();
		CustomStoreVO oftVO = new CustomStoreVO();
		
		
		if (action == null || action.equals("/list.do")) {
			oftList = CustomStoreService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/3_custom/0_list.jsp";

			
			
		} else if (action.equals("/list.do")) {
			oftList = CustomStoreService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/3_custom/0_list.jsp";

		} else if (action.equals("/addForm.do")) {
			nextPage = "/views/10_Store/3_custom/1_addForm.jsp";
			
		} else if (action.equals("/add.do")) {

			String cusPname = request.getParameter("cusPname");
			if ( cusPname== null)
				cusPname = "";
			
			
			String cusExplain = request.getParameter("cusExplain");
			if ( cusExplain== null)
				cusExplain = "";

			String cusStockS = request.getParameter("cusStock");
			int cusStock = 0;
			if (cusStockS != null) {
				cusStock = Integer.parseInt(cusStockS);
			}
			;
			String cusDiscountS = request.getParameter("cusDiscount");
			int cusDiscount = 0;
			if (cusDiscountS != null) {
				cusDiscount = Integer.parseInt(cusDiscountS);
			}
			;
			String mKeyS = request.getParameter("mKey");
			int mKey = 0;
			if (mKeyS != null) {
				mKey = Integer.parseInt(mKeyS);
			}
			;
			String proCateKeyS = request.getParameter("proCateKey");
			int proCateKey = 0;
			if (proCateKeyS != null) {
				proCateKey = Integer.parseInt(proCateKeyS);
			}
			;
			
			String fileKey = request.getParameter("fileKey");
			if ( fileKey== null)
				fileKey = "";
			
			
			
			
			
			
			
			
			
			
			CustomStoreVO off = new CustomStoreVO(
					0,
					cusPname,
					cusExplain,"","",
					cusStock,
					cusDiscount,
					mKey,
					proCateKey,
					fileKey);


			CustomStoreService.add(off);
			
			nextPage="/custom/list.do";

		} else if (action.equals("/view.do")) {
			String cusKeyS = request.getParameter("cusKey");
			int cusKey = 0;
			if (cusKeyS != null) {
				cusKey = Integer.parseInt(cusKeyS);
			}
			;
			
			oftVO = CustomStoreService.view(cusKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/10_Store/3_custom/3_detail.jsp";

			
			
			
		} else if (action.equals("/modForm.do")) {
			String cusKeyS = request.getParameter("cusKey");
			int cusKey = 0;
			if (cusKeyS != null) {
				cusKey = Integer.parseInt(cusKeyS);
			}
			;
			
			
			
			
			
			
			
			
			oftVO = CustomStoreService.view(cusKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/10_Store/3_custom/2_modForm.jsp";
			

		} else if (action.equals("/mod.do")) {

			String cusKeyS = request.getParameter("cusKey");
			int cusKey = 0;
			if (cusKeyS != null) {
				cusKey = Integer.parseInt(cusKeyS);
			}
			;
			
			
			String cusPname = request.getParameter("cusPname");
			if ( cusPname== null)
				cusPname = "";
			
			
			String cusExplain = request.getParameter("cusExplain");
			if ( cusExplain== null)
				cusExplain = "";

			String cusStockS = request.getParameter("cusStock");
			int cusStock = 0;
			if (cusStockS != null) {
				cusStock = Integer.parseInt(cusStockS);
			}
			;
			String cusDiscountS = request.getParameter("cusDiscount");
			int cusDiscount = 0;
			if (cusDiscountS != null) {
				cusDiscount = Integer.parseInt(cusDiscountS);
			}
			;
			String mKeyS = request.getParameter("mKey");
			int mKey = 0;
			if (mKeyS != null) {
				mKey = Integer.parseInt(mKeyS);
			}
			;
			String proCateKeyS = request.getParameter("proCateKey");
			int proCateKey = 0;
			if (proCateKeyS != null) {
				proCateKey = Integer.parseInt(proCateKeyS);
			}
			;
			
			String fileKey = request.getParameter("fileKey");
			if ( fileKey== null)
				fileKey = "";
			
			
			
			
			
			
			
			
			CustomStoreVO off = new CustomStoreVO(
					cusKey,
					cusPname,
					cusExplain,"","",
					cusStock,
					cusDiscount,
					mKey,
					proCateKey,
					fileKey);

			

			CustomStoreService.mod(off);
			request.setAttribute("oft", off);
			
			
			nextPage="/custom/list.do";

			
		} else if (action.equals("/del.do")) {
			String cusKeyS = request.getParameter("cusKey");
			int cusKey = 0;
			if (cusKeyS != null) {
				cusKey = Integer.parseInt(cusKeyS);
			}
			;

			CustomStoreService.del(cusKey);
			nextPage = "/custom/list.do";

		} else {
			oftList = CustomStoreService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/3_custom/0_list.jsp";		
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
