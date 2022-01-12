package attachedFile;

public class Attachedfile {
	private int fileKey;
	private String fileName;
	private String filePath;
	private String fileTye;
	private String fileSize;
	private String fileDate;

	public Attachedfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Attachedfile(int fileKey, String fileName, String filePath, String fileTye, String fileSize,
			String fileDate) {
		super();
		this.fileKey = fileKey;
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileTye = fileTye;
		this.fileSize = fileSize;
		this.fileDate = fileDate;
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

	public String getFileTye() {
		return fileTye;
	}

	public void setFileTye(String fileTye) {
		this.fileTye = fileTye;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public String getFileDate() {
		return fileDate;
	}

	public void setFileDate(String fileDate) {
		this.fileDate = fileDate;
	}

}
