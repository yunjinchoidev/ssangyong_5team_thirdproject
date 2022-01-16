package literacyContest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class LiteraryContestDAO {

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
	public ArrayList<LiteraryContestVO> contestList() {
		ArrayList<LiteraryContestVO> conlist = new ArrayList<LiteraryContestVO>();
		String sql = "SELECT *\r\n" + 
					"FROM LiteraryContest\r\n";
					
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int rowNum = 1;
			System.out.println("사원명 검색");
			while (rs.next()) {
				conlist.add(new LiteraryContestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8),
						rs.getInt(9)));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if (rs != null)
				rs = null;
			if (pstmt != null)
				pstmt = null;
			if (con != null)
				con = null;
		}
		return conlist;
	}

	
	
	//분류로 조회//
	public ArrayList<LiteraryContestVO> SearchltList(String literSort) {
		ArrayList<LiteraryContestVO> searchlist = new ArrayList<LiteraryContestVO>();
		String sql = "SELECT *\r\n" + "FROM LiteraryContest\r\n" + "WHERE literSort like '%'||?||'%' ";
		System.out.println("# pstmt 실행 #");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, literSort);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new LiteraryContestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8),
						rs.getInt(9)));
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

	
	
	public ArrayList<LiteraryContestVO> SearchbyliterKey(int literKey) {
		ArrayList<LiteraryContestVO> searchlist = new ArrayList<LiteraryContestVO>();
		String sql = "SELECT *\r\n" + "FROM LiteraryContest\r\n" + "WHERE literKey like '%'||?||'%' ";
		System.out.println("# pstmt 실행 #");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, literKey);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new LiteraryContestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8),
						rs.getInt(9)));
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

	
	
	
	// 삽입//
	public void insertlt(LiteraryContestVO ins) {
		String sql = "INSERT INTO LiteraryContest VALUES (?,?,?,?,?,?,to_date(?,'YYYY/MM/DD'),?,?)";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getLiterKey());
			pstmt.setString(2, ins.getLiterTitle());			
			pstmt.setString(3, ins.getLiterContents());			
			pstmt.setString(4, ins.getLiterSort());			
			pstmt.setString(5, ins.getLiterCareer());			
			pstmt.setInt(6,ins.getLiterProductionDate());		
			pstmt.setString(7, ins.getLiterSubmissionDateS());			
			pstmt.setInt(8,ins.getmKey());		
			pstmt.setInt(9,ins.getFileKey());
			
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
	public void updatelt(LiteraryContestVO upt) {
		try {
			setConn();
			con.setAutoCommit(false);

			String sql = "update LiteraryContest \r\n" +
					"SET literTitle=?,\r\n" + 
					" literContents = ?,\r\n"+
					" literSort= ?,\r\n"+
					" literCareer= ?,\r\n"+
					" literProductionDate= ?,\r\n"+
					" literSubmissionDate= to_date(?,'YYYY/MM/DD'),\r\n"+
					" mKey= ?,\r\n"+
					" fileKey= ?\r\n"+
					"where literKey = ?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getLiterTitle());
			pstmt.setString(2, upt.getLiterContents());
			pstmt.setString(3, upt.getLiterSort());
			pstmt.setString(4, upt.getLiterCareer());
			pstmt.setInt(5, upt.getLiterProductionDate());
			pstmt.setString(6, upt.getLiterSubmissionDateS());
			pstmt.setInt(7, upt.getmKey());
			pstmt.setInt(8, upt.getFileKey());
			pstmt.setInt(9, upt.getLiterKey());
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
	public void deletelt(int literkey) {
		String sql = "delete \r\n" + 
					"from LiteraryContest \r\n" + 
					"where Literkey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, literkey);
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
		LiteraryContestDAO dao = new LiteraryContestDAO();
		dao.deletelt(1);
		dao.insertlt(new LiteraryContestVO(33, "공모1", "내용1", "분류1", "3년", 3, "2021/01/12", 201, 201));
		dao.insertlt(new LiteraryContestVO(333, "공모2", "내용2", "분류2", "2년", 3, "2021/01/12", 202, 202));
		dao.updatelt(new LiteraryContestVO(2, "공모1", "내용1", "분류1", "333년", 3, "2021/01/12", 201, 201));

	}
}