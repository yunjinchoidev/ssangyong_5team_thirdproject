package monthFantasy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MonthFantasyDAO {
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
	public ArrayList<MonthFantasyVO> MonthFantasylist() {
		ArrayList<MonthFantasyVO> mflist = new ArrayList<MonthFantasyVO>();
		String sql = "SELECT * \r\n"
				+ "FROM MonthFantasy \r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				mflist.add(new MonthFantasyVO(rs.getInt(1),rs.getString(2),
						rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),
						rs.getString(7), rs.getInt(8),
						rs.getInt(9)));
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
		return mflist;
	}
	
	// 좋아요 순 정렬
	public ArrayList<MonthFantasyVO> MonthFantasylist02() {
		ArrayList<MonthFantasyVO> mflist = new ArrayList<MonthFantasyVO>();
		String sql = "SELECT * \r\n"
				+ "FROM MonthFantasy \r\n"
				+ "order by Monthindivilikecnt desc";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				mflist.add(new MonthFantasyVO(rs.getInt(1),rs.getString(2),
						rs.getString(3),rs.getString(4),
						rs.getInt(5),rs.getInt(6),
						rs.getString(7), rs.getInt(8),
						rs.getInt(9)));
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
		return mflist;
	}
	
	// 신청 번호로 검색
		public ArrayList<MonthFantasyVO> SearchMonthFantasy(int monthindiviKey) {
			ArrayList<MonthFantasyVO> smflist = new ArrayList<MonthFantasyVO>();
			String sql = "SELECT *\r\n"
					+ "FROM MonthFantasy\r\n"
					+ "WHERE monthindiviKey=?";
			try {
				setConn();
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, monthindiviKey);
				rs = pstmt.executeQuery();
				System.out.println("신청 번호로 검색");
				while( rs.next() ) {
					smflist.add(new MonthFantasyVO(rs.getInt(1),rs.getString(2),
							rs.getString(3),rs.getString(4),
							rs.getInt(5),rs.getInt(6),
							rs.getString(7), rs.getInt(8),
							rs.getInt(9)));
				}
				rs.close();
				pstmt.close();
				con.close();
				System.out.println(smflist.get(0).getMonthindiviKey());
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				if(rs!=null) rs = null; // 강제로 자원해제..
				if(pstmt!=null) pstmt = null;
				if(con!=null) con = null;
			}
			return smflist;
		}
		
		
		// 좋아요 수 구하기
		public int Searchlike(int monthindiviKey) {
			int like=0;
			String sql = "SELECT Monthindivilikecnt\r\n"
					+ "FROM MonthFantasy\r\n"
					+ "WHERE monthindiviKey=?";
			try {
				setConn();
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, monthindiviKey);
				rs = pstmt.executeQuery();
				System.out.println("신청 번호로 검색");
				
				rs.close();
				pstmt.close();
				con.close();
				like=rs.getInt("monthindiviKey");
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				if(rs!=null) rs = null; // 강제로 자원해제..
				if(pstmt!=null) pstmt = null;
				if(con!=null) con = null;
			}
			return like;
		}
		

		
	/*삽입*/
	public void insertMonthFantasy(MonthFantasyVO ins) {
		String sql = "INSERT INTO MonthFantasy VALUES (?,?,?,?,?,?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ins.getMonthindiviKey());
			pstmt.setString(2, ins.getMonthindivicontents());
			pstmt.setString(3, ins.getMonthindivisort());
			pstmt.setString(4, ins.getMonthindivititle());
			pstmt.setInt(5, ins.getMonthindivilikecnt());
			pstmt.setInt(6, ins.getMonthindividonlikecnt());
			pstmt.setString(7, ins.getMonthindiviwriter());
			pstmt.setInt(8, ins.getmKey());
			pstmt.setInt(9, ins.getFileKey());
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
	
	/*수정*/
	public void updateMonthFantasy(MonthFantasyVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update MonthFantasy\r\n"
					+ "			SET Monthindivicontents=?,\r\n"
					+ "				Monthindivisort = ?,\r\n"
					+ "				Monthindivititle = ?,\r\n"
					+ "				Monthindivilikecnt = ?,\r\n"
					+ "				Monthindividonlikecnt = ?,\r\n"
					+ "				Monthindiviwriter = ?,\r\n"
					+ "				mKey = ?,\r\n"
					+ "				FileKey = ?\r\n"
					+ "		   where MonthindiviKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getMonthindivicontents());
			pstmt.setString(2, upt.getMonthindivisort());
			pstmt.setString(3, upt.getMonthindivititle());
			pstmt.setInt(4, upt.getMonthindivilikecnt());
			pstmt.setInt(5, upt.getMonthindividonlikecnt());
			pstmt.setString(6, upt.getMonthindiviwriter());
			pstmt.setInt(7, upt.getmKey());
			pstmt.setInt(8, upt.getFileKey());
			pstmt.setInt(9, upt.getMonthindiviKey());
			
			System.out.println("업데이트 처리 되었습니다.");
			System.out.println(upt.getMonthindivilikecnt());
			System.out.println(upt.getMonthindiviKey());
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
	
	
	
	/*삭제*/
	public void deleteMonthFantasy(int MonthindiviKey) {
		String sql = "delete \r\n"
				+ "from MonthFantasy \r\n"
				+ "where MonthindiviKey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, MonthindiviKey);
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
			MonthFantasyDAO dao = new MonthFantasyDAO();
			dao.SearchMonthFantasy(1);
			dao.updateMonthFantasy(new MonthFantasyVO(1, "내용1",
					"분류1", "전장의 지배자", 0, 0, "작가지망생11", 201, 301));
			
	}

}
