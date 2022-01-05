package service;

import java.sql.Date;

public class ReadingClub {
	private int rcKey;
	private String rcName;
	private int rcCnt;
	private Date rcDate;
	private int rcDues;

	public ReadingClub() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReadingClub(int rcKey, String rcName, int rcCnt, Date rcDate, int rcDues) {
		super();
		this.rcKey = rcKey;
		this.rcName = rcName;
		this.rcCnt = rcCnt;
		this.rcDate = rcDate;
		this.rcDues = rcDues;
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

}
