package com.online.ticket.bean;

public class Orderlist {
	
	private Integer orderlist_id;
	private int num;
	private Flight flights;
	private Orders orders;
	
	public Integer getOrderlist_id() {
		return orderlist_id;
	}
	public void setOrderlist_id(Integer orderlistId) {
		orderlist_id = orderlistId;
	}
	public Flight getFlights() {
		return flights;
	}
	public void setFlights(Flight flights) {
		this.flights = flights;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	
}
