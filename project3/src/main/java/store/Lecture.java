package store;

public class Lecture {
	private int lecKey;
	private String lecName;
	private String lecTeacher;
	private int leclimitcnt;
	private int leconlineavail;
	private String lecdifficulty;
	private String leccontents;
	private String lecreview;
	private int lecscore;
	public Lecture() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Lecture(int lecKey, String lecName, String lecTeacher, int leclimitcnt, int leconlineavail,
			String lecdifficulty, String leccontents, String lecreview, int lecscore) {
		super();
		this.lecKey = lecKey;
		this.lecName = lecName;
		this.lecTeacher = lecTeacher;
		this.leclimitcnt = leclimitcnt;
		this.leconlineavail = leconlineavail;
		this.lecdifficulty = lecdifficulty;
		this.leccontents = leccontents;
		this.lecreview = lecreview;
		this.lecscore = lecscore;
	}
	public int getLecKey() {
		return lecKey;
	}
	public void setLecKey(int lecKey) {
		this.lecKey = lecKey;
	}
	public String getLecName() {
		return lecName;
	}
	public void setLecName(String lecName) {
		this.lecName = lecName;
	}
	public String getLecTeacher() {
		return lecTeacher;
	}
	public void setLecTeacher(String lecTeacher) {
		this.lecTeacher = lecTeacher;
	}
	public int getLeclimitcnt() {
		return leclimitcnt;
	}
	public void setLeclimitcnt(int leclimitcnt) {
		this.leclimitcnt = leclimitcnt;
	}
	public int getLeconlineavail() {
		return leconlineavail;
	}
	public void setLeconlineavail(int leconlineavail) {
		this.leconlineavail = leconlineavail;
	}
	public String getLecdifficulty() {
		return lecdifficulty;
	}
	public void setLecdifficulty(String lecdifficulty) {
		this.lecdifficulty = lecdifficulty;
	}
	public String getLeccontents() {
		return leccontents;
	}
	public void setLeccontents(String leccontents) {
		this.leccontents = leccontents;
	}

	public String getLecreview() {
		return lecreview;
	}
	public void setLecreview(String lecreview) {
		this.lecreview = lecreview;
	}
	public int getLecscore() {
		return lecscore;
	}
	public void setLecscore(int lecscore) {
		this.lecscore = lecscore;
	}
	
}
