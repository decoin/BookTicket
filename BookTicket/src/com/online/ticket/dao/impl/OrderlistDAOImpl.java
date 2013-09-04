package com.online.ticket.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.online.ticket.bean.Orderlist;
import com.online.ticket.dao.OrderlistDao;

public class OrderlistDAOImpl extends HibernateDaoSupport implements OrderlistDao{

	public void save(Orderlist orderlist) {
		this.getHibernateTemplate().save(orderlist);
		
	}

	@SuppressWarnings("unchecked")
	public Orderlist queryByflightno(String flightno) {
		String hql="from Orderlist orderlist where flightno = '"+flightno+"'";
		List<Orderlist> list = this.getHibernateTemplate().find(hql);
		if(list.size()!=0)
		{
			Orderlist orderlist = list.get(0);
			return orderlist;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Orderlist> findAll() {
		String hql = "from Orderlist orderlist order by orderlist.orderlist_id";
		return this.getHibernateTemplate().find(hql);
	}

	public void update(Orderlist orderlist) {
		this.getHibernateTemplate().saveOrUpdate(orderlist);
		
	}

	@SuppressWarnings("unchecked")
	public Orderlist queryById(int id) {
		String hql = "from Orderlist orderlist where orderlist.orderlist_id = '"+id+"'";
		List<Orderlist> orderlist = this.getHibernateTemplate().find(hql);
		if(orderlist.size()!=0)
		{
			return orderlist.get(0);
		}
		return null;
	}

	public void delete(Orderlist orderlist) {
		this.getHibernateTemplate().delete(orderlist);
		
	}
	

}
