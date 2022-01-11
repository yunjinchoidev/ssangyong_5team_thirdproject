package lord;

public class LordTestVO {
	private int lordTestKey;
	private int mKey;
	private int sumoftest;
	public LordTestVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LordTestVO(int lordTestKey, int mKey, int sumoftest) {
		super();
		this.lordTestKey = lordTestKey;
		this.mKey = mKey;
		this.sumoftest = sumoftest;
	}
	public int getLordTestKey() {
		return lordTestKey;
	}
	public void setLordTestKey(int lordTestKey) {
		this.lordTestKey = lordTestKey;
	}
	public int getmKey() {
		return mKey;
	}
	public void setmKey(int mKey) {
		this.mKey = mKey;
	}
	public int getSumoftest() {
		return sumoftest;
	}
	public void setSumoftest(int sumoftest) {
		this.sumoftest = sumoftest;
	}
	
}
