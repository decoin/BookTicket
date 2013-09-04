package com.online.ticket.dao;

import java.util.List;

import com.online.ticket.bean.Orderlist;

public interface OrderlistDao {
	
	public void save(Orderlist orderlist);

	public Orderlist queryByflightno(String flightno);
	
	public List<Orderlist> findAll();
	
	public void update(Orderlist orderlist);
	
	public Orderlist queryById(int id);
	
	public void delete(Orderlist orderlist);
	
}
