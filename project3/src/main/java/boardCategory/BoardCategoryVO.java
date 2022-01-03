package boardCategory;

public class BoardCategoryVO {
	private int boCateKey;
	private String boCateMain;
	private String boCateMiddle;
	private String boCateSub;
	
	public BoardCategoryVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardCategoryVO(int boCateKey, String boCateMain, String boCateMiddle, String boCateSub) {
		super();
		this.boCateKey = boCateKey;
		this.boCateMain = boCateMain;
		this.boCateMiddle = boCateMiddle;
		this.boCateSub = boCateSub;
	}

	public int getBoCateKey() {
		return boCateKey;
	}

	public void setBoCateKey(int boCateKey) {
		this.boCateKey = boCateKey;
	}

	public String getBoCateMain() {
		return boCateMain;
	}

	public void setBoCateMain(String boCateMain) {
		this.boCateMain = boCateMain;
	}

	public String getBoCateMiddle() {
		return boCateMiddle;
	}

	public void setBoCateMiddle(String boCateMiddle) {
		this.boCateMiddle = boCateMiddle;
	}

	public String getBoCateSub() {
		return boCateSub;
	}

	public void setBoCateSub(String boCateSub) {
		this.boCateSub = boCateSub;
	}
	
	
	
}
