package board;

import java.util.Date;

public class BoardVO {

	private int boPostKey;
	private int mKey;
	private int fileKey;
	private int boCateKey;
	private String boWriter;
	private String boWriterPass;
	private String boWriterEmail;
	private Date boPostDate;
	private String boPostDateS;
	private String boTitle;
	private Date boModifyDate;
	private String boModifyDateS;
	private String boWriterIp;
	private int boViews;
	private int boParentNO;
	private String boContent;
	private int level;
	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardVO(int boPostKey, int mKey, int fileKey, int boCateKey, String boWriter, String boWriterPass,
			String boWriterEmail, Date boPostDate, String boPostDateS, String boTitle, Date boModifyDate,
			String boModifyDateS, String boWriterIp, int boViews, int boParentNO, String boContent, int level) {
		super();
		this.boPostKey = boPostKey;
		this.mKey = mKey;
		this.fileKey = fileKey;
		this.boCateKey = boCateKey;
		this.boWriter = boWriter;
		this.boWriterPass = boWriterPass;
		this.boWriterEmail = boWriterEmail;
		this.boPostDate = boPostDate;
		this.boPostDateS = boPostDateS;
		this.boTitle = boTitle;
		this.boModifyDate = boModifyDate;
		this.boModifyDateS = boModifyDateS;
		this.boWriterIp = boWriterIp;
		this.boViews = boViews;
		this.boParentNO = boParentNO;
		this.boContent = boContent;
		this.level = level;
	}
	public BoardVO(int boPostKey, int mKey, int fileKey, int boCateKey, String boWriter, String boWriterPass,
			String boWriterEmail, String boPostDateS, String boTitle, String boModifyDateS, String boWriterIp,
			int boViews, int boParentNO, String boContent, int level) {
		super();
		this.boPostKey = boPostKey;
		this.mKey = mKey;
		this.fileKey = fileKey;
		this.boCateKey = boCateKey;
		this.boWriter = boWriter;
		this.boWriterPass = boWriterPass;
		this.boWriterEmail = boWriterEmail;
		this.boPostDateS = boPostDateS;
		this.boTitle = boTitle;
		this.boModifyDateS = boModifyDateS;
		this.boWriterIp = boWriterIp;
		this.boViews = boViews;
		this.boParentNO = boParentNO;
		this.boContent = boContent;
		this.level = level;
	}
	public BoardVO(int boPostKey, int mKey, int fileKey, int boCateKey, String boWriter, String boWriterPass,
			String boWriterEmail, Date boPostDate, String boTitle, Date boModifyDate, String boWriterIp, int boViews,
			int boParentNO, String boContent, int level) {
		super();
		this.boPostKey = boPostKey;
		this.mKey = mKey;
		this.fileKey = fileKey;
		this.boCateKey = boCateKey;
		this.boWriter = boWriter;
		this.boWriterPass = boWriterPass;
		this.boWriterEmail = boWriterEmail;
		this.boPostDate = boPostDate;
		this.boTitle = boTitle;
		this.boModifyDate = boModifyDate;
		this.boWriterIp = boWriterIp;
		this.boViews = boViews;
		this.boParentNO = boParentNO;
		this.boContent = boContent;
		this.level = level;
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
	public int getFileKey() {
		return fileKey;
	}
	public void setFileKey(int fileKey) {
		this.fileKey = fileKey;
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
	public String getBoPostDateS() {
		return boPostDateS;
	}
	public void setBoPostDateS(String boPostDateS) {
		this.boPostDateS = boPostDateS;
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
	public String getBoModifyDateS() {
		return boModifyDateS;
	}
	public void setBoModifyDateS(String boModifyDateS) {
		this.boModifyDateS = boModifyDateS;
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
	public int getBoParentNO() {
		return boParentNO;
	}
	public void setBoParentNO(int boParentNO) {
		this.boParentNO = boParentNO;
	}
	public String getBoContent() {
		return boContent;
	}
	public void setBoContent(String boContent) {
		this.boContent = boContent;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
}
