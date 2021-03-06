package marvel;

public class MarvelVO {
	private int marvelKey;
	private String marvelCharacter;
	private String MarvelAbility;
	private String MarvelHobby;
	private int MarvelHeight;
	private int MarvelWeight;
	private int mKey;

	public MarvelVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MarvelVO(int marvelKey, String marvelCharacter, String marvelAbility, String marvelHobby, int marvelHeight,
			int marvelWeight, int mKey) {
		super();
		this.marvelKey = marvelKey;
		this.marvelCharacter = marvelCharacter;
		this.MarvelAbility = marvelAbility;
		this.MarvelHobby = marvelHobby;
		this.MarvelHeight = marvelHeight;
		this.MarvelWeight = marvelWeight;
		this.mKey = mKey;
	}
	
	public MarvelVO(String marvelCharacter) {
		super();
		this.marvelCharacter = marvelCharacter;
		
	}
	
	public int getMarvelKey() {
		return marvelKey;
	}

	public void setMarvelKey(int marvelKey) {
		this.marvelKey = marvelKey;
	}

	public String getMarvelCharacter() {
		return marvelCharacter;
	}

	public void setMarvelCharacter(String marvelCharacter) {
		this.marvelCharacter = marvelCharacter;
	}

	public String getMarvelAbility() {
		return MarvelAbility;
	}

	public void setMarvelAbility(String marvelAbility) {
		MarvelAbility = marvelAbility;
	}

	public String getMarvelHobby() {
		return MarvelHobby;
	}

	public void setMarvelHobby(String marvelHobby) {
		MarvelHobby = marvelHobby;
	}

	public int getMarvelHeight() {
		return MarvelHeight;
	}

	public void setMarvelHeight(int marvelHeight) {
		MarvelHeight = marvelHeight;
	}

	public int getMarvelWeight() {
		return MarvelWeight;
	}

	public void setMarvelWeight(int marvelWeight) {
		MarvelWeight = marvelWeight;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
