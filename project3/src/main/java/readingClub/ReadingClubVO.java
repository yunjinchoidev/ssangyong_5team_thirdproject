package readingClub;

import java.sql.Date;

public class ReadingClubVO {
	private int rcKey;
	private String rcName;
	private int rcCnt;
	private Date rcDate;
	private int rcDues;
	private String rsContents;
	private int mKey;
	private int fileKey;

	public ReadingClubVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReadingClubVO(int rcKey, String rcName, int rcCnt, Date rcDate, int rcDues, String rsContents, int mKey,
			int fileKey) {
		super();
		this.rcKey = rcKey;
		this.rcName = rcName;
		this.rcCnt = rcCnt;
		this.rcDate = rcDate;
		this.rcDues = rcDues;
		this.rsContents = rsContents;
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

	public Date getRcDate() {
		return rcDate;
	}

	public void setRcDate(Date rcDate) {
		this.rcDate = rcDate;
	}

	public int getRcDues() {
		return rcDues;
	}

	public void setRcDues(int rcDues) {
		this.rcDues = rcDues;
	}

	public String getRsContents() {
		return rsContents;
	}

	public void setRsContents(String rsContents) {
		this.rsContents = rsContents;
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
