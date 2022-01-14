package member;
// javaemp.a08_db.A03_DatabaseDao
// javaexp.a04_vo.Dept

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class MemberDAO {

	private PreparedStatement pstmt;
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	public void setConn() throws SQLException {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 에러:"+e.getMessage());
		}
		
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info,"scott","tiger");
		System.out.println("DB 접속성공");
	}
	
	// 회원가입
	public void insertMember(MemberVO mem) {
		String sql="INSERT INTO MEMBER (mkey, mid, mpass, mname, memail, phonenum,mreg, nickname,mgender, mjoindate, "
				+ "mlevel, maddress, MSELLERRATE,mgiftlevel,MIP)\r\n"
				+ "VALUES (\r\n"
				+ "(SELECT NVL(MAX(mkey)+1,1) FROM MEMBER),?,?,?"
				+ ",?,?,?,?,\r\n"
				+ "?, sysdate, 0,?, 0.0, 0, '192.100.0.0')";
		
		try {
			setConn();
			
			 con.setAutoCommit(false);
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, mem.getmId());
	         pstmt.setString(2, mem.getmPass());
	         pstmt.setString(3, mem.getmName());
	         pstmt.setString(4, mem.getmEmail());
	         pstmt.setString(5, mem.getPhonenum());
	         pstmt.setString(6, mem.getmReg());
	         pstmt.setString(7, mem.getNickname());
	         pstmt.setString(8, mem.getmGender());
	         pstmt.setString(9, mem.getmAddress());
	         pstmt.executeUpdate();

	         con.commit();
	         // 자원해제
	         pstmt.close(); con.close();
		} catch (SQLException e) {
			System.out.println("회원가입 DAO오류:"+e.getMessage());
	
	         try {
	            con.rollback();
	         } catch (SQLException e1) {
	            // TODO Auto-generated catch block
	            e1.printStackTrace();
	         }
	         closeRsc();
		}
	}
	
	
	public ArrayList<MemberVO> memberlist(String id, String pass) {
		
		ArrayList<MemberVO> memberlist = new ArrayList<MemberVO>();
		
		try {
			setConn();
			String sql = "SELECT *\r\n"
					+ "FROM MEMBER\r\n"
					+ "WHERE mid='"+id+"'\r\n"
					+ "AND mpass='"+pass+"'";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
			int row=1;
			while(rs.next()) {
				memberlist.add(new MemberVO(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4)
						,rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10)));
				System.out.println(row+++"행");
				System.out.print(rs.getInt(1)+"\t");// select를 통해서 데이터 순서로 1부터
				System.out.print(rs.getString(2)+"\t"); 
				System.out.print(rs.getString(3)+"\n");
				System.out.print(rs.getString(4)+"\n");
				System.out.print(rs.getString(5)+"\n");
				System.out.print(rs.getString(6)+"\n");
				System.out.print(rs.getString(7)+"\n");
				System.out.print(rs.getString(8)+"\n");
				System.out.print(rs.getString(9)+"\n");
				System.out.print(rs.getString(10)+"\n");
							
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			System.out.println("에러:"+e.getMessage());
			
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
			
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		}
		return memberlist;
	}

	// 메인
	public static void main(String[] args) {
		
		
	}	
	
	// 자원해제 공통 메서드 선언..
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
		
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
}


