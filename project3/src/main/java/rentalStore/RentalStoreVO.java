package rentalStore;

import java.util.Date;

public class RentalStoreVO {
	int rentalKey;
	String rentalPname;
	int rentalterm;
	String rentalExplain;
	Date rentalStartDay;
	Date rentalEndDay;
	String proCateKey;
	int fileKey;

	public RentalStoreVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RentalStoreVO(int rentalKey, String rentalPname, int rentalterm, String rentalExplain, Date rentalStartDay,
			Date rentalEndDay, String proCateKey, int fileKey) {
		super();
		this.rentalKey = rentalKey;
		this.rentalPname = rentalPname;
		this.rentalterm = rentalterm;
		this.rentalExplain = rentalExplain;
		this.rentalStartDay = rentalStartDay;
		this.rentalEndDay = rentalEndDay;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
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

	public Date getRentalEndDay() {
		return rentalEndDay;
	}

	public void setRentalEndDay(Date rentalEndDay) {
		this.rentalEndDay = rentalEndDay;
	}

	public String getProCateKey() {
		return proCateKey;
	}

	public void setProCateKey(String proCateKey) {
		this.proCateKey = proCateKey;
	}

	public int getFileKey() {
		return fileKey;
	}

	public void setFileKey(int fileKey) {
		this.fileKey = fileKey;
	}

}
