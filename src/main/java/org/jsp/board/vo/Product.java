package org.jsp.board.vo;

public class Product {
	
	private String category;
	private String productserialnumber;
	private int price;
	private int stock;
	private String location;
	private String productname;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(String category,String productserialnumber, int price, int stock, String location, String productname) {
		super();
		this.category = category;
		this.productserialnumber = productserialnumber;
		this.price = price;
		this.stock = stock;
		this.location = location;
		this.productname = productname;
	}
	
	
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProductserialnumber() {
		return productserialnumber;
	}

	public void setProductserialnumber(String productserialnumber) {
		this.productserialnumber = productserialnumber;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	@Override
	public String toString() {
		return "Product [category=" + category + ", productserialnumber=" + productserialnumber + ", price=" + price
				+ ", stock=" + stock + ", location=" + location + ", productname=" + productname + "]";
	}
	
	
}
