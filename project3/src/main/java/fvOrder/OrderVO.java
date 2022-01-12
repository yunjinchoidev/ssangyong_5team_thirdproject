package fvOrder;

import java.sql.Date;

public class OrderVO {
	int orderKey;
	String sellerId;
	Date orderDate;
	String installType;
	int orderPrice;
	String payType;
	String orderEmail;
	String cardType;
	int cartKey;
	int mKey;
	int offictialKey;
	int rentalKey;
	int lecKey;
	int cusKey;
	int requKey;
	String orderstatus;

	public OrderVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderVO(int orderKey, String sellerId, Date orderDate, String installType, int orderPrice, String payType,
			String orderEmail, String cardType, int cartKey, int mKey, int offictialKey, int rentalKey, int lecKey,
			int cusKey, int requKey, String orderstatus) {
		super();
		this.orderKey = orderKey;
		this.sellerId = sellerId;
		this.orderDate = orderDate;
		this.installType = installType;
		this.orderPrice = orderPrice;
		this.payType = payType;
		this.orderEmail = orderEmail;
		this.cardType = cardType;
		this.cartKey = cartKey;
		this.mKey = mKey;
		this.offictialKey = offictialKey;
		this.rentalKey = rentalKey;
		this.lecKey = lecKey;
		this.cusKey = cusKey;
		this.requKey = requKey;
		this.orderstatus = orderstatus;
	}

	public int getOrderKey() {
		return orderKey;
	}

	public void setOrderKey(int orderKey) {
		this.orderKey = orderKey;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getInstallType() {
		return installType;
	}

	public void setInstallType(String installType) {
		this.installType = installType;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public String getOrderEmail() {
		return orderEmail;
	}

	public void setOrderEmail(String orderEmail) {
		this.orderEmail = orderEmail;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public int getCartKey() {
		return cartKey;
	}

	public void setCartKey(int cartKey) {
		this.cartKey = cartKey;
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

	public int getLecKey() {
		return lecKey;
	}

	public void setLecKey(int lecKey) {
		this.lecKey = lecKey;
	}

	public int getCusKey() {
		return cusKey;
	}

	public void setCusKey(int cusKey) {
		this.cusKey = cusKey;
	}

	public int getRequKey() {
		return requKey;
	}

	public void setRequKey(int requKey) {
		this.requKey = requKey;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

}
