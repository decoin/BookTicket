package com.online.ticket.service.impl;

import java.util.List;
import com.online.ticket.bean.User;
import com.online.ticket.comm.Pagination;
import com.online.ticket.dao.UserDAO;
import com.online.ticket.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDAO userdao;
	
	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	public void delete(User user) {
		this.userdao.delete(user);
		
	}

	public void deleteById(Integer id) {
		this.userdao.deleteById(id);
		
	}

	public User getById(Integer id) {
		return this.userdao.getById(id);
	}

	public List<User> queryByName(String name, Pagination pagination) {
		return userdao.queryByName(name, pagination);
	}

	public void save(User user) {
		this.userdao.save(user);
		
	}

	public List<User> findAll() {
		return this.userdao.findAlL();
	}


	public void update(User user) {
		this.userdao.update(user);
		
	}

	public List<User> queryByAddress(String address) {
		return this.userdao.queryByAddress(address);
	}

	public List<User> queryByCardId(String cardId) {
		return this.userdao.queryByCardId(cardId);
	}

	public List<User> queryByNameandPassword(String name, String password) {
		return this.userdao.queryByNameandPassword(name, password);
	}

	public User queryByName(String name) {
		return this.userdao.queryByName(name);
		
	}

	public List<User> query(String name, String cardid) {
		return this.userdao.query(name, cardid);
	}
	
	
	

}
