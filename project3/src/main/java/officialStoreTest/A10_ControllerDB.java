package officialStoreTest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


/**
 * Servlet implementation class A09_ControllerDB
 */
@WebServlet(name = "deptAjax.do", urlPatterns = { "/deptAjax.do" })
public class A10_ControllerDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A10_ControllerDB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청값.
		String officialPname = request.getParameter("officialPname");	if(officialPname==null) officialPname="";
		
		
		
		// 2. model : db 데이터 json문자열 
		OfficialStoreTestDAO officialStoreTestDAO = new OfficialStoreTestDAO();
		Gson gson = new Gson();
		String deptJson = gson.toJson(officialStoreTestDAO.Search01(officialPname));
		System.out.println(deptJson);
		
		// 3. json 문자열 처리..
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(deptJson);
		
		
	}
}