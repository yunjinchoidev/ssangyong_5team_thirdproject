package talentDonation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TalentDonationDAO {

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
	public ArrayList<TalentDonationVO> TalentDonationist() {
		ArrayList<TalentDonationVO> talist = new ArrayList<TalentDonationVO>();
		String sql = "SELECT *\r\n"
				+ "FROM TalentDonation\r\n";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println("사원명 검색");
			while( rs.next() ) {
				TalentDonationVO ta = new TalentDonationVO();
				ta.setTalenKey(rs.getInt("taKey"));
				ta.settalenYouWant(rs.getString("talenYouWant"));
				ta.setTamytalent(rs.getString("tamytalent"));
				ta.setTaapplydate(rs.getString("taapplydate"));
				ta.setTatime(rs.getString("taTime"));
				ta.setTaloc(rs.getString("taloc"));
				ta.setmKey(rs.getInt("mKey"));
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
	
	// 지원자 이름으로 검색
	public ArrayList<TalentDonationVO> SearchTalentDonation(String talenYouWant) {
		ArrayList<TalentDonationVO> talist = new ArrayList<TalentDonationVO>();
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
				TalentDonationVO ta = new TalentDonationVO();
				ta.setTaKey(rs.getInt("taKey"));
				ta.settalenYouWant(rs.getString("talenYouWant"));
				ta.setTamytalent(rs.getString("tamytalent"));
				ta.setTaapplydate(rs.getString("taapplydate"));
				ta.setTatime(rs.getString("taTime"));
				ta.setmKey(rs.getInt("mKey"));
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
	

	
	
	/*4 [1단계:확인] 4. A06_DatabaseDao pstmt로 사원정보를 등록하는 기는 메서드를 만드세요.*/
	public void insertTalentDonationVO(TalentDonationVO ins) {
		String sql = "INSERT INTO TalentDonation VALUES (?,?,?,?,?,?,?)";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ins.getTaKey());
			pstmt.setString(2, ins.gettalenYouWant());
			pstmt.setString(3, ins.getTamytalent());
			pstmt.setString(4, ins.getTaapplydate());
			pstmt.setString(5, ins.getTatime());
			pstmt.setString(6, ins.getTaloc());
			pstmt.setInt(7, ins.getmKey());
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
	public void updateTalentDonationVO(TalentDonationVO upt) {
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			
			String sql = "update TalentDonation\r\n"
					+ "			SET talenYouWant=?,\r\n"
					+ "				tamytalent = ?,\r\n"
					+ "				taapplydate = ?,\r\n"
					+ "				tatime = ?,\r\n"
					+ "				taloc = ?\r\n"
					+ "		   where taKey = ?";
			pstmt  = con.prepareStatement(sql);
			
			pstmt.setString(1, upt.gettalenYouWant());
			pstmt.setString(2, upt.getTamytalent());
			pstmt.setString(3, upt.getTaapplydate());
			pstmt.setString(4, upt.getTatime());
			pstmt.setString(5, upt.getTaloc());
			pstmt.setInt(6, upt.getTaKey());
			
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
	public void deleteTalentDonationVO(int taKey) {
		String sql = "delete \r\n"
				+ "from TalentDonation \r\n"
				+ "where taKey=?\r\n";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, taKey);
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
		TalentDonationDAO DAO = new TalentDonationDAO();
		DAO.deleteTalentDonationVO(1);
		DAO.insertTalentDonationVO(new TalentDonationVO(304, "최윤진", "축구", "2022-01-10", "3시간", "성남", 201));
		DAO.insertTalentDonationVO(new TalentDonationVO(305, "최윤진202", "축구202", "2022-01-12", "202시간", "성남202", 202));
		DAO.insertTalentDonationVO(new TalentDonationVO(306, "최윤진203", "축구203", "2022-01-12", "203시간", "성남203", 203));
		
		
		
	}
}