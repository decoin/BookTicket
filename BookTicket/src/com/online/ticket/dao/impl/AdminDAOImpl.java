package com.online.ticket.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.online.ticket.bean.Admin;
import com.online.ticket.bean.User;
import com.online.ticket.dao.AdminDao;

public class AdminDAOImpl extends HibernateDaoSupport implements AdminDao{

	@SuppressWarnings("unchecked")
	public Admin queryByName(String name) {
		String hql = "from Admin admin where name='"+name+"'";
		List a = getHibernateTemplate().find(hql);
		if(a != null && a.size()>=1)
		{
			return (Admin)a.get(0);
		}
		return null;
	}

}
