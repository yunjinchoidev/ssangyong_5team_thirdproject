package cart;

import java.sql.Date;

public class CartVO {
	private int cartKey;
	private Date cartDate;
	private String cartDateS;
	private int cartCnt;
	private int cartPrice;
	private int mKey;
	private int officialKey;
	private int rentalKey;
	private int cusKey;
	private int lecKey;
	private int requKey;

	public CartVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartVO(int cartKey, Date cartDate, String cartDateS, int cartCnt, int cartPrice, int mKey, int officialKey,
			int rentalKey, int cusKey, int lecKey, int requKey) {
		super();
		this.cartKey = cartKey;
		this.cartDate = cartDate;
		this.cartDateS = cartDateS;
		this.cartCnt = cartCnt;
		this.cartPrice = cartPrice;
		this.mKey = mKey;
		this.officialKey = officialKey;
		this.rentalKey = rentalKey;
		this.cusKey = cusKey;
		this.lecKey = lecKey;
		this.requKey = requKey;
	}

	public CartVO(int cartKey, String cartDateS, int cartCnt, int cartPrice, int mKey, int officialKey, int rentalKey,
			int cusKey, int lecKey, int requKey) {
		super();
		this.cartKey = cartKey;
		this.cartDateS = cartDateS;
		this.cartCnt = cartCnt;
		this.cartPrice = cartPrice;
		this.mKey = mKey;
		this.officialKey = officialKey;
		this.rentalKey = rentalKey;
		this.cusKey = cusKey;
		this.lecKey = lecKey;
		this.requKey = requKey;
	}

	public CartVO(int cartKey, Date cartDate, int cartCnt, int cartPrice, int mKey, int officialKey, int rentalKey,
			int cusKey, int lecKey, int requKey) {
		super();
		this.cartKey = cartKey;
		this.cartDate = cartDate;
		this.cartCnt = cartCnt;
		this.cartPrice = cartPrice;
		this.mKey = mKey;
		this.officialKey = officialKey;
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

	public String getCartDateS() {
		return cartDateS;
	}

	public void setCartDateS(String cartDateS) {
		this.cartDateS = cartDateS;
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

	public int getOfficialKey() {
		return officialKey;
	}

	public void setOfficialKey(int officialKey) {
		this.officialKey = officialKey;
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
