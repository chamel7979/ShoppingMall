package org.jsp.board.vo;

public class Shoppinglist {
	
	private String custid;
	private String productserialnumber;
	private String productname;
	private int amount;
	private int price;
	
	public Shoppinglist() {
		// TODO Auto-generated constructor stub
	}

	public Shoppinglist(String custid, String productserialnumber, String productname, int amount, int price) {
		super();
		this.custid = custid;
		this.productserialnumber = productserialnumber;
		this.productname = productname;
		this.amount = amount;
		this.price = price;
	}

	public String getCustid() {
		return custid;
	}

	public void setCustid(String custid) {
		this.custid = custid;
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

	@Override
	public String toString() {
		return "Shoppinglist [custid=" + custid + ", productserialnumber=" + productserialnumber + ", productname="
				+ productname + ", amount=" + amount + ", price=" + price + "]";
	}
	
	
}
