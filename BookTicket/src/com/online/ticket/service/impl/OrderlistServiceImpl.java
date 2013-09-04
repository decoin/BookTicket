package com.online.ticket.service.impl;

import java.util.List;

import com.online.ticket.bean.Orderlist;
import com.online.ticket.dao.FlightDao;
import com.online.ticket.dao.OrderlistDao;
import com.online.ticket.service.OrderlistService;

public class OrderlistServiceImpl implements OrderlistService{
	
	private OrderlistDao orderlistdao;
	private FlightDao flightdao;
	

	public FlightDao getFlightdao() {
		return flightdao;
	}

	public void setFlightdao(FlightDao flightdao) {
		this.flightdao = flightdao;
	}

	public OrderlistDao getOrderlistdao() {
		return orderlistdao;
	}

	public void setOrderlistdao(OrderlistDao orderlistdao) {
		this.orderlistdao = orderlistdao;
	}

	public void save(Orderlist orderlist) {
		this.orderlistdao.save(orderlist);
		
	}

	public Orderlist queryByflightno(String flightno) {
		return this.orderlistdao.queryByflightno(flightno);
	}

	public List<Orderlist> findAll() {
		return this.orderlistdao.findAll();
	}

	public void update(Orderlist orderlist) {
		this.orderlistdao.update(orderlist);
		
	}

	public Orderlist queryById(int id) {
		return this.orderlistdao.queryById(id);
	}

	public void delete(Orderlist orderlist) {
		this.orderlistdao.delete(orderlist);
		
	}


	

}
