package com.online.tickets.action.flight;

import com.online.ticket.bean.Flight;
import com.online.ticket.service.FlightService;
import com.opensymphony.xwork2.ActionSupport;

public class AddFlightAction extends ActionSupport{
	
	private Flight flight;
	private FlightService flightservice;
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
		this.flight.setRemains(this.flight.getNumber());
		this.flightservice.save(flight);
		return SUCCESS;
	}
	

}
