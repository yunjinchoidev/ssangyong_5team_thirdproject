package cart;

import java.sql.Date;

public class CartVO2 {
	private int cartKey;
	private int cartPrice;
	private int lecKey;
	private int mKey;
	
	
	public CartVO2() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartVO2(int cartKey, int cartPrice, int lecKey, int mKey) {
		super();
		this.cartKey = cartKey;
		this.cartPrice = cartPrice;
		this.lecKey = lecKey;
		this.mKey = mKey;
	}
	public int getCartKey() {
		return cartKey;
	}
	public void setCartKey(int cartKey) {
		this.cartKey = cartKey;
	}
	public int getCartPrice() {
		return cartPrice;
	}
	public void setCartPrice(int cartPrice) {
		this.cartPrice = cartPrice;
	}
	public int getLecKey() {
		return lecKey;
	}
	public void setLecKey(int lecKey) {
		this.lecKey = lecKey;
	}
	public int getmKey() {
		return mKey;
	}
	public void setmKey(int mKey) {
		this.mKey = mKey;
	}
	
	
}
