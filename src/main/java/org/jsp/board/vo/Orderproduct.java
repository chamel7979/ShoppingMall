package org.jsp.board.vo;

public class Orderproduct {
	
	
	private String productserialnumber;
	private String productname;
	private int amount;
	private int price;
	private String custid;
	private String name;
	private String address;
	private String payment;
	
	public Orderproduct() {
		// TODO Auto-generated constructor stub
	}

	public Orderproduct(String productserialnumber, String productname, int amount, int price, String custid,
			String name, String address, String payment) {
		super();
		this.productserialnumber = productserialnumber;
		this.productname = productname;
		this.amount = amount;
		this.price = price;
		this.custid = custid;
		this.name = name;
		this.address = address;
		this.payment = payment;
	}

	public String getProductserialnumber() {
		return productserialnumber;
	}

	public void setProductserialnumber(String productserialnumber) {
		this.productserialnumber = productserialnumber;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCustid() {
		return custid;
	}

	public void setCustid(String custid) {
		this.custid = custid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "Orderproduct [productserialnumber=" + productserialnumber + ", productname=" + productname + ", amount="
				+ amount + ", price=" + price + ", custid=" + custid + ", name=" + name + ", address=" + address
				+ ", payment=" + payment + "]";
	}
	
	
	
	
}
