package customStore;

import java.util.ArrayList;


public class CustomStoreService {
	CustomStoreDAO customStoreDAO;
	CustomStoreVO customStoreVO;
	
	public CustomStoreService() {
		super();
		// TODO Auto-generated constructor stub
		customStoreDAO = new CustomStoreDAO();
		customStoreVO = new CustomStoreVO();
	};

	public ArrayList<CustomStoreVO> list(){
		ArrayList<CustomStoreVO> thelist = customStoreDAO.Alllist();
		return thelist;
	};

	public void add(CustomStoreVO off){
		customStoreDAO.insert(off);
	};
	
	public CustomStoreVO view(int officialKey){
		return customStoreDAO.searchKey(officialKey);
		
	}

	public void mod(CustomStoreVO off){
		customStoreDAO.update(off);
		
	}
	public void del (int officialKey){
		customStoreDAO.delete(officialKey);
		
	}
	
}
