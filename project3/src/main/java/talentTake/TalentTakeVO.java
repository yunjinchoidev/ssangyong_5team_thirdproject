package talentTake;

public class TalentTakeVO {
	private int talenKey;
	private String talentYouWant;
	private String talenChildPer;
	private String talenDate;
	private String talenLoc;
	private int mKey;

	public TalentTakeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TalentTakeVO(int talenKey, String talentYouWant, String talenChildPer, String talenDate, String talenLoc,
			int mKey) {
		super();
		this.talenKey = talenKey;
		this.talentYouWant = talentYouWant;
		this.talenChildPer = talenChildPer;
		this.talenDate = talenDate;
		this.talenLoc = talenLoc;
		this.mKey = mKey;
	}

	public int getTalenKey() {
		return talenKey;
	}

	public void setTalenKey(int talenKey) {
		this.talenKey = talenKey;
	}

	public String getTalentYouWant() {
		return talentYouWant;
	}

	public void setTalentYouWant(String talentYouWant) {
		this.talentYouWant = talentYouWant;
	}

	public String getTalenChildPer() {
		return talenChildPer;
	}

	public void setTalenChildPer(String talenChildPer) {
		this.talenChildPer = talenChildPer;
	}

	public String getTalenDate() {
		return talenDate;
	}

	public void setTalenDate(String talenDate) {
		this.talenDate = talenDate;
	}

	public String getTalenLoc() {
		return talenLoc;
	}

	public void setTalenLoc(String talenLoc) {
		this.talenLoc = talenLoc;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
