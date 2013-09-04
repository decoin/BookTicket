package com.online.tickets.action.orders;

import java.util.List;
import java.util.Map;

import com.online.ticket.bean.Flight;
import com.online.ticket.bean.Orderlist;
import com.online.ticket.service.FlightService;
import com.online.ticket.service.OrderlistService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AddOrderlistAction extends ActionSupport{
	private Orderlist orderlist;
	private OrderlistService listservice;
	private FlightService flightservice;
	private String flightno;
	
	
	public String getFlightno() {
		return flightno;
	}
	public void setFlightno(String flightno) {
		this.flightno = flightno;
	}

	public FlightService getFlightservice() {
		return flightservice;
	}
	public void setFlightservice(FlightService flightservice) {
		this.flightservice = flightservice;
	}
	public Orderlist getOrderlist() {
		return orderlist;
	}
	public void setOrderlist(Orderlist orderlist) {
		this.orderlist = orderlist;
	}
	public OrderlistService getListservice() {
		return listservice;
	}
	public void setListservice(OrderlistService listservice) {
		this.listservice = listservice;
	}
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {	
		
		List<Orderlist> odlist= this.listservice.findAll();
		Orderlist o = new Orderlist();			
		Flight f = this.flightservice.getByflightno(flightno);
		int n=0;
		for(int i=0;i<odlist.size();i++)
		{
			if(!(odlist.get(i).getFlights().getFlightNo().equals(flightno)))
			{
					n++;					
			}
			else
				break;
		}
		if(n>=odlist.size())
		{
			o.setFlights(f);
			o.setNum(1);
			this.listservice.save(o);
		}else{
			odlist.get(n).setNum(odlist.get(n).getNum()+1);
			this.listservice.update(odlist.get(n));
		}			
		Orderlist os = (Orderlist)this.listservice.queryByflightno(flightno);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("os", os);	
		return SUCCESS;
	}
	

}
