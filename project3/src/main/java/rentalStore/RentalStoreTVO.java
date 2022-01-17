package rentalStore;

import java.util.Date;

public class RentalStoreTVO {
	int rentalKey;
	String rentalPname;
	int rentalterm;
	String rentalExplain;
	Date rentalStartDay;
	String rentalStartDayS;
	Date rentalEndDay;
	String rentalEndDayS;
	int proCateKey;
	String fileKey;
	int rentPrice;
	public RentalStoreTVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RentalStoreTVO(int rentalKey, String rentalPname, int rentalterm, String rentalExplain, Date rentalStartDay,
			String rentalStartDayS, Date rentalEndDay, String rentalEndDayS, int proCateKey, String fileKey,
			int rentPrice) {
		super();
		this.rentalKey = rentalKey;
		this.rentalPname = rentalPname;
		this.rentalterm = rentalterm;
		this.rentalExplain = rentalExplain;
		this.rentalStartDay = rentalStartDay;
		this.rentalStartDayS = rentalStartDayS;
		this.rentalEndDay = rentalEndDay;
		this.rentalEndDayS = rentalEndDayS;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
		this.rentPrice = rentPrice;
	}
	public RentalStoreTVO(int rentalKey, String rentalPname, int rentalterm, String rentalExplain, Date rentalStartDay,
			Date rentalEndDay, int proCateKey, String fileKey, int rentPrice) {
		super();
		this.rentalKey = rentalKey;
		this.rentalPname = rentalPname;
		this.rentalterm = rentalterm;
		this.rentalExplain = rentalExplain;
		this.rentalStartDay = rentalStartDay;
		this.rentalEndDay = rentalEndDay;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
		this.rentPrice = rentPrice;
	}
	public RentalStoreTVO(int rentalKey, String rentalPname, int rentalterm, String rentalExplain,
			String rentalStartDayS, String rentalEndDayS, int proCateKey, String fileKey, int rentPrice) {
		super();
		this.rentalKey = rentalKey;
		this.rentalPname = rentalPname;
		this.rentalterm = rentalterm;
		this.rentalExplain = rentalExplain;
		this.rentalStartDayS = rentalStartDayS;
		this.rentalEndDayS = rentalEndDayS;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
		this.rentPrice = rentPrice;
	}
	public int getRentalKey() {
		return rentalKey;
	}
	public void setRentalKey(int rentalKey) {
		this.rentalKey = rentalKey;
	}
	public String getRentalPname() {
		return rentalPname;
	}
	public void setRentalPname(String rentalPname) {
		this.rentalPname = rentalPname;
	}
	public int getRentalterm() {
		return rentalterm;
	}
	public void setRentalterm(int rentalterm) {
		this.rentalterm = rentalterm;
	}
	public String getRentalExplain() {
		return rentalExplain;
	}
	public void setRentalExplain(String rentalExplain) {
		this.rentalExplain = rentalExplain;
	}
	public Date getRentalStartDay() {
		return rentalStartDay;
	}
	public void setRentalStartDay(Date rentalStartDay) {
		this.rentalStartDay = rentalStartDay;
	}
	public String getRentalStartDayS() {
		return rentalStartDayS;
	}
	public void setRentalStartDayS(String rentalStartDayS) {
		this.rentalStartDayS = rentalStartDayS;
	}
	public Date getRentalEndDay() {
		return rentalEndDay;
	}
	public void setRentalEndDay(Date rentalEndDay) {
		this.rentalEndDay = rentalEndDay;
	}
	public String getRentalEndDayS() {
		return rentalEndDayS;
	}
	public void setRentalEndDayS(String rentalEndDayS) {
		this.rentalEndDayS = rentalEndDayS;
	}
	public int getProCateKey() {
		return proCateKey;
	}
	public void setProCateKey(int proCateKey) {
		this.proCateKey = proCateKey;
	}
	public String getFileKey() {
		return fileKey;
	}
	public void setFileKey(String fileKey) {
		this.fileKey = fileKey;
	}
	public int getRentPrice() {
		return rentPrice;
	}
	public void setRentPrice(int rentPrice) {
		this.rentPrice = rentPrice;
	}
	
	
	
}
