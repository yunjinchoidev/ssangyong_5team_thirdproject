package customStore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fantasize.BoardVO;


public class CustomStoreDAO {
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
	public ArrayList<CustomStoreVO> Alllist() {
		ArrayList<CustomStoreVO> officiallist = new ArrayList<CustomStoreVO>();
		String sql = "SELECT *\r\n"
				+ "FROM CustomStoreT\r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				CustomStoreVO off = new CustomStoreVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),
						rs.getInt(9), rs.getString(10));
				
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
	public ArrayList<CustomStoreVO> Search01(String officialPname) {
		ArrayList<CustomStoreVO> officiallist = new ArrayList<CustomStoreVO>();
		String sql = "SELECT *\r\n"
				+ "FROM CustomStoreT\r\n"
				+ "WHERE cusPname LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, officialPname);
			rs = pstmt.executeQuery();
			int rowNum =1;
			System.out.println("공식스토어 검색");
			while( rs.next() ) {
				CustomStoreVO off = new CustomStoreVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),
						rs.getInt(9), rs.getString(10));
				
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
	public CustomStoreVO searchKey(int officialKey) {
		ArrayList<CustomStoreVO> searchlist = new ArrayList<CustomStoreVO>();
		String sql = "SELECT *\r\n" + 
					"FROM CustomStoreT\r\n" + 
					"WHERE cusKey=? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, officialKey);
			
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				CustomStoreVO off = new CustomStoreVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),
						rs.getInt(9), rs.getString(10));
				
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
		String sql = "SELECT max(cusKey)\r\n" + 
				"FROM CustomStoreT\r\n";
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
	public void insert(CustomStoreVO ins) {
		int num = maxBdKey();
		
		String sql = "INSERT INTO CustomStoreT VALUES (?,?,?,to_date(sysdate,'YYYY/MM/DD'),null,?,?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			pstmt.setString(2, ins.getCusPname());
			pstmt.setString(3, ins.getCusExplain());
			//
			//pstmt.setString(4, ins.getCusModiDateS());
			pstmt.setInt(4, ins.getCusStock());
			pstmt.setInt(5, ins.getCusDiscount());
			pstmt.setInt(6, ins.getmKey());
			pstmt.setInt(7, ins.getProCateKey());
			pstmt.setString(8, ins.getFileKey());
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
	public void update(CustomStoreVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update CustomStoreT\r\n"
					+ "			SET cusPname=?,\r\n"
					+ "				cusExplain = ?,\r\n"
					+ "				cusModiDate = to_date(sysdate,'YYYY/MM/DD'),\r\n"
					+ "				cusStock = ?,\r\n"
					+ "				cusDiscount = ?,\r\n"
					+ "				mKey = ?,\r\n"
					+ "				proCateKey = ?,\r\n"
					+ "				fileKey = ?\r\n"
					+ "		   where cusKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getCusPname());
			pstmt.setString(2, upt.getCusExplain());
			//pstmt.setDate(3, 2021/1/21);
			pstmt.setInt(3, upt.getCusStock());
			pstmt.setInt(4, upt.getCusDiscount());
			pstmt.setInt(5, upt.getmKey());
			pstmt.setInt(6, upt.getProCateKey());
			pstmt.setString(7, upt.getFileKey());
			pstmt.setInt(8, upt.getCusKey());
			
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
				+ "from CustomStoreT \r\n"
				+ "where cusKey=?\r\n";
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
		CustomStoreDAO DAO = new CustomStoreDAO();
		
		DAO.insert(new CustomStoreVO(1, "A", "A", "2021/12/12", "2021/12/12", 1, 1,201, 601, "401"));
		//DAO.update(new CustomStoreVO(1, "A(수정)", "A", "2021/12/12", "2021/12/12", 1, 1,201, 601, "401"));
		//DAO.delete(3);
		
		for(CustomStoreVO of : DAO.Alllist()) {
			System.out.println(of.getCusKey()+of.getCusPname());
		}
		
		
		
		
	}
}
