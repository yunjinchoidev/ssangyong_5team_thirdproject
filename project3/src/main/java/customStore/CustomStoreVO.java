package customStore;

import java.sql.Date;

public class CustomStoreVO {
	private int cusKey;
	private String cusPname;
	private String cusExplain;
	private Date cusRegDate;
	private String cusRegDateS;
	private Date cusModiDate;
	private String cusModiDateS;
	private int cusStock;
	private int cusDiscount;
	private int mKey;
	private int proCateKey;
	private String fileKey;
	public CustomStoreVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public CustomStoreVO(int cusKey, String cusPname, String cusExplain, Date cusRegDate, String cusRegDateS,
			Date cusModiDate, String cusModiDateS, int cusStock, int cusDiscount, int mKey, int proCateKey,
			String fileKey) {
		super();
		this.cusKey = cusKey;
		this.cusPname = cusPname;
		this.cusExplain = cusExplain;
		this.cusRegDate = cusRegDate;
		this.cusRegDateS = cusRegDateS;
		this.cusModiDate = cusModiDate;
		this.cusModiDateS = cusModiDateS;
		this.cusStock = cusStock;
		this.cusDiscount = cusDiscount;
		this.mKey = mKey;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
	}



	public CustomStoreVO(int cusKey, String cusPname, String cusExplain, String cusRegDateS, String cusModiDateS,
			int cusStock, int cusDiscount, int mKey, int proCateKey, String fileKey) {
		super();
		this.cusKey = cusKey;
		this.cusPname = cusPname;
		this.cusExplain = cusExplain;
		this.cusRegDateS = cusRegDateS;
		this.cusModiDateS = cusModiDateS;
		this.cusStock = cusStock;
		this.cusDiscount = cusDiscount;
		this.mKey = mKey;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
	}



	public CustomStoreVO(int cusKey, String cusPname, String cusExplain, Date cusRegDate, Date cusModiDate,
			int cusStock, int cusDiscount, int mKey, int proCateKey, String fileKey) {
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
	public String getCusRegDateS() {
		return cusRegDateS;
	}
	public void setCusRegDateS(String cusRegDateS) {
		this.cusRegDateS = cusRegDateS;
	}
	public Date getCusModiDate() {
		return cusModiDate;
	}
	public void setCusModiDate(Date cusModiDate) {
		this.cusModiDate = cusModiDate;
	}
	public String getCusModiDateS() {
		return cusModiDateS;
	}
	public void setCusModiDateS(String cusModiDateS) {
		this.cusModiDateS = cusModiDateS;
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

}
