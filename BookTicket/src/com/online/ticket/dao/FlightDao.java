package com.online.ticket.dao;

import java.util.List;

import com.online.ticket.bean.Flight;

public interface FlightDao {
	
	public void save(Flight flight);
	
	public void delete(Flight flight);
	
	public void deleteById(Integer id);
	
	public Flight getById(Integer id);
	
	public List<Flight> queryByAddress(String saddress,String laddress);
	
	public List<Flight> findAll();
	
	public void update(Flight flight);
	
	//根据多个条件模糊查询航班
	public List<Flight> query(String no,String starta,String lasta,String startt,String lastt);
	
	public Flight getByflightno(String flightno);
}
