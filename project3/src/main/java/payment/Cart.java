package payment;

import java.sql.Date;

public class Cart {
	private int cartKey;
	private Date cartDate;
	private int cartCnt;
	private int mKey;
	private int cusKey;
	private int rentalKey;
	private int offictialKey;
	private int lecKey;
	private int rcKey;

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cartKey, Date cartDate, int cartCnt, int mKey, int cusKey, int rentalKey, int offictialKey,
			int lecKey, int rcKey) {
		super();
		this.cartKey = cartKey;
		this.cartDate = cartDate;
		this.cartCnt = cartCnt;
		this.mKey = mKey;
		this.cusKey = cusKey;
		this.rentalKey = rentalKey;
		this.offictialKey = offictialKey;
		this.lecKey = lecKey;
		this.rcKey = rcKey;
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

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

	public int getCusKey() {
		return cusKey;
	}

	public void setCusKey(int cusKey) {
		this.cusKey = cusKey;
	}

	public int getRentalKey() {
		return rentalKey;
	}

	public void setRentalKey(int rentalKey) {
		this.rentalKey = rentalKey;
	}

	public int getOffictialKey() {
		return offictialKey;
	}

	public void setOffictialKey(int offictialKey) {
		this.offictialKey = offictialKey;
	}

	public int getLecKey() {
		return lecKey;
	}

	public void setLecKey(int lecKey) {
		this.lecKey = lecKey;
	}

	public int getRcKey() {
		return rcKey;
	}

	public void setRcKey(int rcKey) {
		this.rcKey = rcKey;
	}

}
