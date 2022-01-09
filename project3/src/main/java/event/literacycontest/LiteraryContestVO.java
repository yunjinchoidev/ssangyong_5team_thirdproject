package event.literacycontest;

import java.sql.Date;

public class LiteraryContestVO {
	private String liberKey;
	private String liberTitle;
	private String liberContents;
	private String liberSort;
	private String liberCareer;
	private int liberProductionDate;
	private Date liberSubmissionDate;
	private int mKey;
	private int fileKey;
	public LiteraryContestVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LiteraryContestVO(String liberKey, String liberTitle, String liberContents, String liberSort,
			String liberCareer, int liberProductionDate, Date liberSubmissionDate, int mKey, int fileKey) {
		super();
		this.liberKey = liberKey;
		this.liberTitle = liberTitle;
		this.liberContents = liberContents;
		this.liberSort = liberSort;
		this.liberCareer = liberCareer;
		this.liberProductionDate = liberProductionDate;
		this.liberSubmissionDate = liberSubmissionDate;
		this.mKey = mKey;
		this.fileKey = fileKey;
	}
	public LiteraryContestVO(String liberKey, String liberTitle, String liberContents, String liberSort,
			String liberCareer) {
		super();
		this.liberKey = liberKey;
		this.liberTitle = liberTitle;
		this.liberContents = liberContents;
		this.liberSort = liberSort;
		this.liberCareer = liberCareer;
	}
	
	
	
	
	public String getLiberKey() {
		return liberKey;
	}
	public void setLiberKey(String liberKey) {
		this.liberKey = liberKey;
	}
	public String getLiberTitle() {
		return liberTitle;
	}
	public void setLiberTitle(String liberTitle) {
		this.liberTitle = liberTitle;
	}
	public String getLiberContents() {
		return liberContents;
	}
	public void setLiberContents(String liberContents) {
		this.liberContents = liberContents;
	}
	public String getLiberSort() {
		return liberSort;
	}
	public void setLiberSort(String liberSort) {
		this.liberSort = liberSort;
	}
	public String getLiberCareer() {
		return liberCareer;
	}
	public void setLiberCareer(String liberCareer) {
		this.liberCareer = liberCareer;
	}
	public int getLiberProductionDate() {
		return liberProductionDate;
	}
	public void setLiberProductionDate(int liberProductionDate) {
		this.liberProductionDate = liberProductionDate;
	}
	public Date getLiberSubmissionDate() {
		return liberSubmissionDate;
	}
	public void setLiberSubmissionDate(Date liberSubmissionDate) {
		this.liberSubmissionDate = liberSubmissionDate;
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
