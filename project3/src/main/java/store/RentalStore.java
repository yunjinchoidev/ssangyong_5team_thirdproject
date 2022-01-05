package store;

import java.sql.Date;

public class RentalStore {
	int rentalKey;
	String rentalPname;
	int rentalterm;
	Date rentalStartDay;
	Date rentalEndDay;
	int fileKey;
	String proCateKey;

	public RentalStore() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RentalStore(int rentalKey, String rentalPname, int rentalterm, Date rentalStartDay, Date rentalEndDay,
			int fileKey, String proCateKey) {
		super();
		this.rentalKey = rentalKey;
		this.rentalPname = rentalPname;
		this.rentalterm = rentalterm;
		this.rentalStartDay = rentalStartDay;
		this.rentalEndDay = rentalEndDay;
		this.fileKey = fileKey;
		this.proCateKey = proCateKey;
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

	public Date getRentalStartDay() {
		return rentalStartDay;
	}

	public void setRentalStartDay(Date rentalStartDay) {
		this.rentalStartDay = rentalStartDay;
	}

	public Date getRentalEndDay() {
		return rentalEndDay;
	}

	public void setRentalEndDay(Date rentalEndDay) {
		this.rentalEndDay = rentalEndDay;
	}

	public int getFileKey() {
		return fileKey;
	}

	public void setFileKey(int fileKey) {
		this.fileKey = fileKey;
	}

	public String getProCateKey() {
		return proCateKey;
	}

	public void setProCateKey(String proCateKey) {
		this.proCateKey = proCateKey;
	}

}
