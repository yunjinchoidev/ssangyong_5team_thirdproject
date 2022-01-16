package readingClub;

import java.sql.Date;

public class ReadingClubVO {
	private int rcKey;
	private String rcName;
	private int rcCnt;
	private Date rcStartDate;
	private String rcStartDateS;
	private int rcOperTime;
	private int rcPrice;
	private String rcContents;
	private int mKey;
	private int fileKey;
	
	
	public ReadingClubVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReadingClubVO(int rcKey, String rcName, int rcCnt, Date rcStartDate, String rcStartDateS, int rcOperTime,
			int rcPrice, String rcContents, int mKey, int fileKey) {
		super();
		this.rcKey = rcKey;
		this.rcName = rcName;
		this.rcCnt = rcCnt;
		this.rcStartDate = rcStartDate;
		this.rcStartDateS = rcStartDateS;
		this.rcOperTime = rcOperTime;
		this.rcPrice = rcPrice;
		this.rcContents = rcContents;
		this.mKey = mKey;
		this.fileKey = fileKey;
	}
	public ReadingClubVO(int rcKey, String rcName, int rcCnt, String rcStartDateS, int rcOperTime, int rcPrice,
			String rcContents, int mKey, int fileKey) {
		super();
		this.rcKey = rcKey;
		this.rcName = rcName;
		this.rcCnt = rcCnt;
		this.rcStartDateS = rcStartDateS;
		this.rcOperTime = rcOperTime;
		this.rcPrice = rcPrice;
		this.rcContents = rcContents;
		this.mKey = mKey;
		this.fileKey = fileKey;
	}
	public ReadingClubVO(int rcKey, String rcName, int rcCnt, Date rcStartDate, int rcOperTime, int rcPrice,
			String rcContents, int mKey, int fileKey) {
		super();
		this.rcKey = rcKey;
		this.rcName = rcName;
		this.rcCnt = rcCnt;
		this.rcStartDate = rcStartDate;
		this.rcOperTime = rcOperTime;
		this.rcPrice = rcPrice;
		this.rcContents = rcContents;
		this.mKey = mKey;
		this.fileKey = fileKey;
	}
	public int getRcKey() {
		return rcKey;
	}
	public void setRcKey(int rcKey) {
		this.rcKey = rcKey;
	}
	public String getRcName() {
		return rcName;
	}
	public void setRcName(String rcName) {
		this.rcName = rcName;
	}
	public int getRcCnt() {
		return rcCnt;
	}
	public void setRcCnt(int rcCnt) {
		this.rcCnt = rcCnt;
	}
	public Date getRcStartDate() {
		return rcStartDate;
	}
	public void setRcStartDate(Date rcStartDate) {
		this.rcStartDate = rcStartDate;
	}
	public String getRcStartDateS() {
		return rcStartDateS;
	}
	public void setRcStartDateS(String rcStartDateS) {
		this.rcStartDateS = rcStartDateS;
	}
	public int getRcOperTime() {
		return rcOperTime;
	}
	public void setRcOperTime(int rcOperTime) {
		this.rcOperTime = rcOperTime;
	}
	public int getRcPrice() {
		return rcPrice;
	}
	public void setRcPrice(int rcPrice) {
		this.rcPrice = rcPrice;
	}
	public String getRcContents() {
		return rcContents;
	}
	public void setRcContents(String rcContents) {
		this.rcContents = rcContents;
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
	
}
