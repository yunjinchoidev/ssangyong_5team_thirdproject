package orderStatus;

public class OrderStatusVO {
	private String orderstatus;
	private String receiptstatus;

	public OrderStatusVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderStatusVO(String orderstatus, String receiptstatus) {
		super();
		this.orderstatus = orderstatus;
		this.receiptstatus = receiptstatus;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

	public String getReceiptstatus() {
		return receiptstatus;
	}

	public void setReceiptstatus(String receiptstatus) {
		this.receiptstatus = receiptstatus;
	}

}
