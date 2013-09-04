package com.online.tickets.action.flight;

import com.online.ticket.bean.Flight;
import com.online.ticket.service.FlightService;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteFlightAction extends ActionSupport {
	
	private Flight flight;
	private FlightService flightservice;
	private Integer id;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Flight getFlight() {
		return flight;
	}
	public void setFlight(Flight flight) {
		this.flight = flight;
	}
	public FlightService getFlightservice() {
		return flightservice;
	}
	public void setFlightservice(FlightService flightservice) {
		this.flightservice = flightservice;
	}
	
	@Override
	public String execute() throws Exception {
		this.flightservice.deleteById(id);
		return SUCCESS;
	}

}
