package store.offictialStore;

import java.util.Date;

public class OfficialStore {
	private int offictialKey;
	private String offictialPname;
	private String offictialExplain;
	private Date offictialRegDate;
	private int offictialnventory;
	private int offictialDiscount;
	private String cateKey;
	private int fileKey;
	public OfficialStore() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OfficialStore(int offictialKey, String offictialPname, String offictialExplain, Date offictialRegDate,
			int offictialnventory, int offictialDiscount, String cateKey, int fileKey) {
		super();
		this.offictialKey = offictialKey;
		this.offictialPname = offictialPname;
		this.offictialExplain = offictialExplain;
		this.offictialRegDate = offictialRegDate;
		this.offictialnventory = offictialnventory;
		this.offictialDiscount = offictialDiscount;
		this.cateKey = cateKey;
		this.fileKey = fileKey;
	}

	public int getOffictialKey() {
		return offictialKey;
	}

	public void setOffictialKey(int offictialKey) {
		this.offictialKey = offictialKey;
	}

	public String getOffictialPname() {
		return offictialPname;
	}

	public void setOffictialPname(String offictialPname) {
		this.offictialPname = offictialPname;
	}

	public String getOffictialExplain() {
		return offictialExplain;
	}

	public void setOffictialExplain(String offictialExplain) {
		this.offictialExplain = offictialExplain;
	}

	public Date getOffictialRegDate() {
		return offictialRegDate;
	}

	public void setOffictialRegDate(Date offictialRegDate) {
		this.offictialRegDate = offictialRegDate;
	}

	public int getOffictialnventory() {
		return offictialnventory;
	}

	public void setOffictialnventory(int offictialnventory) {
		this.offictialnventory = offictialnventory;
	}

	public int getOffictialDiscount() {
		return offictialDiscount;
	}

	public void setOffictialDiscount(int offictialDiscount) {
		this.offictialDiscount = offictialDiscount;
	}

	public String getCateKey() {
		return cateKey;
	}

	public void setCateKey(String cateKey) {
		this.cateKey = cateKey;
	}

	public int getFileKey() {
		return fileKey;
	}

	public void setFileKey(int fileKey) {
		this.fileKey = fileKey;
	}
}
