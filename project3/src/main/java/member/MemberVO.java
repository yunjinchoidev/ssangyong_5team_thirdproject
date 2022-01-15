package member;

import java.util.Date;

import org.w3c.dom.html.HTMLElement;

public class MemberVO {
	private int mKey;
	private String mId;
	private String mPass;
	private String mName;
	private String mEmail;
	private String phonenum;
	private String mReg;
	private String nickname;
	private String mGender;
	private int mManiaQuot;
	private Date mJoinDate;
	private int mAuthNum;
	private int mCash;
	private int mPoint;
	private int mLevel;
	private char mEmailWhether;
	private String mAddress;
	private char mState;
	private String mBlockList;
	private double mSellerRate;
	private int mGiftLevel;
	private char mUnderFifteen;
	private String mGiftDoneExist;
	private int mGiftDoneCnt;
	private String mMyGift;
	private String mIp;
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberVO(int mKey, String mId, String mPass, String mName, String mEmail, String phonenum, String mReg,
			String nickname, String mGender, int mManiaQuot, Date mJoinDate, int mAuthNum, int mCash, int mPoint,
			int mLevel, char mEmailWhether, String mAddress, char mState, String mBlockList, double mSellerRate,
			int mGiftLevel, char mUnderFifteen, String mGiftDoneExist, int mGiftDoneCnt, String mMyGift, String mIp) {
		super();
		this.mKey = mKey;
		this.mId = mId;
		this.mPass = mPass;
		this.mName = mName;
		this.mEmail = mEmail;
		this.phonenum = phonenum;
		this.mReg = mReg;
		this.nickname = nickname;
		this.mGender = mGender;
		this.mManiaQuot = mManiaQuot;
		this.mJoinDate = mJoinDate;
		this.mAuthNum = mAuthNum;
		this.mCash = mCash;
		this.mPoint = mPoint;
		this.mLevel = mLevel;
		this.mEmailWhether = mEmailWhether;
		this.mAddress = mAddress;
		this.mState = mState;
		this.mBlockList = mBlockList;
		this.mSellerRate = mSellerRate;
		this.mGiftLevel = mGiftLevel;
		this.mUnderFifteen = mUnderFifteen;
		this.mGiftDoneExist = mGiftDoneExist;
		this.mGiftDoneCnt = mGiftDoneCnt;
		this.mMyGift = mMyGift;
		this.mIp = mIp;
	}
	
	
	public MemberVO(String mId, String mPass, String mName, String mEmail, String phonenum, String mReg,
			String nickname, String mGender,String mAddress) {
		this.mId = mId;
		this.mPass = mPass;
		this.mName = mName;
		this.mEmail = mEmail;
		this.phonenum = phonenum;
		this.mReg = mReg;
		this.nickname = nickname;
		this.mGender = mGender;
		this.mAddress = mAddress;
	}
	
	public MemberVO(int mkey, String mId, String mPass, String mName, String mEmail, String phonenum, String mReg,
			String nickname, String mGender,String mAddress, String mMyGift, String mGiftDoneExist) {
		this.mId = mId;
		this.mPass = mPass;
		this.mName = mName;
		this.mEmail = mEmail;
		this.phonenum = phonenum;
		this.mReg = mReg;
		this.nickname = nickname;
		this.mGender = mGender;
		this.mAddress = mAddress;
		this.mMyGift = mMyGift;
		this.mGiftDoneExist = mGiftDoneExist;
	}
	
	public MemberVO(String nickname, String mEmail, String phonenum, String mAddress
			,String mGiftDoneExist, String mMyGift) {
		this.nickname = nickname;
		this.mEmail = mEmail;
		this.phonenum = phonenum;
		this.mAddress = mAddress;
		this.mGiftDoneExist = mGiftDoneExist;
		this.mMyGift = mMyGift;
	}
	
	// mymemberlist
	public MemberVO(String mName, String mId, String nickname,int mLevel, int mManiaQuot
			,int mCash, int mPoint, int mGiftLevel,String mMyGift ,String mGiftDoneExist
			,int mGiftDoneCnt) {
		this.mName = mName;
		this.mId = mId;
		this.nickname = nickname;
		this.mLevel = mLevel;
		this.mManiaQuot = mManiaQuot;
		this.mCash = mCash;
		this.mPoint = mPoint;
		this.mGiftLevel = mGiftLevel;
		this.mGiftDoneExist = mGiftDoneExist;
		this.mMyGift = mMyGift;
		this.mGiftDoneCnt = mGiftDoneCnt;
		
	}
	
	public int getmKey() {
		return mKey;
	}
	public void setmKey(int mKey) {
		this.mKey = mKey;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPass() {
		return mPass;
	}
	public void setmPass(String mPass) {
		this.mPass = mPass;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getmReg() {
		return mReg;
	}
	public void setmReg(String mReg) {
		this.mReg = mReg;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getmGender() {
		return mGender;
	}
	public void setmGender(String mGender) {
		this.mGender = mGender;
	}
	public int getmManiaQuot() {
		return mManiaQuot;
	}
	public void setmManiaQuot(int mManiaQuot) {
		this.mManiaQuot = mManiaQuot;
	}
	public Date getmJoinDate() {
		return mJoinDate;
	}
	public void setmJoinDate(Date mJoinDate) {
		this.mJoinDate = mJoinDate;
	}
	public int getmAuthNum() {
		return mAuthNum;
	}
	public void setmAuthNum(int mAuthNum) {
		this.mAuthNum = mAuthNum;
	}
	public int getmCash() {
		return mCash;
	}
	public void setmCash(int mCash) {
		this.mCash = mCash;
	}
	public int getmPoint() {
		return mPoint;
	}
	public void setmPoint(int mPoint) {
		this.mPoint = mPoint;
	}
	public int getmLevel() {
		return mLevel;
	}
	public void setmLevel(int mLevel) {
		this.mLevel = mLevel;
	}
	public char getmEmailWhether() {
		return mEmailWhether;
	}
	public void setmEmailWhether(char mEmailWhether) {
		this.mEmailWhether = mEmailWhether;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public char getmState() {
		return mState;
	}
	public void setmState(char mState) {
		this.mState = mState;
	}
	public String getmBlockList() {
		return mBlockList;
	}
	public void setmBlockList(String mBlockList) {
		this.mBlockList = mBlockList;
	}
	public double getmSellerRate() {
		return mSellerRate;
	}
	public void setmSellerRate(double mSellerRate) {
		this.mSellerRate = mSellerRate;
	}
	public int getmGiftLevel() {
		return mGiftLevel;
	}
	public void setmGiftLevel(int mGiftLevel) {
		this.mGiftLevel = mGiftLevel;
	}
	public char getmUnderFifteen() {
		return mUnderFifteen;
	}
	public void setmUnderFifteen(char mUnderFifteen) {
		this.mUnderFifteen = mUnderFifteen;
	}
	public String getmGiftDoneExist() {
		return mGiftDoneExist;
	}
	public void setmGiftDoneExist(String mGiftDoneExist) {
		this.mGiftDoneExist = mGiftDoneExist;
	}
	public int getmGiftDoneCnt() {
		return mGiftDoneCnt;
	}
	public void setmGiftDoneCnt(int mGiftDoneCnt) {
		this.mGiftDoneCnt = mGiftDoneCnt;
	}
	public String getmMyGift() {
		return mMyGift;
	}
	public void setmMyGift(String mMyGift) {
		this.mMyGift = mMyGift;
	}
	public String getmIp() {
		return mIp;
	}
	public void setmIp(String mIp) {
		this.mIp = mIp;
	}
	
	
	
	
		
	
}
