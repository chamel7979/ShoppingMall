package org.jsp.board.service;

import java.util.List;

import org.jsp.board.vo.SBoard;



public interface BoardMapper {
	
		//create
		public int insertBoard(SBoard s);
		//read
		public List<SBoard> selectAll();
		public List<SBoard> getBoard(int boardnum);
		//update
		public int updateBoard(SBoard sb);
		//delete
		public int deleteBoard(String pw);
		//password Ȯ��
		public int checkPw(String pw);
		//��ȸ�� ����
		public int addHits(int boardnum);
	
}
