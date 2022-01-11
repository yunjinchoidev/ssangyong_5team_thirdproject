package store.offictialStore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class OfficialStoreDAO {
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
	public ArrayList<OfficialStoreVO> Alllist() {
		ArrayList<OfficialStoreVO> officiallist = new ArrayList<OfficialStoreVO>();
		String sql = "SELECT *\r\n"
				+ "FROM OfficialStore\r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				OfficialStoreVO off = new OfficialStoreVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8));
				
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
	public ArrayList<OfficialStoreVO> Search01(String taname) {
		ArrayList<OfficialStoreVO> officiallist = new ArrayList<OfficialStoreVO>();
		String sql = "SELECT *\r\n"
				+ "FROM OfficialStore\r\n"
				+ "WHERE taname LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, taname);
			rs = pstmt.executeQuery();
			int rowNum =1;
			System.out.println("사원명 검색");
			while( rs.next() ) {
				OfficialStoreVO off = new OfficialStoreVO(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8));
				
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
	

	
	
	/*insert*/
	public void insertOfficialStoreVOPre(OfficialStoreVO ins) {
		String sql = "INSERT INTO OfficialStore VALUES (?,?,?,?,?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ins.getOfficialKey());
			pstmt.setString(2, ins.getOfficialPname());
			pstmt.setString(3, ins.getOfficialExplain());
			pstmt.setString(4, ins.getOfficialRegDateS());
			pstmt.setInt(5, ins.getOfficialnventory());
			pstmt.setInt(6, ins.getOfficialDiscount());
			pstmt.setInt(7, ins.getProcateKey());
			pstmt.setInt(8, ins.getFileKey());
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
	public void updateOfficialStoreVOPre(OfficialStoreVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update OfficialStore\r\n"
					+ "			SET offictialPname=?,\r\n"
					+ "				OfficialExplain = ?,\r\n"
					+ "				OfficialRegDate = to_date(sysdate,'YYYY/MM/DD'),\r\n"
					+ "				Officialnventory = ?,\r\n"
					+ "				OfficialDiscount = ?,\r\n"
					+ "				proCateKey = ?,\r\n"
					+ "				fileKey = ?,\r\n"
					+ "		   where OfficialKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getOfficialPname());
			pstmt.setString(2, upt.getOfficialExplain());
			//pstmt.setDate(3, 2021/1/21);
			pstmt.setInt(3, upt.getOfficialnventory());
			pstmt.setInt(4, upt.getOfficialDiscount());
			pstmt.setInt(5, upt.getProcateKey());
			pstmt.setInt(6, upt.getFileKey());
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
	public void deleteOfficialStoreVOPre(int officialKey) {
		String sql = "delete \r\n"
				+ "from OfficialStore \r\n"
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
		OfficialStoreDAO DAO = new OfficialStoreDAO();
		DAO.insertOfficialStoreVOPre(new OfficialStoreVO(201, "절대반지201", "절대반지201입니다.", "2022-01-10", 201, 201, 201,201));
		DAO.insertOfficialStoreVOPre(new OfficialStoreVO(202, "절대반지202", "절대반지202입니다.", "2022-01-10", 202, 202, 202,202));
		DAO.insertOfficialStoreVOPre(new OfficialStoreVO(203, "절대반지203", "절대반지203입니다.", "2022-01-10", 203, 203, 203,203));
		DAO.insertOfficialStoreVOPre(new OfficialStoreVO(204, "절대반지204", "절대반지204입니다.", "2022-01-10", 204, 204, 204,204));
		DAO.insertOfficialStoreVOPre(new OfficialStoreVO(205, "절대반지205", "절대반지205입니다.", "2022-01-10", 205, 205, 205,205));
		
		
		
		
	}
}
