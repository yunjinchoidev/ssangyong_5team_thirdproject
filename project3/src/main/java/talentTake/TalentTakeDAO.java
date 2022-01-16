package talentTake;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TalentTakeDAO {

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
	public ArrayList<TalentTakeVO> TalentDonationist() {
		ArrayList<TalentTakeVO> talist = new ArrayList<TalentTakeVO>();
		String sql = "SELECT *\r\n"
				+ "FROM TalentDonation\r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				TalentTakeVO ta = new TalentTakeVO();
				ta.setTalenKey(rs.getInt(1));
				ta.setTalentYouWant(rs.getString(2));
				ta.setTalenChildPer(rs.getString(3));
				ta.setTalenDate(rs.getString(4));
				ta.setTalenLoc(rs.getString(5));
				ta.setmKey(rs.getInt(6));
				talist.add(ta);
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
		return talist;
	}
	
	// 원하는 재능 이름으로 검색
	public ArrayList<TalentTakeVO> SearchTalentDonation(String talenYouWant) {
		ArrayList<TalentTakeVO> talist = new ArrayList<TalentTakeVO>();
		String sql = "SELECT *\r\n"
				+ "FROM TalentDonation\r\n"
				+ "WHERE talenYouWant LIKE '%'||?||'%'";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, talenYouWant);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				TalentTakeVO ta = new TalentTakeVO();
				ta.setTalenKey(rs.getInt(1));
				ta.setTalentYouWant(rs.getString(2));
				ta.setTalenChildPer(rs.getString(3));
				ta.setTalenDate(rs.getString(4));
				ta.setTalenLoc(rs.getString(5));
				ta.setmKey(rs.getInt(6));
				talist.add(ta);
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
		return talist;
	}
	

	
	
	/*삽입*/
	public void insertTalentDonationVO(TalentTakeVO ins) {
		String sql = "INSERT INTO TalentDonation VALUES (?,?,?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ins.getTalenKey());
			pstmt.setString(2, ins.getTalentYouWant());
			pstmt.setString(3, ins.getTalenChildPer());
			pstmt.setString(4, ins.getTalenDate());
			pstmt.setString(5, ins.getTalenLoc());
			pstmt.setInt(6, ins.getmKey());
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
	
	
	/*5[1단계:확인] 5. A06_DatabaseDao pstmt로 사원정보를 수정/삭제하는 기는 메서드를 만드세요.*/
	public void updateTalentDonationVO(TalentTakeVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update TalentDonation\r\n"
					+ "			SET talenYouWant=?,\r\n"
					+ "				talentChildPer = ?,\r\n"
					+ "				talenDate = ?,\r\n"
					+ "				talenLoc = ?,\r\n"
					+ "				mKey = ?,\r\n"
					+ "		   where talenKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.getTalentYouWant());
			pstmt.setString(2, upt.getTalenChildPer());
			pstmt.setString(3, upt.getTalenDate());
			pstmt.setString(4, upt.getTalenLoc());
			pstmt.setInt(5, upt.getmKey());
			pstmt.setInt(6, upt.getTalenKey());
			
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

	
	
	/*5[1단계:확인] 5. A06_DatabaseDao pstmt로 사원정보를 수정/삭제하는 기는 메서드를 만드세요.*/
	public void deleteTalentDonationVO(int talenKey) {
		String sql = "delete \r\n"
				+ "from TalentDonation \r\n"
				+ "where talenKey=?\r\n";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, talenKey);
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
		TalentTakeDAO DAO = new TalentTakeDAO();
		DAO.insertTalentDonationVO(new TalentTakeVO(201, "요리", "수줍음", "2021/01/12", "제주",201));
		
		
		
	}
}