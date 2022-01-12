package literacyContest;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LiteraryContestDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	
	public LiteraryContestDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<LiteraryContestVO> listLiteraryContest() {
		List<LiteraryContestVO> LiteraryContestList = new ArrayList<LiteraryContestVO>();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from  literarycontest order by literKey";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				int literKey = rs.getInt("literKey");
				String literTitle = rs.getString("literTitle");
				String literContents = rs.getString("literContents");
				String literSort = rs.getString("literSort");
				String literCareer = rs.getString("literCareer");
				int literProductionDate = rs.getInt("literProductionDate");
				Date literSubmissionDate = rs.getDate("literSubmissionDate");
				int mKey = rs.getInt("mKey");
				int fileKey = rs.getInt("fileKey");
				
				LiteraryContestVO literaryContestVO = new LiteraryContestVO(literKey, literTitle,literContents, literSort,
						literCareer,literProductionDate,literSubmissionDate,mKey,fileKey);
				
				LiteraryContestList.add(literaryContestVO);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return LiteraryContestList;
	}

	public void addLiteraryContest(LiteraryContestVO m) {
		try {
			conn = dataFactory.getConnection();
			int literKey = m.getLiterKey();
			String literTitle = m.getLiterTitle();
			String literContents = m.getLiterContents();
			String literSort = m.getLiterSort();
			String literCareer = m.getLiterCareer();
			int literProductionDate = m.getLiterProductionDate();
			Date literSubmissionDate = m.getLiterSubmissionDate();
			String query = "INSERT INTO literarycontest(literKey, literTitle,literContents, literSort, literCareer, literProductionDate, literSubmissionDate)" + " VALUES(?, ? ,? ,?,?,?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, literKey);
			pstmt.setString(2, literTitle);
			pstmt.setString(3, literContents);
			pstmt.setString(4, literSort);
			pstmt.setString(5, literCareer);
			pstmt.setInt(6, literProductionDate);
			pstmt.setDate(7, literSubmissionDate);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public LiteraryContestVO findLiteraryContest(int _literKey) {
		LiteraryContestVO memInfo = null;
		try {
			conn = dataFactory.getConnection();
			String query = "select * from  LiteraryContest where =?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, _literKey);
			System.out.println(query);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			int literKey = rs.getInt("literKey");
			String literTitle = rs.getString("literTitle");
			String literContents = rs.getString("literContents");
			String literSort = rs.getString("literSort");
			String literCareer = rs.getString("literCareer");
			int literProductionDate = rs.getInt("literProductionDate");
			Date literSubmissionDate = rs.getDate("literSubmissionDate");
			memInfo = new LiteraryContestVO(literKey , literTitle, literContents, literSort, literCareer, literProductionDate, literSubmissionDate);
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memInfo;
	}

	
	
	public void modLiteraryContest(LiteraryContestVO literaryContestVO) {
		int literKey = literaryContestVO.getLiterKey();
		String literTitle = literaryContestVO.getLiterTitle();
		String literContents = literaryContestVO.getLiterContents();
		String literSort = literaryContestVO.getLiterSort();
		String literCareer = literaryContestVO.getLiterCareer();
		int literProductionDate = literaryContestVO.getLiterProductionDate();
		
		try {
			conn = dataFactory.getConnection();
			String query = "update LiteraryContest set "
					+ "literTitle =?,literContents=?,literSort=?,literCareer=?, literProductionDate=? "
					+ "where literKey=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, literTitle);
			pstmt.setString(2, literContents);
			pstmt.setString(3, literSort);
			pstmt.setString(4, literCareer);
			pstmt.setInt(5, literProductionDate);
			pstmt.setInt(6, literKey);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void delLiteraryContest(int literKey) {
		try {
			conn = dataFactory.getConnection();
			String query = "delete from LiteraryContest where literKey=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,literKey);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
