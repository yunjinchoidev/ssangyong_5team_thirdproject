package talent;

import java.util.ArrayList;

public class BoardService {
	BoardDAO boardDAO;
	BoardVO boardVO;
	
	public BoardService() {
		super();
		// TODO Auto-generated constructor stub
		
		boardDAO = new BoardDAO();
		boardVO = new BoardVO();
	};

	public ArrayList<BoardVO> listBd(){
		ArrayList<BoardVO> bdList = boardDAO.listBd();
		return bdList;
	};

	public void addBd(BoardVO b){
		
		boardDAO.insertBd(b);
	};
	
	public BoardVO viewBd(int boPostKey){
		boardVO = boardDAO.searchBdKey(boPostKey);
		System.out.println(boPostKey+"번호로 조회완료");
		return boardVO;
	}

	public void modBd(BoardVO b){
		boardDAO.updateBd(b);
	}
	
	
	
}
