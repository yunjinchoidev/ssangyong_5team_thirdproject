package fvOrder;

import java.util.ArrayList;


public class FvOrderService {
	FvOrderDAO fvOrderDAO;
	FvOrderVO fvOrderVO;
	
	public FvOrderService() {
		super();
		// TODO Auto-generated constructor stub
		fvOrderDAO = new FvOrderDAO();
		fvOrderVO = new FvOrderVO();
	};

	public ArrayList<FvOrderVO> list(){
		ArrayList<FvOrderVO> thelist = fvOrderDAO.Alllist();
		return thelist;
	};

	public void add(FvOrderVO off){
		fvOrderDAO.insert(off);
	};
	
	public FvOrderVO view(int officialKey){
		return fvOrderDAO.searchKey(officialKey);
		
	}

	public void mod(FvOrderVO off){
		fvOrderDAO.update(off);
		
	}
	public void del (int officialKey){
		fvOrderDAO.delete(officialKey);
		
	}
	
}
