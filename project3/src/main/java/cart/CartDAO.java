package cart;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CartDAO {

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
		public ArrayList<CartVO2> cartList() {
			ArrayList<CartVO2> leclist = new ArrayList<CartVO2>();
			String sql = "	 select cartKey, cartPrice, mKey, lecKey \r\n"
					+ "	from cart \r\n";
		
			try {
				setConn();
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while( rs.next() ) {
					leclist.add(new CartVO2(rs.getInt(1), rs.getInt(2), rs.getInt(3),
							rs.getInt(4)));
				}
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				if(rs!=null) rs = null;
				if(pstmt!=null) pstmt = null;
				if(con!=null) con = null;
			}
			return leclist;
		}

		
		
		//강의번호로으로조회//
		public ArrayList<CartVO2> lecSearch(int mKey) {
			ArrayList<CartVO2> searchlist = new ArrayList<CartVO2>();
			String sql = "	 select cartKey, cartPrice, mKey, lecKey \r\n"
					+ "	from cart \r\n"+
					"where mKey=?";
			System.out.println("# pstmt 실행 #");
			try {
				setConn();
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, mKey);
				
				rs = pstmt.executeQuery();
				while( rs.next() ) {
					searchlist.add(new CartVO2(rs.getInt(1), rs.getInt(2), rs.getInt(3),
							rs.getInt(4)));
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

		
		
		//삽입//
		public void insertLec(CartVO2 ins) {
			String sql = "INSERT INTO cart VALUES (?,to_date(?,'YYYY/MM/DD'),?,?,null,null,null,null,?,null)";
			try {
				setConn();
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, ins.getCartKey());
				//pstmt.setString(2,ins.getCartDateS());
				//pstmt.setInt(3,ins.getCartCnt());
				pstmt.setInt(4,ins.getCartPrice());
				pstmt.setInt(5,ins.getmKey());
				//pstmt.setInt(6,ins.getOfficialKey());
				//pstmt.setInt(7,ins.getRentalKey());
				//pstmt.setInt(8,ins.getCusKey());
				pstmt.setInt(9,ins.getLecKey());
				//pstmt.setInt(10,ins.getRequKey());
				
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
		public void updateLec(CartVO2 upt) {
			try {
				setConn();
				con.setAutoCommit(false);

				String sql = "update Cart\r\n" + 
								"SET cartprice=?,\r\n" + 
								"where cartKey = ?";
				pstmt = con.prepareStatement(sql);
			
				pstmt.setInt(1,upt.getCartPrice());
				pstmt.setInt(2,upt.getCartKey());
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

		/* 삭제 */
		public void deletecart(int cartKey) {
			String sql = "delete \r\n" + 
						"from cart \r\n" + 
					"where cartKey=?\r\n";
			try {
				setConn();
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, cartKey);
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

		public static void main(String[] args) {
			CartDAO dao = new CartDAO();
			for(CartVO2 a : dao.cartList()) {
				System.out.println(a.getCartKey());
			}
			
		}
}
