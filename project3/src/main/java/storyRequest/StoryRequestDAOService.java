package storyRequest;

import java.util.ArrayList;


public class StoryRequestDAOService {
	StoryRequestDAO storyRequestDAO;
	StoryRequestVO storyRequestVO;
	
	public StoryRequestDAOService() {
		super();
		// TODO Auto-generated constructor stub
		storyRequestDAO = new StoryRequestDAO();
		storyRequestVO = new StoryRequestVO();
	};

	public ArrayList<StoryRequestVO> list(){
		ArrayList<StoryRequestVO> thelist = storyRequestDAO.list();
		return thelist;
	};

	public void add(StoryRequestVO off){
		storyRequestDAO.insert(off);
	};
	
	public StoryRequestVO view(int officialKey){
		return storyRequestDAO.searchKey(officialKey);
		
	}

	public void mod(StoryRequestVO off){
		storyRequestDAO.update(off);
		
	}
	public void del (int officialKey){
		storyRequestDAO.deleterq(officialKey);
		
	}
	
}
