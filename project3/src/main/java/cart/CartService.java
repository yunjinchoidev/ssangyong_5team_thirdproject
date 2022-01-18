package cart;

import java.util.ArrayList;


public class CartService {
	CartDAO cartDAO;
	CartVO cartVO;
	
	public CartService() {
		super();
		// TODO Auto-generated constructor stub
		cartDAO = new CartDAO();
		cartVO = new CartVO();
	};

	public ArrayList<CartVO> list(int cartKey){
		ArrayList<CartVO> thelist = cartDAO.searchKey(cartKey);
		return thelist;
	};

	public void add(CartVO off){
		cartDAO.insert(off);
	};
	
	public CartVO view(int cartKey){
		CartVO thelist = cartDAO.searchKey02(cartKey);
		return thelist;
		
	}

	public void mod(CartVO off){
		cartDAO.update(off);
		
	}
	public void del (int officialKey){
		cartDAO.delete(officialKey);
		
	}
	
}
