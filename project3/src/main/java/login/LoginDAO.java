package login;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import member.MemberVO;



public class LoginDAO {

	   private Connection con;
	   private Statement stmt;
	   private PreparedStatement pstmt;
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
						,rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),
						rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12)));
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
				System.out.print(rs.getString(11)+"\n");
				System.out.print(rs.getString(12)+"\n");
							
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
		LoginDAO dao = new LoginDAO();
		
	}

}
