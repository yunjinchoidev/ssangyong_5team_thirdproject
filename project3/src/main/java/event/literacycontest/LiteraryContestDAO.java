package event.literacycontest;

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
			String query = "select * from  LiteraryContest";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				int liberKey = rs.getInt("liberKey");
				String liberTitle = rs.getString("liberTitle");
				String liberContents = rs.getString("liberContents");
				String liberSort = rs.getString("liberSort");
				String liberCareer = rs.getString("liberCareer");
				int liberProductionDate = rs.getInt("liberProductionDate");
				Date liberSubmissionDate = rs.getDate("liberSubmissionDate");
				int mKey = rs.getInt("mKey");
				int fileKey = rs.getInt("fileKey");
				
				LiteraryContestVO literaryContestVO = new LiteraryContestVO(liberKey, liberTitle,liberContents, liberSort,
						liberCareer,liberProductionDate,liberSubmissionDate,mKey,fileKey);
				
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
			int liberKey = m.getLiberKey();
			String liberTitle = m.getLiberTitle();
			String liberContents = m.getLiberContents();
			String liberSort = m.getLiberSort();
			String liberCareer = m.getLiberCareer();
			int liberProductionDate = m.getLiberProductionDate();
			Date liberSubmissionDate = m.getLiberSubmissionDate();
			int mKey = m.getmKey();
			int fileKey = m.getFileKey();
			
			String query = "INSERT INTO LiteraryContest(liberTitle,liberContents, liberSort, liberCareer,liberProductionDate,liberSubmissionDate," + " VALUES(?, ? ,? ,?,?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, liberTitle);
			pstmt.setString(2, liberContents);
			pstmt.setString(3, liberSort);
			pstmt.setString(4, liberCareer);
			pstmt.setInt(5, liberProductionDate);
			pstmt.setDate(6, liberSubmissionDate);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
