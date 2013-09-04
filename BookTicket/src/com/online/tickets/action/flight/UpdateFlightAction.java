package com.online.tickets.action.flight;

import com.online.ticket.bean.Flight;
import com.online.ticket.service.FlightService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateFlightAction extends ActionSupport {
	
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
		
		Flight f = this.flightservice.getByflightno(this.flight.getFlightNo());
		System.out.println(f.getRemains());
		
		if(this.flight.getNumber()>=f.getNumber())
		{
			int n = this.flight.getNumber()-f.getNumber();
			int s = this.flight.getRemains()+n;
			this.flight.setRemains(s);
			System.out.println("更新remains"+this.flight.getRemains());
		}
		else
		{
			int m = f.getNumber()-this.flight.getNumber();
			if(f.getRemains()==0)
			{
				this.addFieldError("number", "票已经售完,不能再修改总票数!");
				this.flight.setNumber(f.getNumber());
				this.flight.setRemains(0);
				//return INPUT;
			}
			else
			{
				this.flight.setRemains(this.flight.getRemains()-m);
			}
		}
		
		this.flightservice.update(flight);
		return SUCCESS;
	}

}
