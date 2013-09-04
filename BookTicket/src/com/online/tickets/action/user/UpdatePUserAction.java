package com.online.tickets.action.user;

import com.online.ticket.bean.User;
import com.online.ticket.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePUserAction extends ActionSupport{

	private UserService userservice;
	private User user;
	public Integer id;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public UserService getUserservice() {
		return userservice;
	}
	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String execute() throws Exception {
		user = this.userservice.getById(id);
		this.userservice.update(user);
		return SUCCESS;
	}
}
