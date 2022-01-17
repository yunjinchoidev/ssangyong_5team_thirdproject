package offictialStoreTest;

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
@WebServlet(name = "oft", urlPatterns = { "/oft/*" })
public class OfficialStoreTestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String BOARD_IMAGE_REPO = "C:\\oft\\oft_image";
	OfficialStoreTestService officialStoreTestService = new OfficialStoreTestService();
	OfficialStoreTestDAO officialStoreTestDAO = new OfficialStoreTestDAO();
	OfficialStoreTestVO officialStoreTestVO = new OfficialStoreTestVO();


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

		ArrayList<OfficialStoreTestVO> oftList = new ArrayList<OfficialStoreTestVO>();
		OfficialStoreTestVO oftVO = new OfficialStoreTestVO();
		
		
		if (action == null || action.equals("/list.do")) {
			oftList = officialStoreTestService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/1_official/0_list.jsp";

			
			
		} else if (action.equals("/list.do")) {
			oftList = officialStoreTestService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/1_official/0_list.jsp";

		} else if (action.equals("/addForm.do")) {
			nextPage = "/views/10_Store/1_official/1_addForm.jsp";
			
		} else if (action.equals("/add.do")) {
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;

			String officialPname = request.getParameter("officialPname");
			if (officialPname == null)
				officialPname = "";
			
			String officialExplain = request.getParameter("officialExplain");
			if (officialExplain == null)
				officialExplain = "";
			
			
			
			
			String officialInventoryS = request.getParameter("officialInventory");
			int officialInventory = 0;
			if (officialInventoryS != null) {
				officialInventory = Integer.parseInt(officialInventoryS);
			}
			;
			String officialDiscountS = request.getParameter("officialDiscount");
			int officialDiscount = 0;
			if (officialDiscountS != null) {
				officialDiscount = Integer.parseInt(officialDiscountS);
			}
			;
			String ProCateKeyS = request.getParameter("proCateKey");
			int ProCateKey = 0;
			if (ProCateKeyS != null) {
				ProCateKey = Integer.parseInt(ProCateKeyS);
			}
			;

			String fileKey = request.getParameter("fileKey");
			if (fileKey == null)
				fileKey = "";

			OfficialStoreTestVO off = new OfficialStoreTestVO(
					officialKey, officialPname, officialExplain, 
					"", officialInventory, officialDiscount,
					ProCateKey, fileKey);


			officialStoreTestService.add(off);
			
			nextPage="/oft/list.do";

		} else if (action.equals("/view.do")) {
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;
			
			oftVO = officialStoreTestService.view(officialKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/10_Store/1_official/3_detail.jsp";

		} else if (action.equals("/modForm.do")) {
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;
			
			oftVO = officialStoreTestService.view(officialKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/10_Store/1_official/2_modForm.jsp";
			

		} else if (action.equals("/mod.do")) {

			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;

			String officialPname = request.getParameter("officialPname");
			if (officialPname == null)
				officialPname = "";
			
			String officialExplain = request.getParameter("officialExplain");
			if (officialExplain == null)
				officialExplain = "";
			
			
			
			
			String officialInventoryS = request.getParameter("officialInventory");
			int officialInventory = 0;
			if (officialInventoryS != null) {
				officialInventory = Integer.parseInt(officialInventoryS);
			}
			;
			String officialDiscountS = request.getParameter("officialDiscount");
			int officialDiscount = 0;
			if (officialDiscountS != null) {
				officialDiscount = Integer.parseInt(officialDiscountS);
			}
			;
			String ProCateKeyS = request.getParameter("proCateKey");
			int ProCateKey = 0;
			if (ProCateKeyS != null) {
				ProCateKey = Integer.parseInt(ProCateKeyS);
			}
			;

			String fileKey = request.getParameter("fileKey");
			if (fileKey == null)
				fileKey = "";

			OfficialStoreTestVO oft = new OfficialStoreTestVO(
					officialKey, officialPname, officialExplain, 
					"", officialInventory, officialDiscount,
					ProCateKey, fileKey);

			

			officialStoreTestService.mod(oft);
			request.setAttribute("oft", oft);
			
			
			nextPage="/oft/list.do";

			
		} else if (action.equals("/del.do")) {
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;

			officialStoreTestService.del(officialKey);
			nextPage = "/oft/list.do";

		} else {
			oftList = officialStoreTestService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/10_Store/1_official/0_list.jsp";		
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
