package service.talent;

public class TalentApplyVO {
	private int taKey;
	private String taname;
	private String tamytalent;
	private String taapplydate;
	private String tatime;
	private String taloc;
	private int mKey;

	public TalentApplyVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TalentApplyVO(int taKey, String taname, String tamytalent, String taapplydate, String tatime, String taloc,
			int mKey) {
		super();
		this.taKey = taKey;
		this.taname = taname;
		this.tamytalent = tamytalent;
		this.taapplydate = taapplydate;
		this.tatime = tatime;
		this.taloc = taloc;
		this.mKey = mKey;
	}

	public int getTaKey() {
		return taKey;
	}

	public void setTaKey(int taKey) {
		this.taKey = taKey;
	}

	public String getTaname() {
		return taname;
	}

	public void setTaname(String taname) {
		this.taname = taname;
	}

	public String getTamytalent() {
		return tamytalent;
	}

	public void setTamytalent(String tamytalent) {
		this.tamytalent = tamytalent;
	}

	public String getTaapplydate() {
		return taapplydate;
	}

	public void setTaapplydate(String taapplydate) {
		this.taapplydate = taapplydate;
	}

	public String getTatime() {
		return tatime;
	}

	public void setTatime(String tatime) {
		this.tatime = tatime;
	}

	public String getTaloc() {
		return taloc;
	}

	public void setTaloc(String taloc) {
		this.taloc = taloc;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
