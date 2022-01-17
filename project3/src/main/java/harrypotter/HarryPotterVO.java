package harrypotter;

import java.util.Date;

public class HarryPotterVO {
	int harryKey;
	String harryCharacter;
	String harryDomioty;
	Date DormJoinDate;
	String harryMagicLevel;
	int harryBirth;
	String harryMagic;
	int harryHeight;
	int harryWeight;
	int mKey;

	public HarryPotterVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HarryPotterVO(int harryKey, String harryCharacter, String harryDomioty, String harryMagicLevel, int harryBirth,
			String harryMagic, int harryHeight, int harryWeight, int mKey) {
		super();
		this.harryKey = harryKey;
		this.harryCharacter = harryCharacter;
		this.harryDomioty = harryDomioty;
		this.harryMagicLevel = harryMagicLevel;
		this.harryBirth = harryBirth;
		this.harryMagic = harryMagic;
		this.harryHeight = harryHeight;
		this.harryWeight = harryWeight;
		this.mKey = mKey;
	}
	
	// 캐릭터 업데이트
	public HarryPotterVO(String harryCharacter) {
		super();
		this.harryCharacter = harryCharacter;
	}
	
	// 기숙사 업데이트
	public HarryPotterVO(String harryDomioty, Date DormJoinDate) {
		super();
		this.harryDomioty = harryDomioty;
		this.DormJoinDate = DormJoinDate;
	}
	
	// 마이페이지 출력
	public HarryPotterVO(String harryMagicLevel,String harryCharacter,
			String harryDomioty) {
		super();
		this.harryMagicLevel = harryMagicLevel;
		this.harryCharacter = harryCharacter;
		this.harryDomioty = harryDomioty;
	}

	public int getHarryKey() {
		return harryKey;
	}

	public void setHarryKey(int harryKey) {
		this.harryKey = harryKey;
	}

	public String getHarryCharacter() {
		return harryCharacter;
	}

	public void setHarryCharacter(String harryCharacter) {
		this.harryCharacter = harryCharacter;
	}

	public String getHarryDomioty() {
		return harryDomioty;
	}

	public void setHarryDomioty(String harryDomioty) {
		this.harryDomioty = harryDomioty;
	}

	public String getHarryMagicLevel() {
		return harryMagicLevel;
	}

	public void setHarryMagicLevel(String harryMagicLevel) {
		this.harryMagicLevel = harryMagicLevel;
	}

	public int getHarryBirth() {
		return harryBirth;
	}

	public void setHarryBirth(int harryBirth) {
		this.harryBirth = harryBirth;
	}

	public String getHarryMagic() {
		return harryMagic;
	}

	public void setHarryMagic(String harryMagic) {
		this.harryMagic = harryMagic;
	}

	public int getHarryHeight() {
		return harryHeight;
	}

	public void setHarryHeight(int harryHeight) {
		this.harryHeight = harryHeight;
	}

	public int getHarryWeight() {
		return harryWeight;
	}

	public void setHarryWeight(int harryWeight) {
		this.harryWeight = harryWeight;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
