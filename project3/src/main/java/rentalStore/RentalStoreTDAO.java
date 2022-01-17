package rentalStore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fantasize.BoardVO;


public class RentalStoreTDAO {
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
	public ArrayList<RentalStoreTVO> list() {
		ArrayList<RentalStoreTVO> rentallist = new ArrayList<RentalStoreTVO>();
		String sql = "SELECT *\r\n"
				+ "FROM rentalStoreT\r\n"
				+ " order by rentalKey";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("전체 검색 완료");
			while( rs.next() ) {
				RentalStoreTVO off = new RentalStoreTVO(
						rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getString(4), rs.getString(5),rs.getString(6),
						rs.getInt(7),rs.getString(8), rs.getInt(9));
				
				rentallist.add(off);
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
		return rentallist;
	}
	
	
	
	// 지원자 이름으로 검색
	public ArrayList<RentalStoreTVO> Search01(String rentalPname) {
		ArrayList<RentalStoreTVO> rentallist = new ArrayList<RentalStoreTVO>();
		String sql = "SELECT *\r\n"
				+ "FROM RentalStoreT\r\n"
				+ "WHERE rentalPname LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rentalPname);
			rs = pstmt.executeQuery();
			int rowNum =1;
			System.out.println("공식스토어 검색");
			while( rs.next() ) {
				RentalStoreTVO off = new RentalStoreTVO(
						rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getString(4), rs.getString(5),rs.getString(6),
						rs.getInt(7),rs.getString(8), rs.getInt(9));
				
				rentallist.add(off);
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
		return rentallist;
	}
	


	
	
	
	
	
	
	
	
	//고유번호로 조회//
	public RentalStoreTVO searchKey(int rentalKey) {
		ArrayList<RentalStoreTVO> rentallist = new ArrayList<RentalStoreTVO>();
		String sql = "SELECT *\r\n" + 
					"FROM RentalStoreT\r\n" + 
					"WHERE rentalKey=? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rentalKey);
			
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				RentalStoreTVO off = new RentalStoreTVO(
						rs.getInt(1), rs.getString(2), rs.getInt(3),
						rs.getString(4), rs.getString(5),rs.getString(6),
						rs.getInt(7),rs.getString(8), rs.getInt(9));
				
				rentallist.add(off);
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
		return rentallist.get(0);
	}
	

	
	/*맥스번호*/
	private int maxBdKey() {
		int there=0;
		String sql = "SELECT max(rentalKey)\r\n" + 
				"FROM rentalStoreT\r\n";
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

	
	
	
	
		
	
	
	
	
	/*insert*/
	public void insert(RentalStoreTVO ins) {
		int num = maxBdKey();
		
		String sql = "INSERT INTO rentalStoreT VALUES (?,?,?,?,to_date(?,'YYYY/MM/DD'),to_date(?,'YYYY/MM/DD'),?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			pstmt.setString(2, ins.getRentalPname());
			pstmt.setInt(3, ins.getRentalterm());
			pstmt.setString(4, ins.getRentalExplain());
			pstmt.setString(5, ins.getRentalStartDayS());
			pstmt.setString(6, ins.getRentalEndDayS());
			pstmt.setInt(7, ins.getProCateKey());
			pstmt.setString(8, ins.getFileKey());
			pstmt.setInt(9, ins.getRentPrice());
			pstmt.executeUpdate();
			System.out.println(num+"번 인서트 완료");
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
	public void update(RentalStoreTVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update rentalStoreT\r\n"
					+ "			SET RentalPname=?,\r\n"
					+ "				rentalterm = ?,\r\n"
					+ "				rentalExplain = ?,\r\n"
					+ "				rentalStartDay=to_date(sysdate,'YYYY/MM/DD'),\r\n"
					+ "				rentalEndDay=to_date(sysdate,'YYYY/MM/DD'),\r\n"
					+ "				proCateKey = ?,\r\n"
					+ "				fileKey = ?,\r\n"
					+ "				rentalPrice = ?\r\n"
					+ "		   where rentalKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getRentalPname());
			pstmt.setInt(2, upt.getRentalterm());
			pstmt.setString(3, upt.getRentalExplain());
			pstmt.setString(4, upt.getRentalStartDayS());
			pstmt.setString(5, upt.getRentalEndDayS());
			pstmt.setInt(6, upt.getProCateKey());
			pstmt.setString(7, upt.getFileKey());
			pstmt.setInt(8, upt.getRentPrice());
			pstmt.setInt(9, upt.getRentalKey());
			
			
			
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
	public void delete(int rentalKey) {
		String sql = "delete \r\n"
				+ "from rentalStoreT \r\n"
				+ "where rentalKey=?\r\n";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rentalKey);
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
		RentalStoreTDAO DAO = new RentalStoreTDAO();
		//DAO.insert(new RentalStoreTVO(2, "a", 1, "A", "2021/11/11", "2021/11/12", 501, "401", 2000));
		
		for(RentalStoreTVO of : DAO.list()) {
			System.out.println(of.getRentalKey());
		}
		
		
		
		
	}
}
