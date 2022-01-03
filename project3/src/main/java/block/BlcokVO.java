package block;

import java.util.Date;

public class BlcokVO {
private int bKey;
private int mKey;
private String bUser;
private String bReason;
private int bTerm;
private Date bDate;

public BlcokVO() {
	super();
	// TODO Auto-generated constructor stub
}

public BlcokVO(int bKey, int mKey, String bUser, String bReason, int bTerm, Date bDate) {
	super();
	this.bKey = bKey;
	this.mKey = mKey;
	this.bUser = bUser;
	this.bReason = bReason;
	this.bTerm = bTerm;
	this.bDate = bDate;
}

public int getbKey() {
	return bKey;
}

public void setbKey(int bKey) {
	this.bKey = bKey;
}

public int getmKey() {
	return mKey;
}

public void setmKey(int mKey) {
	this.mKey = mKey;
}

public String getbUser() {
	return bUser;
}

public void setbUser(String bUser) {
	this.bUser = bUser;
}

public String getbReason() {
	return bReason;
}

public void setbReason(String bReason) {
	this.bReason = bReason;
}

public int getbTerm() {
	return bTerm;
}

public void setbTerm(int bTerm) {
	this.bTerm = bTerm;
}

public Date getbDate() {
	return bDate;
}

public void setbDate(Date bDate) {
	this.bDate = bDate;
}


}
