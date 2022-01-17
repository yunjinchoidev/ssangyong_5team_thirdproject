package storyRequest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import storyRequest.StoryRequestVO;


public class StoryRequestDAO {

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
	public ArrayList<StoryRequestVO> list() {
		ArrayList<StoryRequestVO> conlist = new ArrayList<StoryRequestVO>();
		String sql = "SELECT *\r\n" + 
					"FROM StoryRequestT\r\n";
					
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while (rs.next()) {
				conlist.add(new StoryRequestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getInt(4),
						rs.getInt(5), rs.getString(6),
						rs.getInt(7), rs.getInt(8), 
						rs.getString(9)));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			closeRsc();
		}
		return conlist;
	}

	// 지원자 이름으로 검색
	public ArrayList<StoryRequestVO> Search01(String officialPname) {
		ArrayList<StoryRequestVO> officiallist = new ArrayList<StoryRequestVO>();
		String sql = "SELECT *\r\n"
				+ "FROM StoryRequest\r\n"
				+ "WHERE requTitle LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, officialPname);
			rs = pstmt.executeQuery();
			int rowNum =1;
			System.out.println("공식스토어 검색");
			while (rs.next()) {
				officiallist.add(new StoryRequestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getInt(4),
						rs.getInt(5), rs.getString(6),
						rs.getInt(7), rs.getInt(8), 
						rs.getString(9)));
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
	public StoryRequestVO searchKey(int officialKey) {
		ArrayList<StoryRequestVO> searchlist = new ArrayList<StoryRequestVO>();
		String sql = "SELECT *\r\n" + 
					"FROM StoryRequestT\r\n" + 
					"WHERE requKey=? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, officialKey);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new StoryRequestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getInt(4),
						rs.getInt(5), rs.getString(6),
						rs.getInt(7), rs.getInt(8), 
						rs.getString(9)));
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
		return searchlist.get(0);
	}
	

	
	/*맥스번호*/
	private int maxBdKey() {
		int there=0;
		String sql = "SELECT max(requKey)\r\n" + 
				"FROM StoryRequestT\r\n";
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

	
	
	
	
	//강의번호로으로조회//
	public ArrayList<StoryRequestVO> lecSearch(int lecKey) {
		ArrayList<StoryRequestVO> searchlist = new ArrayList<StoryRequestVO>();
		String sql = "SELECT * \r\n"
				+ "FROM StoryRequestT \r\n"
				+ "WHERE lecKey = ? ";	
		System.out.println("# pstmt 실행 #");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, lecKey);
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				searchlist.add(new StoryRequestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getInt(4),
						rs.getInt(5), rs.getString(6),
						rs.getInt(7), rs.getInt(8), 
						rs.getString(9)));
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

	
	
	//requKey로 조회//
	public ArrayList<StoryRequestVO> SearchList(int requKey ) {
		ArrayList<StoryRequestVO> searchlist = new ArrayList<StoryRequestVO>();
		String sql = "SELECT *\r\n" + "FROM StoryRequestT\r\n" + "WHERE requKey=? ";
		System.out.println("# pstmt 실행 #");
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, requKey);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				searchlist.add(new StoryRequestVO(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getInt(4),
						rs.getInt(5), rs.getString(6),
						rs.getInt(7), rs.getInt(8), 
						rs.getString(9)));
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
	public void insert(StoryRequestVO ins) {
		int num = maxBdKey();
		String sql = "INSERT INTO StoryRequestT VALUES (?,?,?,?,?,?,?,?,?)";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, ins.getRequTitle());
			pstmt.setString(3, ins.getRequContents());
			pstmt.setInt(4, ins.getRequPrice());
			pstmt.setInt(5, ins.getRequModicnt());
			pstmt.setString(6, ins.getRequSort());
			pstmt.setInt(7, ins.getmKey());
			pstmt.setInt(8, ins.getProCateKey());
			pstmt.setString(9, ins.getFileKey());
			System.out.println("데이터 삽입에 성공하였습니다. requKey 값은 : "+ins.getRequKey());
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
	public void update(StoryRequestVO upt) {
		try {
			setConn();
			con.setAutoCommit(false);

			String sql = "update StoryRequestT \r\n" +
					"SET requTitle =?,\r\n" + 
					" requContents = ?,\r\n"+
					" requPrice = ?,\r\n"+
					" requModicnt = ?,\r\n"+
					" requSort= ?,\r\n"+
					" mKey = ?,\r\n"+
					" proCateKey = ?,\r\n"+
					" fileKey = ?\r\n"+
					"where requKey = ?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getRequTitle());
			pstmt.setString(2, upt.getRequContents());
			pstmt.setInt(3, upt.getRequPrice());
			pstmt.setInt(4, upt.getRequModicnt());
			pstmt.setString(5, upt.getRequSort());
			pstmt.setInt(6, upt.getmKey());
			pstmt.setInt(7, upt.getProCateKey());
			pstmt.setString(8, upt.getFileKey());
			pstmt.setInt(9, upt.getRequKey());
			pstmt.executeUpdate();
			System.out.println("수정 완료 되었습니다.");
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
	public void deleterq(int requkey) {
		String sql = "delete \r\n" + 
					"from StoryRequestT \r\n" + 
					"where requkey=?\r\n";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, requkey);
			pstmt.executeUpdate();
			System.out.println("삭제 완료 되었습니다.");
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
		// TODO Auto-generated method stub
		StoryRequestDAO dao = new StoryRequestDAO();
		dao.insert(new StoryRequestVO(3,"요청스토리1", "요청스토리1콘텐츠", 10000, 3, "자기소개서", 201, 701, "701"));
		for(StoryRequestVO rq : dao.list()) {
			System.out.println(rq.getRequKey()+" , "+rq.getRequTitle());
		}
		//dao.update(new StoryRequestVO(1,"요청스토리1(수정)", "요청스토리1콘텐츠(수정)", 10000, 3, "자기소개서", 201, 701, "701"));
		//dao.deleterq(2);
		
	}

}
