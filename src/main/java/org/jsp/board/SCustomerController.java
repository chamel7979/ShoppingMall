package org.jsp.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.board.service.SCustomerDAO;
import org.jsp.board.vo.SCustomer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SCustomerController {

	@Inject
	SCustomerDAO sdao;

	// 회원가입 폼으로 가기
	@RequestMapping("/gojoinform")
	public String gojoinform() {

		return "/jsp/scustomer/customerJoinForm";
	}

	// 아이디 중복확인
	@RequestMapping("/idcheckform")
	public String idcheckform() {
		return "/jsp/scustomer/idcheckform";
	}

	// 아이디 중복확인 처리
	@RequestMapping("/idcheck")
	public String idcheck(Model model, String custid) {
		String idok = sdao.checkId(custid);

		if (idok != null) {
			model.addAttribute("idok", false);
		} else {
			model.addAttribute("idok", true);
		}

		model.addAttribute("custid", custid);

		return "/jsp/scustomer/idcheckform";
	}

	// 가입 버튼누르면 처리
	@RequestMapping(value = "/joincustomer", method = RequestMethod.POST)
	public String joincustomer(SCustomer sc, Model model, String custid, String password, String name, String email,
			String division, String idno, String address) {

		sc = new SCustomer(custid, password, name, email, division, idno, address);
		System.out.println(sc);

		model.addAttribute("sc");

		sdao.joinCustomer(sc);

		return "home";
	}

	// 로그인 폼으로 가기
	@RequestMapping("/gologinform")
	public String gologinform() {
		return "/jsp/scustomer/logincustomer";
	}

	// 로그인 처리
	@RequestMapping("/login")
	public String login(HttpSession session, SCustomer sc, HttpServletResponse resp) throws IOException {

		sc = sdao.login(sc);

		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		if (sc != null) {
			
				session.setAttribute("loginid", sc.getCustid());

				return "redirect:./";
							
		} else {

			out.println("<script language='javascript'>");
			out.println("alert('아이디 또는 비밀번호가 틀렸습니다. 다시 입력해주세요.');");
			out.println("</script>");
			out.flush();

			return "/jsp/scustomer/logincustomer";
		}
		
		

	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		session.removeAttribute("loginid");

		return "redirect:./";
	}

	// 개인정보수정 비밀번호 확인
	@RequestMapping("/checkpassword")
	public String checkpassword() {
		return "/jsp/scustomer/checkpassword";
	}

	// 개인정보수정 처리
	@RequestMapping("/confirmupdate")
	public String confirmupdate(SCustomer sc, HttpSession session) {
		sc = sdao.login(sc);

		if (sc != null) {
			session.setAttribute("customer", sc);
		} else {
			session.removeAttribute("customer");
		}

		return "/jsp/scustomer/confirmresult";
	}

	// 개인정보수정 폼으로 가기
	@RequestMapping("/goupdateform")
	public String goupdateform() {

		return "/jsp/scustomer/scustomerUpdateForm";
	}

	// 개인정보수정 업데이트 처리
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(SCustomer sc, Model model) {

		// sc = new SCustomer(custid,password,name,email,division,idno,address);
		model.addAttribute("customer");
		sdao.updateCustomer(sc);

		return "redirect:./";
	}

	// 회원탈퇴 비밀번호 확인
	@RequestMapping("/deletemember")
	public String deletemember() {

		return "/jsp/scustomer/deletemember";
	}

	// 회원탈퇴
	@RequestMapping(value = "/confirmdelete", method = RequestMethod.POST)
	public String confirmdelete(String password, HttpSession session) {
		String custid = (String) session.getAttribute("loginid");
		HashMap<String, String> map = new HashMap<String, String>();

		map.put("custid", custid);
		map.put("password", password);

		int result = sdao.deleteCustomer(map);

		System.out.println(result);

		if (result != 0) { // 탈퇴성공
			session.removeAttribute("loginid");
		}

		return "/jsp/scustomer/deleteresult";

	}
}
