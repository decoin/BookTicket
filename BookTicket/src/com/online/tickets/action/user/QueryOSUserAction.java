package com.online.tickets.action.user;

import java.util.List;
import java.util.Map;
import com.online.ticket.bean.User;
import com.online.ticket.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class QueryOSUserAction extends ActionSupport {
	
	private User user;
	private UserService userservice;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
		System.out.println(this.user.getName());
		List<User> us = this.userservice.query(this.user.getName(), this.user.getCardId());
		Map u = (Map)ActionContext.getContext().get("request");
		u.put("list", us);
		for(User use:us )
		{
			System.out.println(us.get(0).getName());
		}
		return SUCCESS;
	}

}
