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
			String query = "select * from  literarycontest order by liberKey";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String liberKey = rs.getString("liberKey");
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
			String liberKey = m.getLiberKey();
			String liberTitle = m.getLiberTitle();
			String liberContents = m.getLiberContents();
			String liberSort = m.getLiberSort();
			String liberCareer = m.getLiberCareer();
			
			String query = "INSERT INTO literarycontest(liberKey, liberTitle,liberContents, liberSort, liberCareer)" + " VALUES(?, ? ,? ,?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, liberKey);
			pstmt.setString(2, liberTitle);
			pstmt.setString(3, liberContents);
			pstmt.setString(4, liberSort);
			pstmt.setString(5, liberCareer);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
