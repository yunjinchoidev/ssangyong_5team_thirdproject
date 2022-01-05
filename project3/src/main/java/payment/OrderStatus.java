package payment;

public class OrderStatus {
	private String orderstatus;
	private String receiptstatus;

	public OrderStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderStatus(String orderstatus, String receiptstatus) {
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
