package rentalStore;

import java.util.ArrayList;


public class RentalStoreTService {
	RentalStoreTDAO RentalStoreTDAO;
	RentalStoreTVO RentalStoreTVO;
	
	public RentalStoreTService() {
		super();
		// TODO Auto-generated constructor stub
		RentalStoreTDAO = new RentalStoreTDAO();
		RentalStoreTVO = new RentalStoreTVO();
	};

	public ArrayList<RentalStoreTVO> list(){
		ArrayList<RentalStoreTVO> thelist = RentalStoreTDAO.list();
		return thelist;
	};

	public void add(RentalStoreTVO off){
		RentalStoreTDAO.insert(off);
	};
	
	public RentalStoreTVO view(int officialKey){
		return RentalStoreTDAO.searchKey(officialKey);
		
	}

	public void mod(RentalStoreTVO off){
		RentalStoreTDAO.update(off);
		
	}
	public void del (int officialKey){
		RentalStoreTDAO.delete(officialKey);
		
	}
	
}
