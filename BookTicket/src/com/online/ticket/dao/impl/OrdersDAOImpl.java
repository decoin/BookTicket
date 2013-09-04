package com.online.ticket.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.online.ticket.bean.Flight;
import com.online.ticket.bean.Orders;
import com.online.ticket.comm.CharacterUtils;
import com.online.ticket.dao.OrdersDao;

public class OrdersDAOImpl extends HibernateDaoSupport implements OrdersDao{

	private CharacterUtils characterutils;
	@SuppressWarnings("static-access")
	public void save(Orders orders) {
		
		this.getHibernateTemplate().save(orders);
	}
	
	public void getFlightno(String flightno){
		this.getHibernateTemplate().get(Flight.class, flightno);
	}

	public List<Orders> queryByName(String name) {
		String hql = "from Orders orders where user_name = '"+name+"'";
		List<Orders> orders = this.getHibernateTemplate().find(hql);
		return orders;
	}

	public Orders queryByNo(String orderno) {
		String hql = "from Orders orders where orderno = '"+orderno+"'";
		List<Orders> orders = this.getHibernateTemplate().find(hql);
		if(orders.size()!=0)
		{
			return orders.get(0);
		}
		return null;
	}

	public void delete(Orders orders) {
		this.getHibernateTemplate().delete(orders);
		
	}
	

}
