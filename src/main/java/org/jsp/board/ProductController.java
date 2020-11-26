package org.jsp.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.jsp.board.service.ProductDAO;
import org.jsp.board.vo.Orderproduct;
import org.jsp.board.vo.Product;
import org.jsp.board.vo.Shoppinglist;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {
	
	@Inject
	ProductDAO pdao;
	
	ArrayList<Product> pList = new ArrayList<Product>();
	ArrayList<Product> scdList = new ArrayList<Product>();
	ArrayList<Product> bList = new ArrayList<Product>();
	ArrayList<Product> lList = new ArrayList<Product>();
	ArrayList<Shoppinglist> slList = new ArrayList<Shoppinglist>();
	
	//����/����/å��
	@RequestMapping(value="menu1", method=RequestMethod.GET)
	public String menu1(Model model) {
		
		scdList = (ArrayList)pdao.getSCDInfo();
		model.addAttribute("scdList",scdList);
		//System.out.println(scdList);
		
		return "menu1";
	}
	
	//ħ��/��Ʈ����
	@RequestMapping(value="menu2", method=RequestMethod.GET)
	public String menu2(Model model) {
		
		bList = (ArrayList)pdao.getBInfo();
		model.addAttribute("bList",bList);
		
		return "menu2";
	}
	
	//����
	@RequestMapping(value="menu3", method=RequestMethod.GET)
	public String menu3(Model model) {
		
		lList = (ArrayList)pdao.getLInfo();
		model.addAttribute("lList",lList);
		
		return "menu3";
	}
	
	//��ǰ���Ȯ�� �������� ����
	@RequestMapping(value="checkcheck", method=RequestMethod.GET)
	public String stockcheck() {
		
		return "stockcheck";
	}
	
	//��ǰ���Ȯ��
	@RequestMapping(value="gostockcheck", method=RequestMethod.GET)
	public String gostockcheck(Model model, String productserialnumber, String location){
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("location", location);
		map.put("productserialnumber", productserialnumber);
		
		pList = (ArrayList)pdao.getProductStockInfo(map);

		model.addAttribute("pList",pList);
		
		
		return "stockcheck";
	}
	
	//��ǰ �󼼺���
	@RequestMapping(value="goviewdetail", method=RequestMethod.GET, produces="application/text;charset=utf8")
	public String goviewdetail(String status,String category,String productserialnumber,
			int price, int stock, String location, String productname, Model model) {
		
		Product p = new Product(category,productserialnumber, price, stock, location, productname);
		model.addAttribute("p",p);
		model.addAttribute("status",status);
		model.addAttribute("category",category);
		
		return "menuviewdetail";
	}
	
	//�ֹ������� ����
	@RequestMapping(value="gobuy", method=RequestMethod.GET)
	public String gobuy(Model model,String productname,String productserialnumber,int amount,int price) {
	
		model.addAttribute("amount",amount);
		model.addAttribute("price",price);
		model.addAttribute("productname",productname);
		model.addAttribute("productserialnumber",productserialnumber);
		
		return "billingForm";
	}
	
	//�ֹ��ϱ�
	@RequestMapping(value="buyproduct", method=RequestMethod.GET)
	public String buyproduct(Model model,Orderproduct op,String amount,String productserialnumber,HttpServletResponse resp) throws IOException {
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		model.addAttribute("op",op);
		model.addAttribute("amount",amount);
		model.addAttribute("productserialnumber",productserialnumber);
		
		int result = pdao.insertOrderProduct(op);
		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("amount", amount);
		map.put("productserialnumber", productserialnumber);
		
		//�ֹ��� ������ŭ ��� ��������
		pdao.updateStock(map);
		
		if(result != 0) { //�ֹ������ϸ�
			out.println("<script language='javascript'>");
			out.println("alert('�ֹ��Ǿ����ϴ�');");
			out.println("</script>");
			out.flush();
			return "home";
		}
			//�ֹ������ϸ� �ٽ� �ֹ�������
			return "gobuy";
	}
	
	
	//��ٱ��� �������� ����
	@RequestMapping(value="goshoppingbasket", method=RequestMethod.GET)
	public String goshoppingbasket(HttpSession session,Model model) {
		
		String custid = (String)session.getAttribute("loginid");
		slList = (ArrayList)pdao.getShoppingList(custid);
		
		model.addAttribute("slList",slList);
		
		return "shoppingbasket";
	}
	
	//��ٱ��Ͽ� ���
	@RequestMapping(value="putproduct", method=RequestMethod.GET)
	public String putproduct(HttpSession session,Shoppinglist sl,Model model) {
		
		String custid = (String)session.getAttribute("loginid");
		slList = (ArrayList)pdao.getShoppingList(custid);
		
		model.addAttribute("slList",slList);
		model.addAttribute("sl",sl);
		slList.add(sl);
		
		pdao.insertShoppinglist(sl);
		
		return "redirect:goshoppingbasket";
	}
	
	//��ٱ��Ͽ��� ����
		@RequestMapping(value="deleteshoppingbasket", method=RequestMethod.GET)
		public String deleteshoppingbasket(Shoppinglist sl,HttpSession session,String productserialnumber,Model model) {
			
			String custid = (String)session.getAttribute("loginid");
			slList = (ArrayList)pdao.getShoppingList(custid);
		
			int result=pdao.deleteShoppinglist(productserialnumber);
			model.addAttribute("sl",sl);
			
			if(result != 0) {
				slList.remove(sl);
			}
			
			model.addAttribute("slList",slList);
			
			return "redirect:goshoppingbasket";
		}
}
