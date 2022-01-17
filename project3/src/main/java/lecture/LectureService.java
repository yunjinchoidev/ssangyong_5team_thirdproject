package lecture;

import java.util.ArrayList;


public class LectureService {
	LectureDAO lectureDAO;
	LectureVO lectureVO;
	
	public LectureService() {
		super();
		// TODO Auto-generated constructor stub
		lectureDAO = new LectureDAO();
		lectureVO = new LectureVO();
	};

	public ArrayList<LectureVO> list(){
		ArrayList<LectureVO> thelist = lectureDAO.Alllist();
		return thelist;
	};

	public void add(LectureVO off){
		lectureDAO.insert(off);
	};
	
	public LectureVO view(int officialKey){
		return lectureDAO.searchKey(officialKey);
		
	}

	public void mod(LectureVO off){
		lectureDAO.update(off);
		
	}
	public void del (int officialKey){
		lectureDAO.delete(officialKey);
		
	}
	
}
