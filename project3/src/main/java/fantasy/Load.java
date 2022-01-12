package fantasy;

public class Load {
	private int loadKey;
	private String loadCharacter;
	private String loadTribe;
	private String loadPaciBattle;
	private String loadloc;
	private int loadHeight;
	private int loadWeight;
	private int mKey;

	public Load() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Load(int loadKey, String loadCharacter, String loadTribe, String loadPaciBattle, String loadloc,
			int loadHeight, int loadWeight, int mKey) {
		super();
		this.loadKey = loadKey;
		this.loadCharacter = loadCharacter;
		this.loadTribe = loadTribe;
		this.loadPaciBattle = loadPaciBattle;
		this.loadloc = loadloc;
		this.loadHeight = loadHeight;
		this.loadWeight = loadWeight;
		this.mKey = mKey;
	}

	public int getLoadKey() {
		return loadKey;
	}

	public void setLoadKey(int loadKey) {
		this.loadKey = loadKey;
	}

	public String getLoadCharacter() {
		return loadCharacter;
	}

	public void setLoadCharacter(String loadCharacter) {
		this.loadCharacter = loadCharacter;
	}

	public String getLoadTribe() {
		return loadTribe;
	}

	public void setLoadTribe(String loadTribe) {
		this.loadTribe = loadTribe;
	}

	public String getLoadPaciBattle() {
		return loadPaciBattle;
	}

	public void setLoadPaciBattle(String loadPaciBattle) {
		this.loadPaciBattle = loadPaciBattle;
	}

	public String getLoadloc() {
		return loadloc;
	}

	public void setLoadloc(String loadloc) {
		this.loadloc = loadloc;
	}

	public int getLoadHeight() {
		return loadHeight;
	}

	public void setLoadHeight(int loadHeight) {
		this.loadHeight = loadHeight;
	}

	public int getLoadWeight() {
		return loadWeight;
	}

	public void setLoadWeight(int loadWeight) {
		this.loadWeight = loadWeight;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
