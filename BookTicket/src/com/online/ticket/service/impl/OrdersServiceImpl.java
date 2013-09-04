package com.online.ticket.service.impl;

import java.util.List;

import com.online.ticket.dao.OrdersDao;
import com.online.ticket.bean.Orders;
import com.online.ticket.service.OrdersService;

public class OrdersServiceImpl implements OrdersService{
	
	private OrdersDao ordersdao;
	

	public OrdersDao getOrdersdao() {
		return ordersdao;
	}


	public void setOrdersdao(OrdersDao ordersdao) {
		this.ordersdao = ordersdao;
	}


	public void save(Orders orders) {
		this.ordersdao.save(orders);
		
	}


	public List<Orders> queryByName(String name) {
		return this.ordersdao.queryByName(name);
	}


	public Orders queryByNo(String orderno) {
		return this.ordersdao.queryByNo(orderno);
	}


	public void delete(Orders orders) {
		this.ordersdao.delete(orders);
		
	}


	
}
