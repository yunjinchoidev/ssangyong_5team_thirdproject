package cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fantasize.BoardVO;


public class CartDAO {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;	
	
	public void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 예외:"+e.getMessage());
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott","tiger");
		System.out.println("DB 접속 성공!!");
	}
	
	
	
	
	
	// 전체 명단
	public ArrayList<CartVO> Alllist() {
		ArrayList<CartVO> officiallist = new ArrayList<CartVO>();
		String sql = "SELECT *\r\n"
				+ "FROM CartT\r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				CartVO off = new CartVO(
						rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),
						rs.getInt(9), rs.getInt(10));
				
				officiallist.add(off);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if(rs!=null) rs = null; // 강제로 자원해제..
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		return officiallist;
	}
	
	
	
	// 지원자 이름으로 검색
	public ArrayList<CartVO> Search01(String officialPname) {
		ArrayList<CartVO> officiallist = new ArrayList<CartVO>();
		String sql = "SELECT *\r\n"
				+ "FROM CartT\r\n"
				+ "WHERE officialPname LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, officialPname);
			rs = pstmt.executeQuery();
			int rowNum =1;
			System.out.println("공식스토어 검색");
			while( rs.next() ) {
				CartVO off = new CartVO(
						rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),
						rs.getInt(9), rs.getInt(10));
				
				officiallist.add(off);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if(rs!=null) rs = null; // 강제로 자원해제..
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		return officiallist;
	}
	


	
	
	
	
	
	
	
	
	//고유번호로 조회//
	public CartVO searchKey(int officialKey) {
		ArrayList<CartVO> searchlist = new ArrayList<CartVO>();
		String sql = "SELECT *\r\n" + 
					"FROM CartT\r\n" + 
					"WHERE officialKey=? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, officialKey);
			
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				CartVO off = new CartVO(
						rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),
						rs.getInt(9), rs.getInt(10));
				
				searchlist.add(off);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if(rs!=null) rs = null; // 강제로 자원해제..
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		return searchlist.get(0);
	}
	

	
	/*맥스번호*/
	private int maxBdKey() {
		int there=0;
		String sql = "SELECT max(cartKey)\r\n" + 
				"FROM CartT\r\n";
		System.out.println("최고 번호 조회");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				there = rs.getInt(1)+1;
			}
			System.out.println(there);
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			closeRsc();
		}
		return there;
	}

	
	
	
	
		
	
	
	
	
	/*insert*/
	public void insert(CartVO ins) {
		int num = maxBdKey();
		
		String sql = "INSERT INTO CartT VALUES (?,to_date(sysdate,'YYYY/MM/DD'),?,?,?,?,?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			pstmt.setInt(2, ins.getCartCnt());
			pstmt.setInt(3, ins.getCartPrice());
			pstmt.setInt(4, ins.getmKey());
			pstmt.setInt(5, ins.getOfficialKey());
			pstmt.setInt(6, ins.getRentalKey());
			pstmt.setInt(7, ins.getCusKey());
			pstmt.setInt(8, ins.getLecKey());
			pstmt.setInt(9, ins.getRequKey());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close(); 
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			closeRsc();
		}
	}
	
	
	/*5[1단계:확인] 5. A06_DatabaseDao pstmt로 사원정보를 수정/삭제하는 기는 메서드를 만드세요.*/
	public void update(CartVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update CartT\r\n"
					+ "			SET	cartCnt = ?,\r\n"
					+ "				cartPrice = ?,\r\n"
					+ "				mKey = ?,\r\n"
					+ "				officialKey = ?,\r\n"
					+ "				rentalKey = ?,\r\n"
					+ "				cusKey = ?,\r\n"
					+ "				lecKey = ?,\r\n"
					+ "				requKey = ?\r\n"
					+ "		   where cartKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			
			pstmt.setInt(1, upt.getCartCnt());
			pstmt.setInt(2, upt.getCartPrice());
			//pstmt.setDate(3, 2021/1/21);
			pstmt.setInt(3, upt.getmKey());
			pstmt.setInt(4, upt.getOfficialKey());
			pstmt.setInt(5, upt.getRentalKey());
			pstmt.setInt(6, upt.getCusKey());
			pstmt.setInt(7, upt.getLecKey());
			pstmt.setInt(8, upt.getRequKey());
			pstmt.setInt(9, upt.getCartKey());
			
			pstmt.executeUpdate(); 
			
			System.out.println(upt.getCartKey()+": 수정완료");
			con.commit();
			pstmt.close();
			con.close();
			pstmt.close(); 
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			closeRsc();
		}
	}

	
	
	/*삭제 기능 메서드*/
	public void delete(int officialKey) {
		String sql = "delete \r\n"
				+ "from CartT \r\n"
				+ "where cartKey=?\r\n";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, officialKey);
			pstmt.executeUpdate();
			con.commit();
			pstmt.close(); 
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			closeRsc();
		}
	}
	
	
	
	
	void closeRsc() {
		if(rs!=null) { 
			try {
				rs.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		if(pstmt!=null) { 
			try {
				pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		if(stmt!=null) { 
			try {
				stmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		if(con!=null) { 
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}		
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CartDAO DAO = new CartDAO();
		//DAO.insert(new CartVO(1, "", 1, 1000, 201,401,0,0,0,0));
		DAO.update(new CartVO(1, "", 1, 2000, 201,401,0,0,0,0));
		
		for(CartVO of : DAO.Alllist()) {
			System.out.println(of.getCartKey());
		}
		
		
		
		
	}
}
