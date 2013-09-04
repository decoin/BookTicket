package com.online.ticket.dao.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {

	private HibernateUtils(){
		
	}
	private static final String CONFIG_FILE_LOCATION = "/hibernate.cfg.xml";
	private static final Configuration configuration = new Configuration().configure(CONFIG_FILE_LOCATION);
	private static final SessionFactory sessionFactory = configuration.buildSessionFactory();
	//��ȡsession����
	public static Session getSession(){
		return sessionFactory.openSession();
	}
	//��ȡSessionFactory����
	public static SessionFactory getSessiongFactory(){
		return sessionFactory;
	}
}
