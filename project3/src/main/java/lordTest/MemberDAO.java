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

import harrypotter.HarryPotterVO;
import lord.LordVO;
import marvel.MarvelVO;



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
				+ "mlevel, maddress,mmygift ,MSELLERRATE,mgiftlevel,MIP,MMANIAQUOT,MCASH,MPOINT,MGIFTDONECNT,MGIFTDONEEXIST)\r\n"
				+ "VALUES (\r\n"
				+ "(SELECT NVL(MAX(mkey)+1,1) FROM MEMBER),?,?,?"
				+ ",?,?,?,?,\r\n"
				+ "?, sysdate, 0,?,'없음', 0.0, 0, '192.100.0.0',0,0,0,0,'N')";
		
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
	
	
	// 회원가입 시 해리포터 정보 등록
	public void insertPotter(HarryPotterVO potter) {
		String sql="INSERT INTO potter(HARRYKEY, harrycharacter, harrydomioty\r\n"
				+ ", harrymagiclevel, harrybirth, harrymagic, harryheight,harryweight,mkey) VALUES(\r\n"
				+ "(SELECT NVL(MAX(harrykey)+1,1) FROM POTTER),'미지정','미지정',\r\n"
				+ "'0','미지정','미지정',0,0,(SELECT NVL(MAX(mkey)+1,1) FROM POTTER))";
		
		try {
			setConn();
			
			 con.setAutoCommit(false);
	         pstmt = con.prepareStatement(sql);
	         
	         pstmt.executeUpdate();
	
	         con.commit();
	         // 자원해제
	         pstmt.close(); con.close();
		} catch (SQLException e) {
			System.out.println("해리포터 DAO오류:"+e.getMessage());
	
	         try {
	            con.rollback();
	         } catch (SQLException e1) {
	            // TODO Auto-generated catch block
	            e1.printStackTrace();
	         }
	         closeRsc();
		}
	}
	
	// 회원가입 시 마블 정보 등록
		public void insertMarvel(MarvelVO marvel) {
			String sql="INSERT INTO marvel(marvelkey, marvelCharacter, MarvelAbility, MarvelHobby,\r\n"
					+ "MarvelHeight,MarvelWeight,mkey) \r\n"
					+ "VALUES ((SELECT NVL(MAX(MARVELKEY)+1,1) FROM MARVEL),"
					+ "'미지정','미지정','미지정',0,0,(SELECT NVL(MAX(mkey)+1,1)FROM MARVEL))";
			
			try {
				setConn();
				
				 con.setAutoCommit(false);
		         pstmt = con.prepareStatement(sql);
		         
		         pstmt.executeUpdate();
		
		         con.commit();
		         // 자원해제
		         pstmt.close(); con.close();
			} catch (SQLException e) {
				System.out.println("마블 DAO오류:"+e.getMessage());
		
		         try {
		            con.rollback();
		         } catch (SQLException e1) {
		            // TODO Auto-generated catch block
		            e1.printStackTrace();
		         }
		         closeRsc();
			}
		}

		
		// 회원가입 시 반지의제왕 정보 등록
				public void insertLord(LordVO lord) {
					String sql="INSERT INTO lord(lordKey, lordCharacter, lordTribe, lordPaciBattle,\r\n"
							+ "lordloc,lordHeight,lordWeight,mKey) \r\n"
							+ "VALUES ((SELECT NVL(MAX(lordKey)+1,1) FROM lord),'미지정','미지정'\r\n"
							+ ",'미지정','미지정',0,0,(SELECT NVL(MAX(mkey)+1,1)FROM lord))";
					
					try {
						setConn();
						
						 con.setAutoCommit(false);
				         pstmt = con.prepareStatement(sql);
				         
				         pstmt.executeUpdate();
				
				         con.commit();
				         // 자원해제
				         pstmt.close(); con.close();
					} catch (SQLException e) {
						System.out.println("반지의제왕 DAO오류:"+e.getMessage());
				
				         try {
				            con.rollback();
				         } catch (SQLException e1) {
				            // TODO Auto-generated catch block
				            e1.printStackTrace();
				         }
				         closeRsc();
					}
				}
		
	// 회원정보 리스트
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

		// 마이페이지 회원정보 리스트
	public ArrayList<MemberVO> mymemberlist(String id, String pass) {
		
		ArrayList<MemberVO> mymemberlist = new ArrayList<MemberVO>();
		
		try {
			setConn();
			String sql = "SELECT MNAME , MID ,NICKNAME ,MLEVEL , MMANIAQUOT , MCASH ,\r\n"
					+ "MPOINT , MGIFTLEVEL , MMYGIFT, MGIFTDONEEXIST, MGIFTDONECNT \r\n"
					+ "FROM MEMBER\r\n"
					+ "WHERE mid='"+id+"'\r\n"
					+ "AND mpass='"+pass+"'";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
			int row=1;
			while(rs.next()) {
				mymemberlist.add(new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3),rs.getInt(4)
						,rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),
						rs.getString(9),rs.getString(10),rs.getInt(11)));
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
		return mymemberlist;
	}
	
	
	// 회원정보 마블 정보 리스트
		public ArrayList<MarvelVO> mymarvellist(String id, String pass) {
			
			ArrayList<MarvelVO> mymarvellist = new ArrayList<MarvelVO>();
			
			try {
				setConn();
				String sql = "SELECT  marvelCharacter\r\n"
						+ "FROM marvel\r\n"
						+ "WHERE MKEY = (SELECT mkey\r\n"
						+ "FROM MEMBER\r\n"
						+ "WHERE mid='"+id+"'\r\n"
						+ "AND mpass = '"+pass+"')";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				
				int row=1;
				while(rs.next()) {
					mymarvellist.add(new MarvelVO(rs.getString(1)));
					System.out.println(row+++"행");
					System.out.print(rs.getInt(1)+"\t");
								
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
			return mymarvellist;
		}
		
		// 회원정보 반지의제왕 정보 리스트
				public ArrayList<LordVO> mylordllist(String id, String pass) {
					
					ArrayList<LordVO> mylordllist = new ArrayList<LordVO>();
					
					try {
						setConn();
						String sql = "SELECT  lordCharacter\r\n"
								+ "FROM lord\r\n"
								+ "WHERE MKEY = (SELECT mkey\r\n"
								+ "FROM MEMBER\r\n"
								+ "WHERE mid='"+id+"'\r\n"
								+ "AND mpass = '"+pass+"')";
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery(sql);
						
						int row=1;
						while(rs.next()) {
							mylordllist.add(new LordVO(rs.getString(1)));
							System.out.println(row+++"행");
							System.out.print(rs.getInt(1)+"\t");
										
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
					return mylordllist;
				}
		
		// 회원정보 해리포터 정보 리스트
				public ArrayList<HarryPotterVO> mypotterlist(String id, String pass) {
					
					ArrayList<HarryPotterVO> mypotterlist = new ArrayList<HarryPotterVO>();
					
					try {
						setConn();
						String sql = "SELECT HARRYMAGICLEVEL , HARRYCHARACTER , HARRYDOMIOTY \r\n"
								+ "FROM POTTER\r\n"
								+ "WHERE MKEY = (SELECT mkey\r\n"
								+ "FROM MEMBER\r\n"
								+ "WHERE mid='"+id+"'\r\n"
								+ "AND mpass = '"+pass+"')";
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery(sql);
						
						int row=1;
						while(rs.next()) {
							mypotterlist.add(new HarryPotterVO(rs.getString(1), rs.getString(2), rs.getString(3)));
							System.out.println(row+++"행");
							System.out.print(rs.getInt(1)+"\t");// select를 통해서 데이터 순서로 1부터
							System.out.print(rs.getString(2)+"\t"); 
							System.out.print(rs.getString(3)+"\n");
										
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
					return mypotterlist;
				}

	// 회원정보 수정 멤버
	   public void updateMember(MemberVO upt, String id, String pass) {
	      try {
	         setConn();
	         con.setAutoCommit(false);
	       
	         String sql ="UPDATE MEMBER \r\n"
	         		+ "SET nickname=?,\r\n"
	         		+ "memail=?,\r\n"
	         		+ "phonenum = ?,\r\n"
	         		+ "maddress=?,\r\n"
	         		+ "MGIFTDONEEXIST = ?, \r\n"
	         		+ "MMYGIFT=?\r\n"
	         		+ "WHERE MID = '"+id+"'\r\n"
	         		+ "AND MPASS = '"+pass+"' ";
	               
	               pstmt = con.prepareStatement(sql);
	               pstmt.setString(1, upt.getNickname());
	               pstmt.setString(2, upt.getmEmail());
	               pstmt.setString(3, upt.getPhonenum());
	               pstmt.setString(4, upt.getmAddress());
	               pstmt.setString(5, upt.getmGiftDoneExist());
	               pstmt.setString(6, upt.getmMyGift());
	               pstmt.executeUpdate();
	               con.commit();
	               pstmt.close();
	               con.close();
	               
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         System.out.println("회원정보수정 예외:"+e.getMessage());
	         try {
	            con.rollback();
	         } catch (SQLException e1) {
	            // TODO Auto-generated catch block
	            e1.printStackTrace();
	         }
	         closeRsc();
	      }catch(Exception e) {
	         System.out.println("일반 예외"+e.getMessage());
	      }
	   }
	   
	   
	// 회원정보 수정 해리포터
	   public void updatePotter(HarryPotterVO potterupt, String id, String pass) {
	      try {
	         setConn();
	         con.setAutoCommit(false);
	       
	         String sql ="UPDATE potter\r\n"
	         		+ "SET harrycharacter=?\r\n"
	         		+ "WHERE mkey = (SELECT mkey\r\n"
	         		+ "FROM MEMBER\r\n"
	         		+ "WHERE mid = '"+id+"'\r\n"
	         		+ "AND mpass='"+pass+"')";
	               
	               pstmt = con.prepareStatement(sql);
	               pstmt.setString(1, potterupt.getHarryCharacter());
	               
	               pstmt.executeUpdate();
	               con.commit();
	               pstmt.close();
	               con.close();
	               
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         System.out.println("회원정보-해리포터 수정 예외:"+e.getMessage());
	         try {
	            con.rollback();
	         } catch (SQLException e1) {
	            // TODO Auto-generated catch block
	            e1.printStackTrace();
	         }
	         closeRsc();
	      }catch(Exception e) {
	         System.out.println("일반 예외"+e.getMessage());
	      }
	   }
	   
	   
	// 회원정보 수정 반지의제왕
	   public void updateLord(LordVO lordupt, String id, String pass) {
	      try {
	         setConn();
	         con.setAutoCommit(false);
	       
	         String sql ="UPDATE lord\r\n"
	         		+ "SET LORDCHARACTER=?\r\n"
	         		+ "WHERE mkey = (SELECT mkey\r\n"
	         		+ "FROM MEMBER\r\n"
	         		+ "WHERE mid = '"+id+"'\r\n"
	         		+ "AND mpass='"+pass+"')";
	               
	               pstmt = con.prepareStatement(sql);
	               pstmt.setString(1, lordupt.getLoadCharacter());
	               
	               pstmt.executeUpdate();
	               con.commit();
	               pstmt.close();
	               con.close();
	               
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         System.out.println("회원정보-해리포터 수정 예외:"+e.getMessage());
	         try {
	            con.rollback();
	         } catch (SQLException e1) {
	            // TODO Auto-generated catch block
	            e1.printStackTrace();
	         }
	         closeRsc();
	      }catch(Exception e) {
	         System.out.println("일반 예외"+e.getMessage());
	      }
	   }
	   
	   
	// 회원정보 수정 마블
	   public void updateMarvel(MarvelVO marvelupt, String id, String pass) {
	      try {
	         setConn();
	         con.setAutoCommit(false);
	       
	         String sql ="UPDATE marvel\r\n"
	         		+ "SET MARVELCHARACTER=?\r\n"
	         		+ "WHERE mkey = (SELECT mkey\r\n"
	         		+ "FROM MEMBER\r\n"
	         		+ "WHERE mid = '"+id+"'\r\n"
	         		+ "AND mpass='"+pass+"')";
	               
	               pstmt = con.prepareStatement(sql);
	               pstmt.setString(1, marvelupt.getMarvelCharacter());
	               
	               pstmt.executeUpdate();
	               con.commit();
	               pstmt.close();
	               con.close();
	               
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         System.out.println("회원정보-해리포터 수정 예외:"+e.getMessage());
	         try {
	            con.rollback();
	         } catch (SQLException e1) {
	            // TODO Auto-generated catch block
	            e1.printStackTrace();
	         }
	         closeRsc();
	      }catch(Exception e) {
	         System.out.println("일반 예외"+e.getMessage());
	      }
	   }

	   
	// 해리포터 기숙사 수정
	   public void updateDorm(HarryPotterVO potterdorm, String id, String pass) {
	      try {
	         setConn();
	         con.setAutoCommit(false);
	       
	         String sql ="UPDATE potter\r\n"
	         		+ "SET HARRYDOMIOTY=?\r\n"
	         		+ "WHERE mkey = (SELECT mkey\r\n"
	         		+ "FROM MEMBER\r\n"
	         		+ "WHERE mid = '"+id+"'\r\n"
	         		+ "AND mpass='"+pass+"')";
	               
	               pstmt = con.prepareStatement(sql);
	               pstmt.setString(1, potterdorm.getHarryDomioty());
	               
	               pstmt.executeUpdate();
	               con.commit();
	               pstmt.close();
	               con.close();
	               
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         System.out.println("회원정보-해리포터 수정 예외:"+e.getMessage());
	         try {
	            con.rollback();
	         } catch (SQLException e1) {
	            // TODO Auto-generated catch block
	            e1.printStackTrace();
	         }
	         closeRsc();
	      }catch(Exception e) {
	         System.out.println("일반 예외"+e.getMessage());
	      }
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

	//public Emp(String ename, String job, double sal, String hiredates, int deptno, int empno) {}   

}


