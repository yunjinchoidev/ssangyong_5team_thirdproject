package store.offictialStore;

import java.sql.Date;

public class OfficialStoreVO {
	private int officialKey;
	private String officialPname;
	private String officialExplain;
	private Date officialRegDate;
	private String officialRegDateS;
	private int officialnventory;
	private int officialDiscount;
	private int ProcateKey;
	private int fileKey;
	public OfficialStoreVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OfficialStoreVO(int officialKey, String officialPname, String officialExplain, Date officialRegDate,
			String officialRegDateS, int officialnventory, int officialDiscount, int procateKey, int fileKey) {
		super();
		this.officialKey = officialKey;
		this.officialPname = officialPname;
		this.officialExplain = officialExplain;
		this.officialRegDate = officialRegDate;
		this.officialRegDateS = officialRegDateS;
		this.officialnventory = officialnventory;
		this.officialDiscount = officialDiscount;
		ProcateKey = procateKey;
		this.fileKey = fileKey;
	}
	public OfficialStoreVO(int officialKey, String officialPname, String officialExplain, Date officialRegDate,
			int officialnventory, int officialDiscount, int procateKey, int fileKey) {
		super();
		this.officialKey = officialKey;
		this.officialPname = officialPname;
		this.officialExplain = officialExplain;
		this.officialRegDate = officialRegDate;
		this.officialnventory = officialnventory;
		this.officialDiscount = officialDiscount;
		ProcateKey = procateKey;
		this.fileKey = fileKey;
	}
	public OfficialStoreVO(int officialKey, String officialPname, String officialExplain, String officialRegDateS,
			int officialnventory, int officialDiscount, int procateKey, int fileKey) {
		super();
		this.officialKey = officialKey;
		this.officialPname = officialPname;
		this.officialExplain = officialExplain;
		this.officialRegDateS = officialRegDateS;
		this.officialnventory = officialnventory;
		this.officialDiscount = officialDiscount;
		ProcateKey = procateKey;
		this.fileKey = fileKey;
	}
	public int getOfficialKey() {
		return officialKey;
	}
	public void setOfficialKey(int officialKey) {
		this.officialKey = officialKey;
	}
	public String getOfficialPname() {
		return officialPname;
	}
	public void setOfficialPname(String officialPname) {
		this.officialPname = officialPname;
	}
	public String getOfficialExplain() {
		return officialExplain;
	}
	public void setOfficialExplain(String officialExplain) {
		this.officialExplain = officialExplain;
	}
	public Date getOfficialRegDate() {
		return officialRegDate;
	}
	public void setOfficialRegDate(Date officialRegDate) {
		this.officialRegDate = officialRegDate;
	}
	public String getOfficialRegDateS() {
		return officialRegDateS;
	}
	public void setOfficialRegDateS(String officialRegDateS) {
		this.officialRegDateS = officialRegDateS;
	}
	public int getOfficialnventory() {
		return officialnventory;
	}
	public void setOfficialnventory(int officialnventory) {
		this.officialnventory = officialnventory;
	}
	public int getOfficialDiscount() {
		return officialDiscount;
	}
	public void setOfficialDiscount(int officialDiscount) {
		this.officialDiscount = officialDiscount;
	}
	public int getProcateKey() {
		return ProcateKey;
	}
	public void setProcateKey(int procateKey) {
		ProcateKey = procateKey;
	}
	public int getFileKey() {
		return fileKey;
	}
	public void setFileKey(int fileKey) {
		this.fileKey = fileKey;
	}
	
	
}
