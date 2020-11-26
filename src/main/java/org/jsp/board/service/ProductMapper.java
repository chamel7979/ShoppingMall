package org.jsp.board.service;

import java.util.HashMap;
import java.util.List;

import org.jsp.board.vo.Orderproduct;
import org.jsp.board.vo.Product;
import org.jsp.board.vo.Shoppinglist;

public interface ProductMapper {
	
	public List<Product> getProductStockInfo(HashMap<String, String> map);
	
	public List<Product> getSCDInfo();
	
	public List<Product> getBInfo();
	
	public List<Product> getLInfo();

	public List<Shoppinglist> getShoppingList(String custid);
	
	public int insertOrderProduct(Orderproduct op);
	
	public int deleteShoppinglist(String productserialnumber);
	
	//int amount, String productserialnumber
	public int updateStock(HashMap<String, String> map);
	
	public int insertShoppinglist(Shoppinglist sl);
}
