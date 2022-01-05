package support;

import java.sql.Date;

public class Faq {
	private int faqKey;
	private String faqTitle;
	private String faqContents;
	private Date faqDate;
	private int faqView;

	public Faq() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Faq(int faqKey, String faqTitle, String faqContents, Date faqDate, int faqView) {
		super();
		this.faqKey = faqKey;
		this.faqTitle = faqTitle;
		this.faqContents = faqContents;
		this.faqDate = faqDate;
		this.faqView = faqView;
	}

	public int getFaqKey() {
		return faqKey;
	}

	public void setFaqKey(int faqKey) {
		this.faqKey = faqKey;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContents() {
		return faqContents;
	}

	public void setFaqContents(String faqContents) {
		this.faqContents = faqContents;
	}

	public Date getFaqDate() {
		return faqDate;
	}

	public void setFaqDate(Date faqDate) {
		this.faqDate = faqDate;
	}

	public int getFaqView() {
		return faqView;
	}

	public void setFaqView(int faqView) {
		this.faqView = faqView;
	}

}
