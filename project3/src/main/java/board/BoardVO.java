package board;

import java.util.Date;

public class BoardVO {

	private int boPostKey;
	private int mKey;
	private int boFileNum;
	private int boCateKey;
	private String boWriter;
	private String boWriterPass;
	private String boWriterEmail;
	private Date boPostDate;
	private String boTitle;
	private Date boModifyDate;
	private String boWriterIp;
	private int boViews;
	private int boParWritNum;
	private String boContent;
	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardVO(int boPostKey, int mKey, int boFileNum, int boCateKey, String boWriter, String boWriterPass,
			String boWriterEmail, Date boPostDate, String boTitle, Date boModifyDate, String boWriterIp, int boViews,
			int boParWritNum, String boContent) {
		super();
		this.boPostKey = boPostKey;
		this.mKey = mKey;
		this.boFileNum = boFileNum;
		this.boCateKey = boCateKey;
		this.boWriter = boWriter;
		this.boWriterPass = boWriterPass;
		this.boWriterEmail = boWriterEmail;
		this.boPostDate = boPostDate;
		this.boTitle = boTitle;
		this.boModifyDate = boModifyDate;
		this.boWriterIp = boWriterIp;
		this.boViews = boViews;
		this.boParWritNum = boParWritNum;
		this.boContent = boContent;
	}
	public int getBoPostKey() {
		return boPostKey;
	}
	public void setBoPostKey(int boPostKey) {
		this.boPostKey = boPostKey;
	}
	public int getmKey() {
		return mKey;
	}
	public void setmKey(int mKey) {
		this.mKey = mKey;
	}
	public int getBoFileNum() {
		return boFileNum;
	}
	public void setBoFileNum(int boFileNum) {
		this.boFileNum = boFileNum;
	}
	public int getBoCateKey() {
		return boCateKey;
	}
	public void setBoCateKey(int boCateKey) {
		this.boCateKey = boCateKey;
	}
	public String getBoWriter() {
		return boWriter;
	}
	public void setBoWriter(String boWriter) {
		this.boWriter = boWriter;
	}
	public String getBoWriterPass() {
		return boWriterPass;
	}
	public void setBoWriterPass(String boWriterPass) {
		this.boWriterPass = boWriterPass;
	}
	public String getBoWriterEmail() {
		return boWriterEmail;
	}
	public void setBoWriterEmail(String boWriterEmail) {
		this.boWriterEmail = boWriterEmail;
	}
	public Date getBoPostDate() {
		return boPostDate;
	}
	public void setBoPostDate(Date boPostDate) {
		this.boPostDate = boPostDate;
	}
	public String getBoTitle() {
		return boTitle;
	}
	public void setBoTitle(String boTitle) {
		this.boTitle = boTitle;
	}
	public Date getBoModifyDate() {
		return boModifyDate;
	}
	public void setBoModifyDate(Date boModifyDate) {
		this.boModifyDate = boModifyDate;
	}
	public String getBoWriterIp() {
		return boWriterIp;
	}
	public void setBoWriterIp(String boWriterIp) {
		this.boWriterIp = boWriterIp;
	}
	public int getBoViews() {
		return boViews;
	}
	public void setBoViews(int boViews) {
		this.boViews = boViews;
	}
	public int getBoParWritNum() {
		return boParWritNum;
	}
	public void setBoParWritNum(int boParWritNum) {
		this.boParWritNum = boParWritNum;
	}
	public String getBoContent() {
		return boContent;
	}
	public void setBoContent(String boContent) {
		this.boContent = boContent;
	}
	
}
