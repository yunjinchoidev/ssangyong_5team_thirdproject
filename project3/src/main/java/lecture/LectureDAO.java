package lecture;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class LectureDAO {

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
		public ArrayList<LectureVO> lecList() {
			ArrayList<LectureVO> leclist = new ArrayList<LectureVO>();
			String sql = "SELECT *\r\n"
					+ "FROM Lecture\r\n"
					+ "order by lecKey";
			
			try {
				setConn();
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while( rs.next() ) {
					leclist.add(new LectureVO(rs.getInt(1), rs.getString(2), rs.getString(3),
							rs.getInt(4), rs.getInt(5), rs.getString(6),
							rs.getString(7), rs.getInt(8), rs.getInt(9),rs.getInt(10)));
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
			return leclist;
		}

		
		
		//강의번호로으로조회//
		public ArrayList<LectureVO> lecSearch(int lecKey) {
			ArrayList<LectureVO> searchlist = new ArrayList<LectureVO>();
			String sql = "SELECT * \r\n"
					+ "FROM Lecture \r\n"
					+ "WHERE lecKey = ? ";	
			System.out.println("# pstmt 실행 #");
			try {
				setConn();
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, lecKey);
				
				rs = pstmt.executeQuery();
				
				while( rs.next() ) {
					searchlist.add(new LectureVO(rs.getInt(1), rs.getString(2), rs.getString(3),
							rs.getInt(4), rs.getInt(5), rs.getString(6),
							rs.getString(7), rs.getInt(8), rs.getInt(9),rs.getInt(10)));
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
		public void insertLec(LectureVO ins) {
			String sql = "INSERT INTO Lecture VALUES (?,?,?,?,?,?,?,?,?,?)";
			try {
				setConn();
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, ins.getLecKey());
				pstmt.setString(2,ins.getLecName());
				pstmt.setString(3,ins.getLecTeacher());
				pstmt.setInt(4,ins.getLeclimitcnt());
				pstmt.setInt(5,ins.getLeconlineavail());
				pstmt.setString(6,ins.getLecdifficulty());
				pstmt.setString(7,ins.getLeccontents());
				pstmt.setInt(8,ins.getLecscore());
				pstmt.setInt(9,ins.getProCateKey());
				pstmt.setInt(10,ins.getFileKey());
				
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
		public void updateLec(LectureVO upt) {
			try {
				setConn();
				con.setAutoCommit(false);

				String sql = "update Lecture\r\n" + 
								"SET lecname=?,\r\n" + 
								"lecteacher = ?,\r\n"+
								"Leclimitcnt = ?,\r\n"+
								"Leconlineavail = ?,\r\n"+
								"Lecdifficulty = ?,\r\n"+
								"Leccontents = ?,\r\n"+
								"Lecscore = ?,\r\n"+
								"ProCateKey = ?,\r\n"+
								"FileKey = ?,\r\n"+
								"where LecKey = ?";
				pstmt = con.prepareStatement(sql);
			
				pstmt.setString(1,upt.getLecName());
				pstmt.setString(2,upt.getLecTeacher());
				pstmt.setInt(3,upt.getLeclimitcnt());
				pstmt.setInt(4,upt.getLeconlineavail());
				pstmt.setString(5,upt.getLecdifficulty());
				pstmt.setString(6,upt.getLeccontents());
				pstmt.setInt(7,upt.getLecscore());
				pstmt.setInt(8,upt.getProCateKey());
				pstmt.setInt(9,upt.getFileKey());
				pstmt.setInt(10, upt.getLecKey());
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
		public void deleteLec(int LecKey) {
			String sql = "delete \r\n" + 
						"from Lecture \r\n" + 
					"where LecKey=?\r\n";
			try {
				setConn();
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, LecKey);
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
			LectureDAO dao = new LectureDAO();
			for(LectureVO a : dao.lecSearch(1)) {
				System.out.println(a.getLecName());
			}
			
		}
}
