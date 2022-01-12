package cart;

import java.sql.Date;

public class CartVO {
	private int cartKey;
	private Date cartDate;
	private int cartCnt;
	private int cartPrice;
	private int mKey;
	private int offictialKey;
	private int rentalKey;
	private int cusKey;
	private int lecKey;
	private int requKey;

	public CartVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartVO(int cartKey, Date cartDate, int cartCnt, int cartPrice, int mKey, int offictialKey, int rentalKey,
			int cusKey, int lecKey, int requKey) {
		super();
		this.cartKey = cartKey;
		this.cartDate = cartDate;
		this.cartCnt = cartCnt;
		this.cartPrice = cartPrice;
		this.mKey = mKey;
		this.offictialKey = offictialKey;
		this.rentalKey = rentalKey;
		this.cusKey = cusKey;
		this.lecKey = lecKey;
		this.requKey = requKey;
	}

	public int getCartKey() {
		return cartKey;
	}

	public void setCartKey(int cartKey) {
		this.cartKey = cartKey;
	}

	public Date getCartDate() {
		return cartDate;
	}

	public void setCartDate(Date cartDate) {
		this.cartDate = cartDate;
	}

	public int getCartCnt() {
		return cartCnt;
	}

	public void setCartCnt(int cartCnt) {
		this.cartCnt = cartCnt;
	}

	public int getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(int cartPrice) {
		this.cartPrice = cartPrice;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

	public int getOffictialKey() {
		return offictialKey;
	}

	public void setOffictialKey(int offictialKey) {
		this.offictialKey = offictialKey;
	}

	public int getRentalKey() {
		return rentalKey;
	}

	public void setRentalKey(int rentalKey) {
		this.rentalKey = rentalKey;
	}

	public int getCusKey() {
		return cusKey;
	}

	public void setCusKey(int cusKey) {
		this.cusKey = cusKey;
	}

	public int getLecKey() {
		return lecKey;
	}

	public void setLecKey(int lecKey) {
		this.lecKey = lecKey;
	}

	public int getRequKey() {
		return requKey;
	}

	public void setRequKey(int requKey) {
		this.requKey = requKey;
	}

}
