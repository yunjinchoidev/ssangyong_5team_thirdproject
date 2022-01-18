package fvOrder;

import java.sql.Date;

public class FvOrderVO {
	int orderKey;
	String sellerId;
	Date orderDate;
	String orderDateS;
	String installType;
	int orderPrice;
	String payType;
	String orderEmail;
	String cardType;
	int cartKey;
	int mKey;
	String orderstatus;

	public FvOrderVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FvOrderVO(int orderKey, String sellerId, Date orderDate, String orderDateS, String installType,
			int orderPrice, String payType, String orderEmail, String cardType, int cartKey, int mKey,
			String orderstatus) {
		super();
		this.orderKey = orderKey;
		this.sellerId = sellerId;
		this.orderDate = orderDate;
		this.orderDateS = orderDateS;
		this.installType = installType;
		this.orderPrice = orderPrice;
		this.payType = payType;
		this.orderEmail = orderEmail;
		this.cardType = cardType;
		this.cartKey = cartKey;
		this.mKey = mKey;
		this.orderstatus = orderstatus;
	}

	public FvOrderVO(int orderKey, String sellerId, Date orderDate, String installType, int orderPrice, String payType,
			String orderEmail, String cardType, int cartKey, int mKey, String orderstatus) {
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
		this.orderstatus = orderstatus;
	}

	public FvOrderVO(int orderKey, String sellerId, String orderDateS, String installType, int orderPrice,
			String payType, String orderEmail, String cardType, int cartKey, int mKey, String orderstatus) {
		super();
		this.orderKey = orderKey;
		this.sellerId = sellerId;
		this.orderDateS = orderDateS;
		this.installType = installType;
		this.orderPrice = orderPrice;
		this.payType = payType;
		this.orderEmail = orderEmail;
		this.cardType = cardType;
		this.cartKey = cartKey;
		this.mKey = mKey;
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

	public String getOrderDateS() {
		return orderDateS;
	}

	public void setOrderDateS(String orderDateS) {
		this.orderDateS = orderDateS;
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

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

}
