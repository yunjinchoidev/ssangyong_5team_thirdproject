package officialStoreTestLord;

import java.sql.Date;

public class OfficialStoreTestVO {
	private int officialKey;
	private String officialPname;
	private String officialExplain;
	private Date officialRegDate;
	private String officialRegDateS;
	private int officialInventory;
	private int officialDiscount;
	private int proCateKey;
	private String fileKey;

	public OfficialStoreTestVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OfficialStoreTestVO(int officialKey, String officialPname, String officialExplain, Date officialRegDate,
			String officialRegDateS, int officialInventory, int officialDiscount, int proCateKey, String fileKey) {
		super();
		this.officialKey = officialKey;
		this.officialPname = officialPname;
		this.officialExplain = officialExplain;
		this.officialRegDate = officialRegDate;
		this.officialRegDateS = officialRegDateS;
		this.officialInventory = officialInventory;
		this.officialDiscount = officialDiscount;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
	}

	public OfficialStoreTestVO(int officialKey, String officialPname, String officialExplain, String officialRegDateS,
			int officialInventory, int officialDiscount, int proCateKey, String fileKey) {
		super();
		this.officialKey = officialKey;
		this.officialPname = officialPname;
		this.officialExplain = officialExplain;
		this.officialRegDateS = officialRegDateS;
		this.officialInventory = officialInventory;
		this.officialDiscount = officialDiscount;
		this.proCateKey = proCateKey;
		this.fileKey = fileKey;
	}

	public OfficialStoreTestVO(int officialKey, String officialPname, String officialExplain, Date officialRegDate,
			int officialInventory, int officialDiscount, int proCateKey, String fileKey) {
		super();
		this.officialKey = officialKey;
		this.officialPname = officialPname;
		this.officialExplain = officialExplain;
		this.officialRegDate = officialRegDate;
		this.officialInventory = officialInventory;
		this.officialDiscount = officialDiscount;
		this.proCateKey = proCateKey;
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

	public int getOfficialInventory() {
		return officialInventory;
	}

	public void setOfficialInventory(int officialInventory) {
		this.officialInventory = officialInventory;
	}

	public int getOfficialDiscount() {
		return officialDiscount;
	}

	public void setOfficialDiscount(int officialDiscount) {
		this.officialDiscount = officialDiscount;
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
