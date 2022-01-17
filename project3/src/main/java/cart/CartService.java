package cart;

import java.util.ArrayList;


public class CartService {
	OfficialStoreTestDAO officialStoreTestDAO;
	OfficialStoreTestVO officialStoreTestVO;
	
	public CartService() {
		super();
		// TODO Auto-generated constructor stub
		officialStoreTestDAO = new OfficialStoreTestDAO();
		officialStoreTestVO = new OfficialStoreTestVO();
	};

	public ArrayList<OfficialStoreTestVO> list(){
		ArrayList<OfficialStoreTestVO> thelist = officialStoreTestDAO.Alllist();
		return thelist;
	};

	public void add(OfficialStoreTestVO off){
		officialStoreTestDAO.insert(off);
	};
	
	public OfficialStoreTestVO view(int officialKey){
		return officialStoreTestDAO.searchKey(officialKey);
		
	}

	public void mod(OfficialStoreTestVO off){
		officialStoreTestDAO.update(off);
		
	}
	public void del (int officialKey){
		officialStoreTestDAO.delete(officialKey);
		
	}
	
}
