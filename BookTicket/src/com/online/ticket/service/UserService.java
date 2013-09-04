package com.online.ticket.service;

import java.util.List;

import com.online.ticket.bean.User;
import com.online.ticket.comm.Pagination;

public interface UserService {
	
	//����user,������������������ݣ����û���������������
	public void save(User user);
	
	//ɾ��һ��userʵ��
	public void delete(User user);
	
	//��������ɾ��һ��userʵ��
	public void deleteById(Integer id);
	
	//���������õ�usesrʵ��
	public User getById(Integer id);
	
	//����ѧ������ģ����ѯ�������ҳ
	public List<User> queryByName(String name,Pagination pagination);
	
	public void update(User user);
	
	public List<User> findAll();
	
	public List<User> queryByAddress(String address);
	
	public List<User> queryByCardId(String cardId);
	
	public List<User> queryByNameandPassword(String name,String password);
	
	public User queryByName(String name);
	
	public List<User> query(String name,String cardid);


}
