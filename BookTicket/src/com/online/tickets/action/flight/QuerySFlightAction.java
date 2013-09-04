package com.online.tickets.action.flight;

import java.util.List;
import java.util.Map;

import com.online.ticket.bean.Flight;
import com.online.ticket.service.FlightService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class QuerySFlightAction extends ActionSupport {
	
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
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		List<Flight> fs = (List<Flight>) this.flightservice.query(this.flight.getFlightNo(), this.flight.getStartAddress(), this.flight.getLastAddress(), this.flight.getStarttime(), this.flight.getLasttime());
		Map att = (Map)ActionContext.getContext().get("request");
		att.put("flights",fs);			
		return SUCCESS;
	}
	

}
