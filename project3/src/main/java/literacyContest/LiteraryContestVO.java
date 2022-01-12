package literacyContest;

import java.sql.Date;

public class LiteraryContestVO {
	private int literKey;
	private String literTitle;
	private String literContents;
	private String literSort;
	private String literCareer;
	private int literProductionDate;
	private Date literSubmissionDate;
	private int mKey;
	private int fileKey;
	public LiteraryContestVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LiteraryContestVO(int literKey, String literTitle, String literContents, String literSort,
			String literCareer, int literProductionDate, Date literSubmissionDate, int mKey, int fileKey) {
		super();
		this.literKey = literKey;
		this.literTitle = literTitle;
		this.literContents = literContents;
		this.literSort = literSort;
		this.literCareer = literCareer;
		this.literProductionDate = literProductionDate;
		this.literSubmissionDate = literSubmissionDate;
		this.mKey = mKey;
		this.fileKey = fileKey;
	}
	
	
	public LiteraryContestVO(String literTitle, String literContents, String literSort, String literCareer,
			int literProductionDate) {
		super();
		this.literTitle = literTitle;
		this.literContents = literContents;
		this.literSort = literSort;
		this.literCareer = literCareer;
		this.literProductionDate = literProductionDate;
	}
	public LiteraryContestVO(int literKey, String literTitle, String literContents, String literSort,
			String literCareer, int literProductionDate) {
		super();
		this.literKey = literKey;
		this.literTitle = literTitle;
		this.literContents = literContents;
		this.literSort = literSort;
		this.literCareer = literCareer;
		this.literProductionDate = literProductionDate;
	}
	public LiteraryContestVO(int literKey, String literTitle, String literContents, String literSort,
			String literCareer, int literProductionDate, java.util.Date _literSubmissionDate) {
		super();
		this.literKey = literKey;
		this.literTitle = literTitle;
		this.literContents = literContents;
		this.literSort = literSort;
		this.literCareer = literCareer;
		this.literProductionDate = literProductionDate;
		this.literSubmissionDate = (Date) _literSubmissionDate;
	}
	public int getLiterKey() {
		return literKey;
	}
	public void setLiterKey(int literKey) {
		this.literKey = literKey;
	}
	public String getLiterTitle() {
		return literTitle;
	}
	public void setLiterTitle(String literTitle) {
		this.literTitle = literTitle;
	}
	public String getLiterContents() {
		return literContents;
	}
	public void setLiterContents(String literContents) {
		this.literContents = literContents;
	}
	public String getLiterSort() {
		return literSort;
	}
	public void setLiterSort(String literSort) {
		this.literSort = literSort;
	}
	public String getLiterCareer() {
		return literCareer;
	}
	public void setLiterCareer(String literCareer) {
		this.literCareer = literCareer;
	}
	public int getLiterProductionDate() {
		return literProductionDate;
	}
	public void setLiterProductionDate(int literProductionDate) {
		this.literProductionDate = literProductionDate;
	}
	public Date getLiterSubmissionDate() {
		return literSubmissionDate;
	}
	public void setLiterSubmissionDate(Date literSubmissionDate) {
		this.literSubmissionDate = literSubmissionDate;
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
