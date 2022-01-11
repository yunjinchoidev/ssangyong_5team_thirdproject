package productCategory;

public class ProductCategory {
	private int proCateKey;
	private String proCateName;
	private String proLagreCate;
	private String proMiddleCate;
	private String proSmallCate;

	public ProductCategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductCategory(int proCateKey, String proCateName, String proLagreCate, String proMiddleCate,
			String proSmallCate) {
		super();
		this.proCateKey = proCateKey;
		this.proCateName = proCateName;
		this.proLagreCate = proLagreCate;
		this.proMiddleCate = proMiddleCate;
		this.proSmallCate = proSmallCate;
	}

	public int getProCateKey() {
		return proCateKey;
	}

	public void setProCateKey(int proCateKey) {
		this.proCateKey = proCateKey;
	}

	public String getProCateName() {
		return proCateName;
	}

	public void setProCateName(String proCateName) {
		this.proCateName = proCateName;
	}

	public String getProLagreCate() {
		return proLagreCate;
	}

	public void setProLagreCate(String proLagreCate) {
		this.proLagreCate = proLagreCate;
	}

	public String getProMiddleCate() {
		return proMiddleCate;
	}

	public void setProMiddleCate(String proMiddleCate) {
		this.proMiddleCate = proMiddleCate;
	}

	public String getProSmallCate() {
		return proSmallCate;
	}

	public void setProSmallCate(String proSmallCate) {
		this.proSmallCate = proSmallCate;
	}

}
