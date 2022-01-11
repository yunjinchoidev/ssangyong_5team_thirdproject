package lord;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class LordTestDao {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("예외 처리:" + e.getMessage());
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("접속 성공");
	}

	void closeRsc() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

	// 전체 조회
	public ArrayList<LordTestVO> ltlist() {
		ArrayList<LordTestVO> sallist = new ArrayList<LordTestVO>();
		String sql = "SELECT *\r\n"
				+ "FROM LordTest\r\n";
		
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int rowNum =1;
			System.out.println("사원명 검색");
			while( rs.next() ) {
				sallist.add(new LordTestVO(rs.getInt(1), rs.getInt(2), rs.getInt(3)));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if(rs!=null) rs = null;
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		return sallist;
	}

	
	
	//등급으로조회//
	public ArrayList<LordTestVO> SearchltList(int grade) {
		ArrayList<LordTestVO> searchlist = new ArrayList<LordTestVO>();
		String sql = "SELECT *\r\n"
				+ "FROM LordTestVO\r\n"
				+ "WHERE grade = ?";	
		System.out.println("# pstmt 실행 #");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, grade);
			
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				searchlist.add(new LordTestVO(rs.getInt(1), rs.getInt(2), rs.getInt(3)));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			closeRsc();
		}
		return searchlist;
	}

	
	
	//삽입//
	public void insertlt(LordTestVO ins) {
		String sql = "INSERT INTO LordTest VALUES (?,?,?)";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getLordTestKey());
			pstmt.setInt(2, ins.getmKey());
			pstmt.setInt(3, ins.getSumoftest());
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

	
	
	
	/* 수정 */
	public void updatelt(LordTestVO upt) {
		try {
			setConn();
			con.setAutoCommit(false);

			String sql = "update LordTest\r\n" + 
							"SET mkey=?,\r\n" + 
							" sumoftest= ?,\r\n"+
							"where lordtestkey = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, upt.getLordTestKey());
			pstmt.setInt(2, upt.getmKey());
			pstmt.setInt(3, upt.getSumoftest());
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

	/* 삭제 */
	public void deletelt(int lordtestkey) {
		String sql = "delete \r\n" + 
					"from LordTest \r\n" + 
				"where lordtestkey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, lordtestkey);
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
	


	public static void main(String[] args) {
		LordTestDao dao = new LordTestDao();
		System.out.println("# ArrayList<LordTestVO>를 통한 화면 출력 #");
		
		dao.insertlt(new LordTestVO(201, 201, 10));
		dao.insertlt(new LordTestVO(202, 202, 10));
		dao.insertlt(new LordTestVO(203, 203, 10));
		dao.insertlt(new LordTestVO(204, 204, 10));
		
	}
}