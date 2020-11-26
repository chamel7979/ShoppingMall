package org.jsp.board.vo;

public class SBoard {
	private int boardnum;
	private String custid;
	private String title;
	private String content;
	private String inputdate;
	private int hits;
	private String pw;
	
	public SBoard() {
		// TODO Auto-generated constructor stub
	}

	public SBoard(int boardnum, String custid, String title, String content, String inputdate, int hits,
			String pw) {
		super();
		this.boardnum = boardnum;
		this.custid = custid;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.hits = hits;
		this.pw = pw;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getCustid() {
		return custid;
	}

	public void setCustid(String custid) {
		this.custid = custid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getInputdate() {
		return inputdate;
	}

	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}
	
	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "SBoard [boardnum=" + boardnum + ", custid=" + custid + ", title=" + title + ", content=" + content
				+ ", inputdate=" + inputdate + ", hits=" + hits + ", pw=" + pw + "]";
	}

	
	
	
}
