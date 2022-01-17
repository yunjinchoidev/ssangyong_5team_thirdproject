package attachedFileTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class AttachedFileTestDAO {
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
	public ArrayList<AttachedFileTestVO> list() {
		ArrayList<AttachedFileTestVO> filelist = new ArrayList<AttachedFileTestVO>();
		String sql = "SELECT * \r\n"
				+ "FROM AttachedfileTest \r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				filelist.add(new AttachedFileTestVO(rs.getString(1),rs.getString(2),
						rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getString(6)
						));
			}
			System.out.println("조회 성공");
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if(rs!=null) rs = null; // 강제로 자원해제..
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		return filelist;
	}
	
	// 파일 번호로 검색
	public ArrayList<AttachedFileTestVO> SearchAttachedfile(int fileKey) {
		ArrayList<AttachedFileTestVO> filelist = new ArrayList<AttachedFileTestVO>();
		String sql = "SELECT *\r\n"
				+ "FROM AttachedfileTest\r\n"
				+ "WHERE fileKey=?";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, fileKey);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				filelist.add(new AttachedFileTestVO(rs.getString(1),rs.getString(2),
						rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getString(6)
						));
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
		return filelist;
	}
	
	// 파일 경로 구하기
	public String SearchfilePath(String fileKey) {
		String filepath="";
		String sql = "SELECT filePath\r\n"
				+ "FROM AttachedfileTest\r\n"
				+ "WHERE fileKey=?";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, fileKey);
			rs = pstmt.executeQuery();
			rs.next();
			System.out.println("사원명 검색");
			filepath = rs.getString("filepath");
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if(rs!=null) rs = null; // 강제로 자원해제..
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		return filepath;
	}
	
	// 파일 경로 구하기 범위 포함
	public String SearchfilePath02(int low, int high) {
		String filepath="";
		String sql = "SELECT filePath\r\n"
				+ "FROM AttachedfileTest\r\n"
				+ "WHERE fileKey between ? and ?";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, low);
			pstmt.setInt(2, high);
			rs = pstmt.executeQuery();
			rs.next();
			System.out.println("사원명 검색");
			filepath = rs.getString("filepath");
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if(rs!=null) rs = null; // 강제로 자원해제..
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		return filepath;
	}
	

	
	
	/*삽입*/
	public void insertAttachedfileVO(AttachedFileTestVO ins) {
		String sql = "INSERT INTO AttachedfileTest VALUES (?,?,?,?,?, to_date(sysdate,'YYYY/MM/DD'))";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, ins.getFileKey());
			pstmt.setString(2, ins.getFileName());
			pstmt.setString(3, ins.getFilePath());
			pstmt.setString(4, ins.getFileType());
			pstmt.setString(5, ins.getFileSize());
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
	public void updateAttachedfileVO(AttachedFileTestVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update AttachedfileTest\r\n"
					+ "			SET fileName=?,\r\n"
					+ "				filePath = ?,\r\n"
					+ "				fileType = ?,\r\n"
					+ "				fileSize = ?,\r\n"
					+ "				fileDate = to_date(sysdate,'YYYY/MM/DD'),\r\n"
					+ "		   where fileKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getFileName());
			pstmt.setString(2, upt.getFilePath());
			pstmt.setString(3, upt.getFileType());
			pstmt.setString(4, upt.getFileSize());
			pstmt.setString(5, upt.getFileDateS());
			pstmt.setString(6, upt.getFileKey());
			
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

	
	
	/*삭제*/
	public void deleteAttachedfileVO(String fileKey) {
		String sql = "delete \r\n"
				+ "from AttachedfileTest \r\n"
				+ "where fileKey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, fileKey);
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
			AttachedFileTestDAO dao = new AttachedFileTestDAO();
			
			dao.insertAttachedfileVO(new AttachedFileTestVO("402", "2", "2.png", "png", "2mb", "2022/01/12"));
			dao.insertAttachedfileVO(new AttachedFileTestVO("403", "3", "3.png", "png", "2mb", "2022/01/12"));
				
			for(AttachedFileTestVO f : dao.list()) {
				System.out.println(">?");
				System.out.println(f.getFileKey());
			}
	
	}

}
