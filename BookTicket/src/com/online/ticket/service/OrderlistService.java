package com.online.ticket.service;

import java.util.List;

import com.online.ticket.bean.Orderlist;

public interface OrderlistService {
	
	public void save(Orderlist orderlist);
	
	public Orderlist queryByflightno(String flightno);
	
	public List<Orderlist> findAll();
	
	public void update(Orderlist orderlist);
	
	public Orderlist queryById(int id);
	
	public void delete(Orderlist orderlist);


}
