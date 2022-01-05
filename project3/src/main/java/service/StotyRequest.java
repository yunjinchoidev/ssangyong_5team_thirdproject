package service;

public class StotyRequest {
	private int requKey;
	private String requTitle;
	private String requContents;
	private int requPrice;
	private int requModicnt;
	private String requSort;
	private int mKey;

	public StotyRequest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StotyRequest(int requKey, String requTitle, String requContents, int requPrice, int requModicnt,
			String requSort, int mKey) {
		super();
		this.requKey = requKey;
		this.requTitle = requTitle;
		this.requContents = requContents;
		this.requPrice = requPrice;
		this.requModicnt = requModicnt;
		this.requSort = requSort;
		this.mKey = mKey;
	}

	public int getRequKey() {
		return requKey;
	}

	public void setRequKey(int requKey) {
		this.requKey = requKey;
	}

	public String getRequTitle() {
		return requTitle;
	}

	public void setRequTitle(String requTitle) {
		this.requTitle = requTitle;
	}

	public String getRequContents() {
		return requContents;
	}

	public void setRequContents(String requContents) {
		this.requContents = requContents;
	}

	public int getRequPrice() {
		return requPrice;
	}

	public void setRequPrice(int requPrice) {
		this.requPrice = requPrice;
	}

	public int getRequModicnt() {
		return requModicnt;
	}

	public void setRequModicnt(int requModicnt) {
		this.requModicnt = requModicnt;
	}

	public String getRequSort() {
		return requSort;
	}

	public void setRequSort(String requSort) {
		this.requSort = requSort;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
