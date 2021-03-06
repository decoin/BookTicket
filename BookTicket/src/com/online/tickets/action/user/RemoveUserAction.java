package com.online.tickets.action.user;

import com.online.ticket.bean.User;
import com.online.ticket.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class RemoveUserAction extends ActionSupport{
	
	private User user;
	private UserService userservice;
	public Integer id;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
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
	@Override
	public String execute() throws Exception {
		userservice.deleteById(id);
		return SUCCESS;
	}

}
