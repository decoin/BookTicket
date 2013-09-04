package com.online.tickets.action.user;

import java.util.Map;

import com.online.ticket.bean.User;
import com.online.ticket.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginUserAction extends ActionSupport {
	
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
	public String execute() throws Exception 
	{
		User us = this.userservice.queryByName(this.user.getName());
		if(us!=null)
		{
			
			if(us.getPassword().equals(this.user.getPassword()))
			{
				Map request = (Map)ActionContext.getContext().getSession();
				request.put("name", us.getName());
				request.put("user", user);
				request.put("password", us.getPassword());
				return SUCCESS;
			}
			else{
				this.addFieldError("name", "密码错误!");
				return INPUT;
			}
			
		}
		else
		{
			this.addActionError("用户名不存在,请先注册!");
			return INPUT;
		}
		
	}
}
