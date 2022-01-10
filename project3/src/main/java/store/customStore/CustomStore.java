package store.customStore;

import java.sql.Date;

public class CustomStore {
	private int cusKey;
	private String cusPname;
	private String cusExplain;
	private Date cusRegDate;
	private Date cusModiDate;
	private int cusStock;
	private int cusDiscount;
	private int mKey;
	private String proCateKey;
	private int fileKey;

	public CustomStore() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomStore(int cusKey, String cusPname, String cusExplain, Date cusRegDate, Date cusModiDate, int cusStock,
			int cusDiscount, int mKey, String proCateKey, int fileKey) {
		super();
		this.cusKey = cusKey;
		this.cusPname = cusPname;
		this.cusExplain = cusExplain;
		this.cusRegDate = cusRegDate;
		this.cusModiDate = cusModiDate;
		this.cusStock = cusStock;
		this.cusDiscount = cusDiscount;
		this.mKey = mKey;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
	}

	public int getCusKey() {
		return cusKey;
	}

	public void setCusKey(int cusKey) {
		this.cusKey = cusKey;
	}

	public String getCusPname() {
		return cusPname;
	}

	public void setCusPname(String cusPname) {
		this.cusPname = cusPname;
	}

	public String getCusExplain() {
		return cusExplain;
	}

	public void setCusExplain(String cusExplain) {
		this.cusExplain = cusExplain;
	}

	public Date getCusRegDate() {
		return cusRegDate;
	}

	public void setCusRegDate(Date cusRegDate) {
		this.cusRegDate = cusRegDate;
	}

	public Date getCusModiDate() {
		return cusModiDate;
	}

	public void setCusModiDate(Date cusModiDate) {
		this.cusModiDate = cusModiDate;
	}

	public int getCusStock() {
		return cusStock;
	}

	public void setCusStock(int cusStock) {
		this.cusStock = cusStock;
	}

	public int getCusDiscount() {
		return cusDiscount;
	}

	public void setCusDiscount(int cusDiscount) {
		this.cusDiscount = cusDiscount;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
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
