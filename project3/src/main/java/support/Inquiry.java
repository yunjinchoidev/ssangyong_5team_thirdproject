package support;

import java.sql.Date;

public class Inquiry {
	private int inquiryKey;
	private String inquiryType;
	private String inquiryName;
	private String inquiryEmail;
	private String inquiryTitle;
	private String inquiryContents;
	private String inquiryStatus;
	private Date inquiryRegi;
	private String inquiryAnswerContents;
	private int mKey;

	public Inquiry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inquiry(int inquiryKey, String inquiryType, String inquiryName, String inquiryEmail, String inquiryTitle,
			String inquiryContents, String inquiryStatus, Date inquiryRegi, String inquiryAnswerContents, int mKey) {
		super();
		this.inquiryKey = inquiryKey;
		this.inquiryType = inquiryType;
		this.inquiryName = inquiryName;
		this.inquiryEmail = inquiryEmail;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContents = inquiryContents;
		this.inquiryStatus = inquiryStatus;
		this.inquiryRegi = inquiryRegi;
		this.inquiryAnswerContents = inquiryAnswerContents;
		this.mKey = mKey;
	}

	public int getInquiryKey() {
		return inquiryKey;
	}

	public void setInquiryKey(int inquiryKey) {
		this.inquiryKey = inquiryKey;
	}

	public String getInquiryType() {
		return inquiryType;
	}

	public void setInquiryType(String inquiryType) {
		this.inquiryType = inquiryType;
	}

	public String getInquiryName() {
		return inquiryName;
	}

	public void setInquiryName(String inquiryName) {
		this.inquiryName = inquiryName;
	}

	public String getInquiryEmail() {
		return inquiryEmail;
	}

	public void setInquiryEmail(String inquiryEmail) {
		this.inquiryEmail = inquiryEmail;
	}

	public String getInquiryTitle() {
		return inquiryTitle;
	}

	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getInquiryContents() {
		return inquiryContents;
	}

	public void setInquiryContents(String inquiryContents) {
		this.inquiryContents = inquiryContents;
	}

	public String getInquiryStatus() {
		return inquiryStatus;
	}

	public void setInquiryStatus(String inquiryStatus) {
		this.inquiryStatus = inquiryStatus;
	}

	public Date getInquiryRegi() {
		return inquiryRegi;
	}

	public void setInquiryRegi(Date inquiryRegi) {
		this.inquiryRegi = inquiryRegi;
	}

	public String getInquiryAnswerContents() {
		return inquiryAnswerContents;
	}

	public void setInquiryAnswerContents(String inquiryAnswerContents) {
		this.inquiryAnswerContents = inquiryAnswerContents;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
