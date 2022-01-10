package store.lecture;

public class LectureVO {
	private int lecKey;
	private String lecName;
	private String lecTeacher;
	private int leclimitcnt;
	private int leconlineavail;
	private String lecdifficulty;
	private String leccontents;
	private int lecscore;
	public LectureVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LectureVO(int lecKey, String lecName, String lecTeacher, int leclimitcnt, int leconlineavail,
			String lecdifficulty, String leccontents, int lecscore) {
		super();
		this.lecKey = lecKey;
		this.lecName = lecName;
		this.lecTeacher = lecTeacher;
		this.leclimitcnt = leclimitcnt;
		this.leconlineavail = leconlineavail;
		this.lecdifficulty = lecdifficulty;
		this.leccontents = leccontents;
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
	public int getLecscore() {
		return lecscore;
	}
	public void setLecscore(int lecscore) {
		this.lecscore = lecscore;
	}
	
	
}
