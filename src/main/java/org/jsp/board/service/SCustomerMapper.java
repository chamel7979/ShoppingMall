package org.jsp.board.service;

import java.util.HashMap;

import org.jsp.board.vo.SCustomer;

public interface SCustomerMapper {
	//1.회원가입
	public int joinCustomer(SCustomer sc);
	//2.회원정보수정
	public int updateCustomer(SCustomer sc);
	//3.회원탈퇴
	public int deleteCustomer(HashMap<String, String> map);
	//4.로그인
	public SCustomer login(SCustomer sc);
	//5.아이디 중복확인
	public String checkId(String custid);
	
	//public String findPassword(String custid);
}