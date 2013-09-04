package com.online.ticket.comm;

public class Pagination {
	//��ʼλ��
	private int start;
	
	//һ��ȡ�õ�����
	private int size;
	
	//Ҫȡ�õ�ҳ��
	private int currentPage = 1;
	
	//�ܵļ�¼ҳ��
	private int totalPage = 0;
	
	//�ܵļ�¼����
	private int totalRecord;
	
	
	//��ȡ��ʼ��¼
	public int getStart(){
		this.start = (currentPage - 1)*size;
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	
	public int getTotalRecord(){
		return totalRecord;
	}
	//�������м�¼,���Ҹ������м�¼��������ҳ��
	public void setTotalRecord(int totalRecord){
		this.totalRecord = totalRecord;
		//��ȡҳ��
		this.totalPage = totalRecord % size == 0 ? totalRecord / size:totalRecord / size +1;
	}
	
	
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	

	
	

}
