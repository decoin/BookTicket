package com.online.ticket.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.online.ticket.bean.Flight;
import com.online.ticket.dao.FlightDao;

public class FlightDAOImpl extends HibernateDaoSupport implements FlightDao{

	public void delete(Flight flight) {
		this.getHibernateTemplate().delete(flight);
		
	}

	@SuppressWarnings("unchecked")
	public void deleteById(Integer id) {
		String hql= "from Flight flight where flight_id = "+id;
		List<Flight> flights = (List<Flight>)this.getHibernateTemplate().find(hql);
		this.getHibernateTemplate().delete(flights.get(0));
		
	}

	public Flight getById(Integer id) {
		String hql = "from Flight flight where flight_id = '"+id+"'";
		List<Flight> list= this.getHibernateTemplate().find(hql);
		 if(list.size()!=0)
		 {
			 Flight flight = list.get(0);
			 return flight;
		 }
		 return null;
		
	}

	@SuppressWarnings("unchecked")
	public List<Flight> queryByAddress(String saddress, String laddress) {
		String hql = "from Flight flight where startaddress='+saddress' and lastaddress='+laddress'";
		List<Flight> flights = (List<Flight>)this.getHibernateTemplate().find(hql);
		return flights;
	}

	public void save(Flight flight) {
		this.getHibernateTemplate().save(flight);
		
	}

	@SuppressWarnings("unchecked")
	public List<Flight> findAll() {
		String hql = "from Flight flight order by flight.flight_id";
		return this.getHibernateTemplate().find(hql);
	}
	
	public void update(Flight flight)
	{
		this.getHibernateTemplate().update(flight);
	}

	@SuppressWarnings("unchecked")
	public List<Flight> query(String no, String starta, String lasta,
			String startt, String lastt) {
		String hql =
			"from Flight flight where flightno = '"+no+"' or startAddress ='"+starta+"' or lastAddress='"+lasta+"'or starttime='"+startt+"'or lasttime='"+lastt+"'";
		List<Flight> flights = (List<Flight>)this.getHibernateTemplate().find(hql);
		return flights;
	}

	@SuppressWarnings("unchecked")
	public Flight getByflightno(String flightno) {
		String hql = "from Flight flight where flightno = '"+flightno+"'";
		List<Flight> list= this.getHibernateTemplate().find(hql);
		 if(list.size()!=0)
		 {
			 Flight flight = list.get(0);
			 return flight;
		 }
		 return null;
		
	}

}
