package attachedFile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class AttachedFileDAO {
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
	public ArrayList<AttachedFileVO> Attachedfileist() {
		ArrayList<AttachedFileVO> filelist = new ArrayList<AttachedFileVO>();
		String sql = "SELECT * \r\n"
				+ "FROM Attachedfile \r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				filelist.add(new AttachedFileVO(rs.getInt(1),rs.getString(2),
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
	
	// 파일 번호로 검색
	public ArrayList<AttachedFileVO> SearchAttachedfile(int fileKey) {
		ArrayList<AttachedFileVO> filelist = new ArrayList<AttachedFileVO>();
		String sql = "SELECT *\r\n"
				+ "FROM Attachedfile\r\n"
				+ "WHERE fileKey=?";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, fileKey);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				filelist.add(new AttachedFileVO(rs.getInt(1),rs.getString(2),
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
	public String SearchfilePath(int fileKey) {
		String filepath="";
		String sql = "SELECT filePath\r\n"
				+ "FROM Attachedfile\r\n"
				+ "WHERE fileKey=?";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, fileKey);
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
				+ "FROM Attachedfile\r\n"
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
	public void insertAttachedfileVO(AttachedFileVO ins) {
		String sql = "INSERT INTO Attachedfile VALUES (?,?,?,?,?, to_date(?,'YYYY/MM/DD'))";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ins.getFileKey());
			pstmt.setString(2, ins.getFileName());
			pstmt.setString(3, ins.getFilePath());
			pstmt.setString(4, ins.getFileType());
			pstmt.setString(5, ins.getFileSize());
			pstmt.setString(6, ins.getFileDateS());
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
	public void updateAttachedfileVO(AttachedFileVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update Attachedfile\r\n"
					+ "			SET fileName=?,\r\n"
					+ "				filePath = ?,\r\n"
					+ "				fileType = ?,\r\n"
					+ "				fileSize = ?,\r\n"
					+ "				fileDate = ?\r\n"
					+ "		   where fileKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getFileName());
			pstmt.setString(2, upt.getFilePath());
			pstmt.setString(3, upt.getFileType());
			pstmt.setString(4, upt.getFileSize());
			pstmt.setString(5, upt.getFileDateS());
			pstmt.setInt(6, upt.getFileKey());
			
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
	public void deleteAttachedfileVO(int fileKey) {
		String sql = "delete \r\n"
				+ "from Attachedfile \r\n"
				+ "where fileKey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, fileKey);
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
			AttachedFileDAO dao = new AttachedFileDAO();
			
			dao.insertAttachedfileVO(new AttachedFileVO(3, "강의1", "l01.jpg", "jpg", "2mb", "2022/01/12"));
			dao.insertAttachedfileVO(new AttachedFileVO(4, "강의1", "l01.jpg", "jpg", "2mb", "2022/01/12"));
	}

}
