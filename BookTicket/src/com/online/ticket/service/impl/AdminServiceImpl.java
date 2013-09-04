package com.online.ticket.service.impl;

import com.online.ticket.bean.Admin;
import com.online.ticket.dao.AdminDao;
import com.online.ticket.service.AdminService;

public class AdminServiceImpl implements AdminService{
	private AdminDao admindao;
	

	public AdminDao getAdmindao() {
		return admindao;
	}


	public void setAdmindao(AdminDao admindao) {
		this.admindao = admindao;
	}


	public Admin queryByName(String name) {
		return this.admindao.queryByName(name);
	}

}
