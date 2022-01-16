package myfantastic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.catalina.tribes.membership.cloud.InsecureStreamProvider;



public class BoardDAO {

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
	public ArrayList<BoardVO> listBd() {
		ArrayList<BoardVO> conlist = new ArrayList<BoardVO>();
		String sql = "SELECT\r\n"
				+ "	boPostKey,\r\n"
				+ "	mKey,\r\n"
				+ "	fileKey,\r\n"
				+ "	boCateKey,\r\n"
				+ "	boWriter,\r\n"
				+ "	boWriterPass,\r\n"
				+ "	boWriterEmail,\r\n"
				+ "	boPostDate,\r\n"
				+ "	LPAD(' ',4*(LEVEL-1))||BOTITLE \"bottile\", \r\n"
				+ "	boModifyDate,\r\n"
				+ "	boWriterIp,\r\n"
				+ "	boViews,\r\n"
				+ "	PARENTNO ,\r\n"
				+ "	boContent,\r\n"
				+ "	LEVEL\r\n"
				+ "FROM board\r\n"
				+ "WHERE boCateKey=203"
				+ "START WITH PARENTNO=0\r\n"
				+ "CONNECT BY PRIOR bopostkey=PARENTNO\r\n"
				+ "ORDER BY bopostkey";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				conlist.add(new BoardVO(
						rs.getInt(1), rs.getInt(2), 
						rs.getInt(3), rs.getInt(4),
						rs.getString(5), rs.getString(6),
						rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10),
						rs.getString(11), rs.getInt(12),
						rs.getInt(13), rs.getString(14),
						rs.getInt(15)));
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

	
	

	
	
	//제목 명으로 조회//
	public BoardVO searchBdTitle(String boTitle) {
		ArrayList<BoardVO> searchlist = new ArrayList<BoardVO>();
		String sql = "SELECT *\r\n" + 
				"FROM Board\r\n" + 
				"WHERE boTitle like '%'||?||'%' "+
				"and boCateKey=203";
		System.out.println(boTitle+"제목으로 검색 실행");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, boTitle);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new BoardVO(
						rs.getInt(1), rs.getInt(2), 
						rs.getInt(3), rs.getInt(4),
						rs.getString(5), rs.getString(6),
						rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10),
						rs.getString(11), rs.getInt(12),
						rs.getInt(13), rs.getString(14),
						0));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			closeRsc();
		}
		return searchlist.get(0);
	}
	
	
	
	
	
	
	
	
	//고유번호로 조회//
	public BoardVO searchBdKey(int boPostKey) {
		ArrayList<BoardVO> searchlist = new ArrayList<BoardVO>();
		String sql = "SELECT *\r\n" + 
					"FROM Board\r\n" + 
					"WHERE boPostKey=? "+
					"and boCateKey=203";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boPostKey);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new BoardVO(
						rs.getInt(1), rs.getInt(2), 
						rs.getInt(3), rs.getInt(4),
						rs.getString(5), rs.getString(6),
						rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10),
						rs.getString(11), rs.getInt(12),
						rs.getInt(13), rs.getString(14),0
						));
				System.out.println(rs.getInt(1)+"번 고유번호로 조회하기 완료");
			}
			

		
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			closeRsc();
		}
		return searchlist.get(0);
	}
	
	/*맥스번호*/
	private int maxBdKey() {
		int there=0;
		String sql = "SELECT max(boPostKey)\r\n" + 
				"FROM Board\r\n";
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

	
	
	
	
	
	
	
	
	
	
	// 삽입//
	public void insertBd(BoardVO ins) {
		int A = maxBdKey();
		
		String sql="INSERT INTO Board VALUES (?,?,?,?,?,?,?,to_date(sysdate,'YYYY/MM/DD'),?,to_date(null,'YYYY/MM/DD'),?,?,?,?)";
		
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			
			pstmt.setInt(1,A);
			pstmt.setInt(2, ins.getmKey());
			pstmt.setInt(3, ins.getFileKey());
			pstmt.setInt(4, ins.getBoCateKey());
			pstmt.setString(5, ins.getBoWriter());
			pstmt.setString(6, ins.getBoWriterPass());
			pstmt.setString(7, ins.getBoWriterEmail());
			pstmt.setString(8, ins.getBoTitle());
			pstmt.setString(9, ins.getBoWriterIp());
			pstmt.setInt(10, ins.getBoViews());
			pstmt.setInt(11, ins.getBoParentNO());
			pstmt.setString(12, ins.getBoContent());
			
			System.out.println(ins.getBoPostKey()+":: 번글 insert완료");
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
	public void updateBd(BoardVO upt) {
		String sql = "update Board\r\n"
				+ "			SET mKey=?,\r\n"
				+ "				FileKey= ?,\r\n"
				+ "				BoCateKey= ?,\r\n"
				+ "				BoWriter= ?,\r\n"
				+ "				BoWriterPass= ?,\r\n"
				+ "				BoWriterEmail= ?,\r\n"
				+ "				BoTitle= ?,\r\n"
				+ "				BoModifyDate= to_date(sysdate,'YYYY/MM/DD'),\r\n"
				+ "				BoWriterIp = ?,\r\n"
				+ "				BoViews= ?,\r\n"
				+ "				BoContent = ?\r\n"
				+ "		   where BoPostKey = ?";
		
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, upt.getmKey());
			pstmt.setInt(2, upt.getFileKey());
			pstmt.setInt(3, upt.getBoCateKey());
			pstmt.setString(4, upt.getBoWriter());
			pstmt.setString(5, upt.getBoWriterPass());
			pstmt.setString(6, upt.getBoWriterEmail());
			pstmt.setString(7, upt.getBoTitle());
			pstmt.setString(8, upt.getBoWriterIp());
			pstmt.setInt(9, upt.getBoViews());
			pstmt.setString(10, upt.getBoContent());
			pstmt.setInt(11, upt.getBoPostKey());
			
			System.out.println(upt.getBoPostKey()+"번 글 수정을 완료했습니다.");
			
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
	public void deleteBd(int boPostKey) {
		String sql = "delete \r\n"
				+ "from Board \r\n"
				+ "where boPostKey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, boPostKey);
			pstmt.executeUpdate();
			System.out.println(boPostKey + "번 글 삭제완료");
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
			BoardDAO dao = new BoardDAO();

			dao.maxBdKey();
				
			dao.insertBd(new BoardVO(
					47, 201, 201, 203, "홍길동", 
					"비밀번호1", "a@A", "2021/1/14", "제목", "2021/12/01",
					"192.312.31", 1, 0, "콘텐츠1",0));
			
			
			dao.updateBd(new BoardVO(
					48, 201, 201, 203, "홍길동1(수정1)", 
					"비밀번호1", "a@A", "2021/1/14", "제목", "2021/12/01",
					"192.312.31", 1, 0, "콘텐츠1",0));
			
			//System.out.println(dao.searchBdKey(36).getBoPostKey());
			//System.out.println(dao.searchBdTitle("8").getBoPostKey());
			
			for(BoardVO b : dao.listBd()) {
				System.out.println("게시글 번호" + b.getBoPostKey()+"입력일 : "+b.getBoTitle());
			}
			
			
			
			
	}


}
