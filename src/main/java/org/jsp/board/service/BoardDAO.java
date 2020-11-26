package org.jsp.board.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.jsp.board.vo.SBoard;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO implements BoardMapper {

	@Inject
	SqlSession session;

	@Override
	public int insertBoard(SBoard s) {
		// TODO Auto-generated method stub
		return session.getMapper(BoardMapper.class).insertBoard(s);
	}

	@Override
	public int deleteBoard(String pw) {
		// TODO Auto-generated method stub
		return session.getMapper(BoardMapper.class).deleteBoard(pw);
	}

	@Override
	public List<SBoard> selectAll() {
		// TODO Auto-generated method stub
		return session.getMapper(BoardMapper.class).selectAll();
	}

	@Override
	public List<SBoard> getBoard(int boardnum) {
		// TODO Auto-generated method stub
		return session.getMapper(BoardMapper.class).getBoard(boardnum);
	}

	@Override
	public int updateBoard(SBoard sb) {
		// TODO Auto-generated method stub
		return session.getMapper(BoardMapper.class).updateBoard(sb);
	}

	@Override
	public int checkPw(String pw) {

		return session.getMapper(BoardMapper.class).checkPw(pw);
	}
	
	@Override
	public int addHits(int boardnum) {
		// TODO Auto-generated method stub
		return session.getMapper(BoardMapper.class).addHits(boardnum);
	}
}
