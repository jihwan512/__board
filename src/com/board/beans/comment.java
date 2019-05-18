package com.board.beans;

public class comment {
	//��ȣ
	private int boardNum;
	
	//����
	private String comment;
	
	//���̵�
	private String id;
	
	//�̸���
	private String email;
	
	//�ۼ�����
	private String date;
	

	public int getNum() {
		return boardNum;
	}
	public void setNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getcomment() {
		return comment;
	}
	public void setcomment(String comment) {
		this.comment = comment;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getdate() {
		return date;
	}
	public void setdate(String date) {
		this.date = date;
	}
}
