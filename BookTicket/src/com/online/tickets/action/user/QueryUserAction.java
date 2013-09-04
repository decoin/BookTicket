package com.online.tickets.action.user;

import java.util.Map;

import com.online.ticket.bean.User;
import com.online.ticket.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class QueryUserAction extends ActionSupport{
	
	private UserService userservice;
	private String name;
	

	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public UserService getUserservice() {
		return userservice;
	}


	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}


	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("list", userservice.findAll());
	//	User use = (User) ActionContext.getContext().get("use");
		
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public String listOne()
	{
		User use =  userservice.queryByName(name);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("use",use);
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String password()
	{
		User use = userservice.queryByName(name);
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("pwd", use.getPassword());
		return SUCCESS;
	}
}
