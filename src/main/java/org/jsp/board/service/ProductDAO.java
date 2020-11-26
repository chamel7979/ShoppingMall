package org.jsp.board.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.jsp.board.vo.Orderproduct;
import org.jsp.board.vo.Product;
import org.jsp.board.vo.Shoppinglist;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO implements ProductMapper {

	@Inject
	SqlSession session;
	
	@Override
	public List<Product> getProductStockInfo(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).getProductStockInfo(map);
	}
	
	@Override
	public List<Product> getSCDInfo() {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).getSCDInfo();
	}
	
	@Override
	public List<Product> getBInfo() {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).getBInfo();
	}
	
	@Override
	public List<Product> getLInfo() {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).getLInfo();
	}
	
	@Override
	public List<Shoppinglist> getShoppingList(String custid) {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).getShoppingList(custid);
	}
	
	@Override
	public int insertOrderProduct(Orderproduct op) {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).insertOrderProduct(op);
	}
	
	//String productserialnumber, int amount
	@Override
	public int updateStock(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).updateStock(map);
	}
	
	@Override
	public int insertShoppinglist(Shoppinglist sl) {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).insertShoppinglist(sl);
	}
	
	@Override
	public int deleteShoppinglist(String productserialnumber) {
		// TODO Auto-generated method stub
		return session.getMapper(ProductMapper.class).deleteShoppinglist(productserialnumber);
	}
}
