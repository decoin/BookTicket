package com.online.tickets.action.admin;


import java.util.Map;

import com.online.ticket.bean.Admin;
import com.online.ticket.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAdminAction extends ActionSupport{
	
	private Admin admin;
	private AdminService adminservice;
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public AdminService getAdminservice() {
		return adminservice;
	}
	public void setAdminservice(AdminService adminservice) {
		this.adminservice = adminservice;
	}
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		
		System.out.println(this.admin.getName() + "  " +  this.admin.getPassword());
		Admin adm = this.adminservice.queryByName(this.admin.getName());
		System.out.println("name="+adm.getName());
		if(adm!=null)
		{
			System.out.println("passord="+this.admin.getPassword());
			
			if(adm.getPassword().equals(this.admin.getPassword()))
			{
				Map admins = (Map)ActionContext.getContext().getSession();
				admins.put("name", adm.getName());
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
