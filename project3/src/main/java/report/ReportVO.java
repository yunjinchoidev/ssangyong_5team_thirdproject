package report;

import java.util.Date;

public class ReportVO {
private int repKey;
private int mKey;
private String repReason;
private Date repDate;
private String repUser;

public ReportVO() {
	super();
	// TODO Auto-generated constructor stub
}

public ReportVO(int repKey, int mKey, String repReason, Date repDate, String repUser) {
	super();
	this.repKey = repKey;
	this.mKey = mKey;
	this.repReason = repReason;
	this.repDate = repDate;
	this.repUser = repUser;
}

public int getRepKey() {
	return repKey;
}

public void setRepKey(int repKey) {
	this.repKey = repKey;
}

public int getmKey() {
	return mKey;
}

public void setmKey(int mKey) {
	this.mKey = mKey;
}

public String getRepReason() {
	return repReason;
}

public void setRepReason(String repReason) {
	this.repReason = repReason;
}

public Date getRepDate() {
	return repDate;
}

public void setRepDate(Date repDate) {
	this.repDate = repDate;
}

public String getRepUser() {
	return repUser;
}

public void setRepUser(String repUser) {
	this.repUser = repUser;
}


}
