package com.online.tickets.action.flight;

import java.util.Map;

import com.online.ticket.bean.Flight;
import com.online.ticket.service.FlightService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class QueryFlightAction extends ActionSupport{

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
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list", this.flightservice.findAll());
		return SUCCESS;
	}
}
