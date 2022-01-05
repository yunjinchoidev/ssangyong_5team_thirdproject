package payment;

import java.sql.Date;

public class Order {
	int orderKey;
	String sellerId;
	Date orderDate;
	String installmentType;
	int orderPrice;
	String payType;
	String orderingPsnEmail;
	String cardType;
	int mKey;
	int cusKey;
	String orderstatus;
	int cartKey;
	int lecKey;
	int offictialKey;
	int rentalKey;
	int rcKey;
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(int orderKey, String sellerId, Date orderDate, String installmentType, int orderPrice, String payType,
			String orderingPsnEmail, String cardType, int mKey, int cusKey, String orderstatus, int cartKey, int lecKey,
			int offictialKey, int rentalKey, int rcKey) {
		super();
		this.orderKey = orderKey;
		this.sellerId = sellerId;
		this.orderDate = orderDate;
		this.installmentType = installmentType;
		this.orderPrice = orderPrice;
		this.payType = payType;
		this.orderingPsnEmail = orderingPsnEmail;
		this.cardType = cardType;
		this.mKey = mKey;
		this.cusKey = cusKey;
		this.orderstatus = orderstatus;
		this.cartKey = cartKey;
		this.lecKey = lecKey;
		this.offictialKey = offictialKey;
		this.rentalKey = rentalKey;
		this.rcKey = rcKey;
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
	public String getInstallmentType() {
		return installmentType;
	}
	public void setInstallmentType(String installmentType) {
		this.installmentType = installmentType;
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
	public String getOrderingPsnEmail() {
		return orderingPsnEmail;
	}
	public void setOrderingPsnEmail(String orderingPsnEmail) {
		this.orderingPsnEmail = orderingPsnEmail;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
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
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	public int getCartKey() {
		return cartKey;
	}
	public void setCartKey(int cartKey) {
		this.cartKey = cartKey;
	}
	public int getLecKey() {
		return lecKey;
	}
	public void setLecKey(int lecKey) {
		this.lecKey = lecKey;
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
	public int getRcKey() {
		return rcKey;
	}
	public void setRcKey(int rcKey) {
		this.rcKey = rcKey;
	}
	
	
}
