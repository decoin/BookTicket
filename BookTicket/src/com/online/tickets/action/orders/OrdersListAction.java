package com.online.tickets.action.orders;

import java.util.List;
import java.util.Map;

import com.online.ticket.bean.Orderlist;
import com.online.ticket.comm.CharacterUtils;
import com.online.ticket.service.OrderlistService;
import com.online.ticket.service.OrdersService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrdersListAction extends ActionSupport {
	
	private Orderlist orderlist;
	private OrderlistService listservice;

	private int orderlist_id;
	
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
	
	public int getOrderlist_id() {
		return orderlist_id;
	}
	public void setOrderlist_id(int orderlistId) {
		orderlist_id = orderlistId;
	}
	

	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		List<Orderlist> odlist = this.listservice.findAll();
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("odlist", odlist);	
		return SUCCESS;
	}
	
	public String deleteOrderlist(){		
		System.out.println(orderlist_id);
		Orderlist orlist = this.listservice.queryById(orderlist_id);
		this.listservice.delete(orlist);
		return SUCCESS;
	}
	
}
