package comment;

import java.util.Date;

public class CommentVO {
	private int commKey;
	private int boPostKey;
	private int mKey;
	private String commContent;
	private Date commDate;
	private Date commModifyDate;
	private char commReport;
	private int commGoodNum;
	private int commHateNum;
	
	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentVO(int commKey, int boPostKey, int mKey, String commContent, Date commDate, Date commModifyDate,
			char commReport, int commGoodNum, int commHateNum) {
		super();
		this.commKey = commKey;
		this.boPostKey = boPostKey;
		this.mKey = mKey;
		this.commContent = commContent;
		this.commDate = commDate;
		this.commModifyDate = commModifyDate;
		this.commReport = commReport;
		this.commGoodNum = commGoodNum;
		this.commHateNum = commHateNum;
	}

	public int getCommKey() {
		return commKey;
	}

	public void setCommKey(int commKey) {
		this.commKey = commKey;
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

	public String getCommContent() {
		return commContent;
	}

	public void setCommContent(String commContent) {
		this.commContent = commContent;
	}

	public Date getCommDate() {
		return commDate;
	}

	public void setCommDate(Date commDate) {
		this.commDate = commDate;
	}

	public Date getCommModifyDate() {
		return commModifyDate;
	}

	public void setCommModifyDate(Date commModifyDate) {
		this.commModifyDate = commModifyDate;
	}

	public char getCommReport() {
		return commReport;
	}

	public void setCommReport(char commReport) {
		this.commReport = commReport;
	}

	public int getCommGoodNum() {
		return commGoodNum;
	}

	public void setCommGoodNum(int commGoodNum) {
		this.commGoodNum = commGoodNum;
	}

	public int getCommHateNum() {
		return commHateNum;
	}

	public void setCommHateNum(int commHateNum) {
		this.commHateNum = commHateNum;
	}
	
	
}
