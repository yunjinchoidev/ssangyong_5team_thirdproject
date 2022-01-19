package fvOrder;

import talentGive.*;
import talentTake.*;
import yunjinTest.*;

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
@WebServlet(name = "order", urlPatterns = { "/order/*" })
public class FvOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String BOARD_IMAGE_REPO = "C:\\oft\\oft_image";
	FvOrderService FvOrderService = new FvOrderService();
	FvOrderDAO FvOrderDAO = new FvOrderDAO();
	FvOrderVO FvOrderVO = new FvOrderVO();
	MemberDAO memberDAO = new MemberDAO();

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

		ArrayList<FvOrderVO> oftList = new ArrayList<FvOrderVO>();
		FvOrderVO oftVO = new FvOrderVO();
		
		
		if (action == null || action.equals("/list.do")) {
			oftList = FvOrderService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/13_order/0_list.jsp";

			
			
		} else if (action.equals("/list.do")) {
			oftList = FvOrderService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/13_order/0_list.jsp";

			
			
			
			
		} else if (action.equals("/addForm.do")) {
			nextPage = "/views/13_order/1_addForm.jsp";
			
		} else if (action.equals("/add.do")) {
			String orderKeyS = request.getParameter("orderKey");
			int orderKey = 0;
			if (orderKeyS != null) {
				orderKey = Integer.parseInt(orderKeyS);
			}
			;

			String sellerId = request.getParameter("sellerId");
			if (sellerId == null)
				sellerId = "";
			String installType = request.getParameter("installType");
			if (installType == null)
				installType = "";
			
			
			
			
			
			String orderPriceS = request.getParameter("orderPrice");
			int orderPrice = 0;
			if (orderPriceS != null) {
				orderPrice = Integer.parseInt(orderPriceS);
			}
			;
			String payType = request.getParameter("payType");
			if (payType == null)
				payType = "";
			
			
			String mKeyS = request.getParameter("mKey");
			int mKey = 0;
			if (mKeyS != null) {
				mKey = Integer.parseInt(mKeyS);
			}
			;
			
			int mypo= memberDAO.searchPoint(mKey);
			System.out.println("mypo"+mypo);
			System.out.println("mKey"+mKey);
			System.out.println("orderPrice"+orderPrice);
			System.out.println("payType: "+payType);
			
			int go=1;
			
			if(payType=="go") {
				mypo = mypo - orderPrice;
				System.out.println("이제 결제합니다~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
			};

			System.out.println("mypo"+mypo);
			
			memberDAO.updatePoint(mKey,mypo);
			System.out.println("계산후mypo"+mypo);
			
			
			String orderEmail = request.getParameter("orderEmail");
			if (orderEmail == null)
				orderEmail = "";
			String cardType = request.getParameter("cardType");
			if (cardType == null)
				cardType = "";
			
			
			String cartKeyS = request.getParameter("cartKey");
			int cartKey = 0;
			if (cartKeyS != null) {
				cartKey = Integer.parseInt(cartKeyS);
			}
			;
			
			
			
			
			
			
			
			
			
			String orderstatus = request.getParameter("orderstatus");
			if (orderstatus == null)
				orderstatus = "";
			
			
			FvOrderVO off = new FvOrderVO(orderKey,
					sellerId,
					"",
					installType,
					orderPrice,
					payType,
					orderEmail,
					cardType,
					cartKey,
					mKey,
					orderstatus);


			FvOrderService.add(off);
			
			nextPage="/order/list.do";

		} else if (action.equals("/view.do")) {
			String orderKeyS = request.getParameter("orderKey");
			int orderKey = 0;
			if (orderKeyS != null) {
				orderKey = Integer.parseInt(orderKeyS);
			}
			;
			
			oftVO = FvOrderService.view(orderKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/13_order/3_detail.jsp";

			
			
			
		} else if (action.equals("/modForm.do")) {
			String orderKeyS = request.getParameter("orderKey");
			int orderKey = 0;
			if (orderKeyS != null) {
				orderKey = Integer.parseInt(orderKeyS);
			}
			;
			
			oftVO = FvOrderService.view(orderKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/13_order/2_modForm.jsp";
			

		} else if (action.equals("/mod.do")) {

			

			
			nextPage="/order/list.do";

			
		} else if (action.equals("/del.do")) {
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;

			FvOrderService.del(officialKey);
			nextPage = "/order/list.do";

		} else {
			oftList = FvOrderService.list();
			request.setAttribute("oftList", oftList);

			nextPage = "/views/13_order/0_list.jsp";		
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
