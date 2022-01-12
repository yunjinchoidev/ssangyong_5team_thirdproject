package notice;

import java.sql.Date;

public class NoticeVO {
	private int noticeKey;
	private String noticeTitle;
	private String noticeContents;
	private Date noticeDate;
	private int noticeView;

	public NoticeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoticeVO(int noticeKey, String noticeTitle, String noticeContents, Date noticeDate, int noticeView) {
		super();
		this.noticeKey = noticeKey;
		this.noticeTitle = noticeTitle;
		this.noticeContents = noticeContents;
		this.noticeDate = noticeDate;
		this.noticeView = noticeView;
	}

	public int getNoticeKey() {
		return noticeKey;
	}

	public void setNoticeKey(int noticeKey) {
		this.noticeKey = noticeKey;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContents() {
		return noticeContents;
	}

	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public int getNoticeView() {
		return noticeView;
	}

	public void setNoticeView(int noticeView) {
		this.noticeView = noticeView;
	}

}
