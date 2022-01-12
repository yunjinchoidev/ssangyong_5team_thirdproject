package monthFantasy;

public class MonthFantasyVO {
	private int StmonthindiviKey;
	private String monthindivicontents;
	private String monthindivisort;
	private String monthindivititle;
	private int monthindivilikecnt;
	private int monthindividonlikecnt;
	private String monthindiviwriter;
	private int mKey;
	private int fileKey;
	public MonthFantasyVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MonthFantasyVO(int stmonthindiviKey, String monthindivicontents, String monthindivisort,
			String monthindivititle, int monthindivilikecnt, int monthindividonlikecnt, String monthindiviwriter,
			int mKey, int fileKey) {
		super();
		StmonthindiviKey = stmonthindiviKey;
		this.monthindivicontents = monthindivicontents;
		this.monthindivisort = monthindivisort;
		this.monthindivititle = monthindivititle;
		this.monthindivilikecnt = monthindivilikecnt;
		this.monthindividonlikecnt = monthindividonlikecnt;
		this.monthindiviwriter = monthindiviwriter;
		this.mKey = mKey;
		this.fileKey = fileKey;
	}
	public int getStmonthindiviKey() {
		return StmonthindiviKey;
	}
	public void setStmonthindiviKey(int stmonthindiviKey) {
		StmonthindiviKey = stmonthindiviKey;
	}
	public String getMonthindivicontents() {
		return monthindivicontents;
	}
	public void setMonthindivicontents(String monthindivicontents) {
		this.monthindivicontents = monthindivicontents;
	}
	public String getMonthindivisort() {
		return monthindivisort;
	}
	public void setMonthindivisort(String monthindivisort) {
		this.monthindivisort = monthindivisort;
	}
	public String getMonthindivititle() {
		return monthindivititle;
	}
	public void setMonthindivititle(String monthindivititle) {
		this.monthindivititle = monthindivititle;
	}
	public int getMonthindivilikecnt() {
		return monthindivilikecnt;
	}
	public void setMonthindivilikecnt(int monthindivilikecnt) {
		this.monthindivilikecnt = monthindivilikecnt;
	}
	public int getMonthindividonlikecnt() {
		return monthindividonlikecnt;
	}
	public void setMonthindividonlikecnt(int monthindividonlikecnt) {
		this.monthindividonlikecnt = monthindividonlikecnt;
	}
	public String getMonthindiviwriter() {
		return monthindiviwriter;
	}
	public void setMonthindiviwriter(String monthindiviwriter) {
		this.monthindiviwriter = monthindiviwriter;
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
