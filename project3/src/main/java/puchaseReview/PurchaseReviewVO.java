package puchaseReview;

public class PurchaseReviewVO {
	int purchKey;
	String contents;
	int purchScore;
	int purchlikecnt;
	int purchdontlikecnt;
	int purchview;
	int orderKey;
	int fileKey;
	int mKey;

	public PurchaseReviewVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PurchaseReviewVO(int purchKey, String contents, int purchScore, int purchlikecnt, int purchdontlikecnt,
			int purchview, int orderKey, int fileKey, int mKey) {
		super();
		this.purchKey = purchKey;
		this.contents = contents;
		this.purchScore = purchScore;
		this.purchlikecnt = purchlikecnt;
		this.purchdontlikecnt = purchdontlikecnt;
		this.purchview = purchview;
		this.orderKey = orderKey;
		this.fileKey = fileKey;
		this.mKey = mKey;
	}

	public int getPurchKey() {
		return purchKey;
	}

	public void setPurchKey(int purchKey) {
		this.purchKey = purchKey;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getPurchScore() {
		return purchScore;
	}

	public void setPurchScore(int purchScore) {
		this.purchScore = purchScore;
	}

	public int getPurchlikecnt() {
		return purchlikecnt;
	}

	public void setPurchlikecnt(int purchlikecnt) {
		this.purchlikecnt = purchlikecnt;
	}

	public int getPurchdontlikecnt() {
		return purchdontlikecnt;
	}

	public void setPurchdontlikecnt(int purchdontlikecnt) {
		this.purchdontlikecnt = purchdontlikecnt;
	}

	public int getPurchview() {
		return purchview;
	}

	public void setPurchview(int purchview) {
		this.purchview = purchview;
	}

	public int getOrderKey() {
		return orderKey;
	}

	public void setOrderKey(int orderKey) {
		this.orderKey = orderKey;
	}

	public int getFileKey() {
		return fileKey;
	}

	public void setFileKey(int fileKey) {
		this.fileKey = fileKey;
	}

	public int getmKey() {
		return mKey;
	}

	public void setmKey(int mKey) {
		this.mKey = mKey;
	}

}
