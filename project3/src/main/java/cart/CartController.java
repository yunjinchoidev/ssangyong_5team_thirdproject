package cart;

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
@WebServlet(name = "cart", urlPatterns = { "/cart/*" })
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String BOARD_IMAGE_REPO = "C:\\oft\\oft_image";
	CartService CartService = new CartService();
	CartDAO CartDAO = new CartDAO();
	CartVO CartVO = new CartVO();


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

		ArrayList<CartVO> oftList = new ArrayList<CartVO>();
		CartVO oftVO = new CartVO();
		
		if (action == null || action.equals("/list.do")) {
			String mKeyS = request.getParameter("mKey");
			int mKey = 0;
			if (mKeyS != null) {
				mKey = Integer.parseInt(mKeyS);
			}
			;
			
			oftList = CartService.list(mKey);
			request.setAttribute("oftList", oftList);
			nextPage = "/views/6_cart/0_list.jsp";
			
		} else if (action.equals("/list.do")) {
		//	oftList = CartService.list();
			request.setAttribute("oftList", oftList);
			nextPage = "/views/6_cart/0_list.jsp";

		} else if (action.equals("/addForm.do")) {
			nextPage = "/views/6_cart/1_addForm.jsp";
		} else if (action.equals("/addFormRent.do")) {
			nextPage = "/views/6_cart/1_addFormRent.jsp";
			
			
			
		} else if (action.equals("/add.do")) {
			String cartKeyS = request.getParameter("cartKey");
			int cartKey = 0;
			if (cartKeyS != null) {
				cartKey = Integer.parseInt(cartKeyS);
			}
			;
			String cartCntS = request.getParameter("cartCnt");
			int cartCnt = 0;
			if (cartCntS != null) {
				cartCnt = Integer.parseInt(cartCntS);
			}
			;
			String cartPriceS = request.getParameter("cartPrice");
			int cartPrice = 0;
			if (cartPriceS != null) {
				cartPrice = Integer.parseInt(cartPriceS);
			}
			;
			String mKeyS = request.getParameter("mKey");
			int mKey = 0;
			if (mKeyS != null) {
				mKey = Integer.parseInt(mKeyS);
			}
			;
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;
			String rentalKeyS = request.getParameter("rentalKey");
			int rentalKey = 0;
			if (rentalKeyS != null) {
				rentalKey = Integer.parseInt(rentalKeyS);
			}
			;
			String cusKeyS = request.getParameter("cusKey");
			int cusKey = 0;
			if (cusKeyS != null) {
				cusKey = Integer.parseInt(cusKeyS);
			}
			;
			String lecKeyS = request.getParameter("lecKey");
			int lecKey = 0;
			if (lecKeyS != null) {
				lecKey = Integer.parseInt(lecKeyS);
			}
			;
			String requKeyS = request.getParameter("requKey");
			int requKey = 0;
			if (requKeyS != null) {
				requKey = Integer.parseInt(requKeyS);
			}
			;
			

			CartVO off = new CartVO(
					cartKey,
					"",
					cartCnt,
					cartPrice,
					mKey,
					officialKey,
					rentalKey,
					cusKey,
					lecKey,
					requKey);


			CartService.add(off);
			
			nextPage="/cart/list.do";

			
		} else if (action.equals("/view.do")) {
			String cartKeyS = request.getParameter("cartKey");
			int cartKey = 0;
			if (cartKeyS != null) {
				cartKey = Integer.parseInt(cartKeyS);
			}
			;
			
			oftVO= CartService.view(cartKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/6_cart/3_detail.jsp";

			
			
			
		} else if (action.equals("/modForm.do")) {
			String cartKeyS = request.getParameter("cartKey");
			int cartKey = 0;
			if (cartKeyS != null) {
				cartKey = Integer.parseInt(cartKeyS);
			}
			;
			
			oftVO = CartService.view(cartKey);
			request.setAttribute("oftVO", oftVO);
			nextPage = "/views/6_cart/2_modForm.jsp";
			

		} else if (action.equals("/mod.do")) {

			
			String cartKeyS = request.getParameter("cartKey");
			int cartKey = 0;
			if (cartKeyS != null) {
				cartKey = Integer.parseInt(cartKeyS);
			}
			;
			String cartCntS = request.getParameter("cartCnt");
			int cartCnt = 0;
			if (cartCntS != null) {
				cartCnt = Integer.parseInt(cartCntS);
			}
			;
			String cartPriceS = request.getParameter("cartPrice");
			int cartPrice = 0;
			if (cartPriceS != null) {
				cartPrice = Integer.parseInt(cartPriceS);
			}
			;
			String mKeyS = request.getParameter("mKey");
			int mKey = 0;
			if (mKeyS != null) {
				mKey = Integer.parseInt(mKeyS);
			}
			;
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;
			String rentalKeyS = request.getParameter("rentalKey");
			int rentalKey = 0;
			if (rentalKeyS != null) {
				rentalKey = Integer.parseInt(rentalKeyS);
			}
			;
			String cusKeyS = request.getParameter("cusKey");
			int cusKey = 0;
			if (cusKeyS != null) {
				cusKey = Integer.parseInt(cusKeyS);
			}
			;
			String lecKeyS = request.getParameter("lecKey");
			int lecKey = 0;
			if (lecKeyS != null) {
				lecKey = Integer.parseInt(lecKeyS);
			}
			;
			String requKeyS = request.getParameter("requKey");
			int requKey = 0;
			if (requKeyS != null) {
				requKey = Integer.parseInt(requKeyS);
			}
			;
			
			
			

			CartVO off = new CartVO(
					cartKey,
					"",
					cartCnt,
					cartPrice,
					mKey,
					officialKey,
					rentalKey,
					cusKey,
					lecKey,
					requKey);

			

			CartService.mod(off);
			request.setAttribute("oft", off);
			
			
			nextPage="/cart/list.do";

			
		} else if (action.equals("/del.do")) {
			String officialKeyS = request.getParameter("officialKey");
			int officialKey = 0;
			if (officialKeyS != null) {
				officialKey = Integer.parseInt(officialKeyS);
			}
			;
			CartService.del(officialKey);
			nextPage = "/cart/list.do";
			
			
			
		} else {
			String mKeyS = request.getParameter("mKey");
			int mKey = 0;
			if (mKeyS != null) {
				mKey = Integer.parseInt(mKeyS);
			}
			;
			
			oftList = CartService.list(mKey);
			request.setAttribute("oftList", oftList);

			nextPage = "/views/6_cart/0_list.jsp";		
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
