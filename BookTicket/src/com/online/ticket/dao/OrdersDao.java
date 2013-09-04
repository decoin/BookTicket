package com.online.ticket.dao;

import java.util.List;

import com.online.ticket.bean.Orders;

public interface OrdersDao {
	
	public void save(Orders orders);
	
	public List<Orders> queryByName(String name);
	
	public Orders queryByNo(String orderno);
	
	public void delete(Orders orders);

	

}
