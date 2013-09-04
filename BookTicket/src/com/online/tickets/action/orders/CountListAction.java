package com.online.tickets.action.orders;

import java.util.List;
import java.util.Map;

import com.online.ticket.bean.Flight;
import com.online.ticket.bean.Orderlist;
import com.online.ticket.bean.Orders;
import com.online.ticket.bean.User;
import com.online.ticket.comm.CharacterUtils;
import com.online.ticket.service.FlightService;
import com.online.ticket.service.OrderlistService;
import com.online.ticket.service.OrdersService;
import com.online.ticket.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CountListAction extends ActionSupport {
	
	private OrdersService orderservice;
	private CharacterUtils characterutils;
	private String name;
	private Orders orders;
	private UserService userservice;
	private OrderlistService listservice;
	private FlightService flightservice;
	private String orderno;

	public OrdersService getOrderservice() {
		return orderservice;
	}

	public void setOrderservice(OrdersService orderservice) {
		this.orderservice = orderservice;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	
	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}

	
	public OrderlistService getListservice() {
		return listservice;
	}

	public void setListservice(OrderlistService listservice) {
		this.listservice = listservice;
	}

	

	public FlightService getFlightservice() {
		return flightservice;
	}

	public void setFlightservice(FlightService flightservice) {
		this.flightservice = flightservice;
	}

	
	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}

	@SuppressWarnings("unchecked")
	public String countList()
	{
		Orders os = new Orders();
		List<Orderlist> listorder = this.listservice.findAll();
		float sum = 0;
		for(int i=0;i<listorder.size();i++)
		{
			Flight flight = this.flightservice.getByflightno(listorder.get(i).getFlights().getFlightNo());
			sum = sum + listorder.get(i).getNum()*flight.getDollars();
			this.listservice.delete(listorder.get(i));
		}
		os.setTotal(sum);
		User user = this.userservice.queryByName(name);
		String chars = characterutils.getRandomString(10);
		os.setOrderNo(chars);
		os.setUser(user);
		this.orderservice.save(os);
		if(os.getUser().getName().equals(name))
		{
			List<Orders> o = this.orderservice.queryByName(name);
			Map request = (Map)ActionContext.getContext().get("request");
			request.put("userorders", o);
		}
		return SUCCESS;
	}
	
	public String deleteOrders()
	{
		System.out.println(orderno);
		Orders os = this.orderservice.queryByNo(orderno);
		this.orderservice.delete(os);
		return SUCCESS;
	}
	

}
