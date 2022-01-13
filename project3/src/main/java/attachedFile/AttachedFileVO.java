package attachedFile;

import java.util.Date;

public class AttachedFileVO {
	private int fileKey;
	private String fileName;
	private String filePath;
	private String fileType;
	private String fileSize;
	private Date fileDate;
	private String fileDateS;

	public AttachedFileVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AttachedFileVO(int fileKey, String fileName, String filePath, String fileType, String fileSize,
			Date fileDate, String fileDateS) {
		super();
		this.fileKey = fileKey;
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileType = fileType;
		this.fileSize = fileSize;
		this.fileDate = fileDate;
		this.fileDateS = fileDateS;
	}

	public AttachedFileVO(int fileKey, String fileName, String filePath, String fileType, String fileSize,
			Date fileDate) {
		super();
		this.fileKey = fileKey;
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileType = fileType;
		this.fileSize = fileSize;
		this.fileDate = fileDate;
	}

	public AttachedFileVO(int fileKey, String fileName, String filePath, String fileType, String fileSize,
			String fileDateS) {
		super();
		this.fileKey = fileKey;
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileType = fileType;
		this.fileSize = fileSize;
		this.fileDateS = fileDateS;
	}

	public int getFileKey() {
		return fileKey;
	}

	public void setFileKey(int fileKey) {
		this.fileKey = fileKey;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public Date getFileDate() {
		return fileDate;
	}

	public void setFileDate(Date fileDate) {
		this.fileDate = fileDate;
	}

	public String getFileDateS() {
		return fileDateS;
	}

	public void setFileDateS(String fileDateS) {
		this.fileDateS = fileDateS;
	}

}
