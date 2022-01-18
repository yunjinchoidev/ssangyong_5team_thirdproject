package fvOrder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fantasize.BoardVO;


public class FvOrderDAO {
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
	public ArrayList<FvOrderVO> Alllist() {
		ArrayList<FvOrderVO> officiallist = new ArrayList<FvOrderVO>();
		String sql = "SELECT *\r\n"
				+ "FROM FvOrderTT\r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				FvOrderVO off = new FvOrderVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getInt(10),
						rs.getString(11));
				
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
	public ArrayList<FvOrderVO> Search01(String officialPname) {
		ArrayList<FvOrderVO> officiallist = new ArrayList<FvOrderVO>();
		String sql = "SELECT *\r\n"
				+ "FROM FvOrderTT\r\n"
				+ "WHERE orderstatus LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, officialPname);
			rs = pstmt.executeQuery();
			System.out.println("공식스토어 검색");
			while( rs.next() ) {
				FvOrderVO off = new FvOrderVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getInt(10),
						rs.getString(11));
				
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
	public FvOrderVO searchKey(int officialKey) {
		ArrayList<FvOrderVO> searchlist = new ArrayList<FvOrderVO>();
		String sql = "SELECT *\r\n" + 
					"FROM FvOrderTT\r\n" + 
					"WHERE orderKey=? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, officialKey);
			
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				FvOrderVO off = new FvOrderVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getInt(9),
						rs.getInt(10),
						rs.getString(11));
				
				searchlist.add(off);
			};
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
		String sql = "SELECT max(orderKey)\r\n" + 
				"FROM FvOrderTT\r\n";
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
	public void insert(FvOrderVO ins) {
		int num = maxBdKey();
		
		String sql = "INSERT INTO FvOrderTT VALUES (?,?,to_date(sysdate,'YYYY/MM/DD'),?,?,?,?,?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			pstmt.setString(2, ins.getSellerId());
			pstmt.setString(3, ins.getInstallType());
			pstmt.setInt(4, ins.getOrderPrice());
			pstmt.setString(5, ins.getPayType());
			pstmt.setString(6, ins.getOrderEmail());
			pstmt.setString(7, ins.getCardType());
			pstmt.setInt(8, ins.getCartKey());
			pstmt.setInt(9, ins.getCartKey());
			pstmt.setString(10, ins.getOrderstatus());
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
	public void update(FvOrderVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update FvOrderTT\r\n"
					+ "			SET sellerId=?,\r\n"
					+ "				installType=?,\r\n"
					+ "				orderPrice = ?,\r\n"
					+ "				payType = ?,\r\n"
					+ "				orderEmail = ?,\r\n"
					+ "				cardType = ?,\r\n"
					+ "				cartKey = ?,\r\n"
					+ "				mKey = ?\r\n"
					+ "		   where orderKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getSellerId());
			pstmt.setString(2, upt.getInstallType());
			pstmt.setInt(3, upt.getOrderPrice());
			pstmt.setString(4, upt.getPayType());
			pstmt.setString(5, upt.getOrderEmail());
			pstmt.setString(6, upt.getCardType());
			pstmt.setInt(7, upt.getCartKey());
			pstmt.setInt(8, upt.getmKey());
			pstmt.setInt(9, upt.getOrderKey());
			
			pstmt.executeUpdate(); 
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
				+ "from FvOrderTT \r\n"
				+ "where orderKey=?\r\n";
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
		FvOrderDAO DAO = new FvOrderDAO();
		//DAO.insert(new FvOrderVO(1, "fv", "", "무료", 10000, "카드", "aaaa@naver.com", "신용카드", 1, 1, "배송중"));
		//DAO.insert(new FvOrderVO(2, "fv", "", "무료", 20000, "현금", "cyj0000@naver.com", "현금", 1, 1, "배송완료"));
		//DAO.update(new FvOrderVO(2, "fv", "", "무료", 20000, "현금", "cyj1234@naver.com", "현금", 1, 1, "배송완료"));
		
		for(FvOrderVO of : DAO.Alllist()) {
			System.out.println(of.getOrderEmail());
		}
		
		
		
		
	}
}
