package readingClub;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class ReadingClubDAO {

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
	public ArrayList<ReadingClubVO> list() {
		ArrayList<ReadingClubVO> conlist = new ArrayList<ReadingClubVO>();
		String sql = "SELECT *\r\n" + 
					"FROM ReadingClub\r\n";
					
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				conlist.add(new ReadingClubVO(
						rs.getInt(1), rs.getString(2), 
						rs.getInt(3), rs.getString(4),
						rs.getInt(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8)
						,rs.getInt(9)));
			}
			System.out.println("전체 조회 완료");
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

	
	

	
	
	//독서클럽 명으로 조회//
	public ArrayList<ReadingClubVO> searchListName(String rcName) {
		ArrayList<ReadingClubVO> searchlist = new ArrayList<ReadingClubVO>();
		String sql = "SELECT *\r\n" + 
				"FROM ReadingClub\r\n" + 
				"WHERE rcName like '%'||?||'%' ";
		System.out.println("독서클럽명으로 실행");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rcName);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new ReadingClubVO(
						rs.getInt(1), rs.getString(2), 
						rs.getInt(3), rs.getString(4),
						rs.getInt(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8)
						,rs.getInt(9)));
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
	
	
	
	
	
	
	
	
	//독서클럽 고유번호로 조회//
	public ArrayList<ReadingClubVO> searchListKey(int rcKey) {
		ArrayList<ReadingClubVO> searchlist = new ArrayList<ReadingClubVO>();
		String sql = "SELECT *\r\n" + 
					"FROM ReadingClub\r\n" + 
					"WHERE rcKey=? ";
		System.out.println("고유번호로 조회");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rcKey);

			
			
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new ReadingClubVO(
						rs.getInt(1), rs.getString(2), 
						rs.getInt(3), rs.getString(4),
						rs.getInt(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8)
						,rs.getInt(9)));
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
	public void insertrc(ReadingClubVO ins) {
		String sql="INSERT INTO readingclub VALUES (?,?,?,to_date(?,'YYYY/MM/DD'),?,?,?,?,?)";
		
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ins.getRcKey());
			pstmt.setString(2, ins.getRcName());
			pstmt.setInt(3, ins.getRcCnt());
			pstmt.setString(4, ins.getRcStartDateS());
			pstmt.setInt(5, ins.getRcOperTime());
			pstmt.setInt(6, ins.getRcPrice());
			pstmt.setString(7, ins.getRcContents());
			pstmt.setInt(8, ins.getmKey());
			pstmt.setInt(9, ins.getFileKey());
			
			System.out.println("insert완료");
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
	public void updatelt(ReadingClubVO upt) {
		String sql = "update readingclub\r\n"
				+ "			SET rcName=?,\r\n"
				+ "				rcCnt = ?,\r\n"
				+ "				rcStartDate = to_date(?,'YYYY/MM/DD'),\r\n"
				+ "				rcOperTime = ?,\r\n"
				+ "				rcPrice = ?,\r\n"
				+ "				rcContents = ?,\r\n"
				+ "				mKey = ?,\r\n"
				+ "				fileKey = ?\r\n"
				+ "		   where rcKey = ?";
		
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getRcName());
			pstmt.setInt(2, upt.getRcCnt());
			pstmt.setString(3, upt.getRcStartDateS());
			pstmt.setInt(4, upt.getRcOperTime());
			pstmt.setInt(5, upt.getRcPrice());
			pstmt.setString(6, upt.getRcContents());
			pstmt.setInt(7, upt.getmKey());
			pstmt.setInt(8, upt.getFileKey());
			pstmt.setInt(9, upt.getRcKey());
			
			
			
			System.out.println(upt.getRcKey()+"수정을 완료했습니다.");
			
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

	/* 삭제 */
	public void deleterc(int rcKey) {
		String sql = "delete \r\n"
				+ "from readingclub \r\n"
				+ "where rcKey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rcKey);
			pstmt.executeUpdate();
			System.out.println(rcKey + " : 삭제완료");
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
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
			ReadingClubDAO dao = new ReadingClubDAO();
			dao.insertrc(new ReadingClubVO(4, "클럽1", 1, "2021/01/15", 3, 2000, "내용1", 1, 1));
			//dao.updatelt(new ReadingClubVO(2, "클럽2", 1, "2021/01/15", 3, 2000, "내용1", 201, 201));
			//dao.updatelt(new ReadingClubVO(3, "클럽3", 1, "2021/01/15", 3, 2000, "내용1", 201, 201));
			//dao.updatelt(new ReadingClubVO(4, "클럽4", 1, "2021/01/15", 3, 2000, "내용1", 201, 201));
			//dao.updatelt(new ReadingClubVO(6, "클럽4", 1, "2021/01/15", 3, 2000, "내용1", 201, 201));
			//dao.deleterc(8);
			//dao.insertrc(new ReadingClubVO(7, "클럽4", 1, "2021/01/15", 3, 2000, "내용1", 201, 201));
			for(ReadingClubVO rc : dao.list()) {
				System.out.println(rc.getRcName());
				System.out.println(rc.getRcKey());
				System.out.println(rc.getRcStartDateS());
			}
	
	}


}
