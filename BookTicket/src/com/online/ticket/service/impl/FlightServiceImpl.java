package com.online.ticket.service.impl;

import java.util.List;

import com.online.ticket.bean.Flight;
import com.online.ticket.dao.FlightDao;
import com.online.ticket.service.FlightService;

public class FlightServiceImpl implements FlightService {

	private FlightDao flightdao;
	
	
	public FlightDao getFlightdao() {
		return flightdao;
	}

	public void setFlightdao(FlightDao flightdao) {
		this.flightdao = flightdao;
	}

	public void delete(Flight flight) {
		this.flightdao.delete(flight);
	}

	public void deleteById(Integer id) {
		this.flightdao.deleteById(id);

	}

	public Flight getById(Integer id) {
		return this.flightdao.getById(id);
	}

	public List<Flight> queryByAddress(String saddress, String laddress) {
		return this.flightdao.queryByAddress(saddress, laddress);
	}

	public void save(Flight flight) {
		this.flightdao.save(flight);

	}

	public List<Flight> findAll() {
		return this.flightdao.findAll();
	}

	public void update(Flight flight) {
		this.flightdao.update(flight);
		
	}

	public List<Flight> query(String no, String starta, String lasta,
			String startt, String lastt) {
		return this.flightdao.query(no, starta, lasta, startt, lastt);
	}

	public Flight getByflightno(String flightno) {
		return this.flightdao.getByflightno(flightno);
	}

}
