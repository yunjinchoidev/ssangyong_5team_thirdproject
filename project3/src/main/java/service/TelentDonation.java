package service;

public class TelentDonation {
	private int talenKey;
	private String talentYouWant;
	private String talenChildPersonal;
	private String talenDate;
	private String talenLoc;
	private int mKey;

	public TelentDonation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TelentDonation(int talenKey, String talentYouWant, String talenChildPersonal, String talenDate,
			String talenLoc, int mKey) {
		super();
		this.talenKey = talenKey;
		this.talentYouWant = talentYouWant;
		this.talenChildPersonal = talenChildPersonal;
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

	public String getTalenChildPersonal() {
		return talenChildPersonal;
	}

	public void setTalenChildPersonal(String talenChildPersonal) {
		this.talenChildPersonal = talenChildPersonal;
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
