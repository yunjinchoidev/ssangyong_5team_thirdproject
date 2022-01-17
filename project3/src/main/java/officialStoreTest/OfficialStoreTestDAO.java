package officialStoreTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fantasize.BoardVO;


public class OfficialStoreTestDAO {
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
	public ArrayList<OfficialStoreTestVO> Alllist() {
		ArrayList<OfficialStoreTestVO> officiallist = new ArrayList<OfficialStoreTestVO>();
		String sql = "SELECT *\r\n"
				+ "FROM OfficialStoreT\r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				OfficialStoreTestVO off = new OfficialStoreTestVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8));
				
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
	public ArrayList<OfficialStoreTestVO> Search01(String officialPname) {
		ArrayList<OfficialStoreTestVO> officiallist = new ArrayList<OfficialStoreTestVO>();
		String sql = "SELECT *\r\n"
				+ "FROM OfficialStoreT\r\n"
				+ "WHERE officialPname LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, officialPname);
			rs = pstmt.executeQuery();
			int rowNum =1;
			System.out.println("공식스토어 검색");
			while( rs.next() ) {
				OfficialStoreTestVO off = new OfficialStoreTestVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8));
				
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
	public OfficialStoreTestVO searchKey(int officialKey) {
		ArrayList<OfficialStoreTestVO> searchlist = new ArrayList<OfficialStoreTestVO>();
		String sql = "SELECT *\r\n" + 
					"FROM officialStoreT\r\n" + 
					"WHERE officialKey=? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, officialKey);
			
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				OfficialStoreTestVO off = new OfficialStoreTestVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getString(8));
				
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
		String sql = "SELECT max(officialKey)\r\n" + 
				"FROM officialStoreT\r\n";
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
	public void insert(OfficialStoreTestVO ins) {
		int num = maxBdKey();
		
		String sql = "INSERT INTO OfficialStoreT VALUES (?,?,?,to_date(sysdate,'YYYY/MM/DD'),?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			pstmt.setString(2, ins.getOfficialPname());
			pstmt.setString(3, ins.getOfficialExplain());
			pstmt.setInt(4, ins.getOfficialInventory());
			pstmt.setInt(5, ins.getOfficialDiscount());
			pstmt.setInt(6, ins.getProCateKey());
			pstmt.setString(7, ins.getFileKey());
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
	public void update(OfficialStoreTestVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update OfficialStoreT\r\n"
					+ "			SET offictialPname=?,\r\n"
					+ "				OfficialExplain = ?,\r\n"
					+ "				OfficialRegDate = to_date(sysdate,'YYYY/MM/DD'),\r\n"
					+ "				OfficialInventory = ?,\r\n"
					+ "				OfficialDiscount = ?,\r\n"
					+ "				proCateKey = ?,\r\n"
					+ "				fileKey = ?,\r\n"
					+ "		   where OfficialKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getOfficialPname());
			pstmt.setString(2, upt.getOfficialExplain());
			//pstmt.setDate(3, 2021/1/21);
			pstmt.setInt(3, upt.getOfficialInventory());
			pstmt.setInt(4, upt.getOfficialDiscount());
			pstmt.setInt(5, upt.getProCateKey());
			pstmt.setString(6, upt.getFileKey());
			pstmt.setInt(7, upt.getOfficialKey());
			
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
				+ "from OfficialStoreT \r\n"
				+ "where officialKey=?\r\n";
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
		OfficialStoreTestDAO DAO = new OfficialStoreTestDAO();
		//DAO.insert(new OfficialStoreTestVO(402, "절대반지201", "절대반지201입니다.", "", 201, 201, 401,"401"));
		
		for(OfficialStoreTestVO of : DAO.Alllist()) {
			System.out.println(of.getOfficialKey());
		}
		
		
		
		
	}
}
