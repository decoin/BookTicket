package com.online.ticket.dao;

import java.util.List;

import com.online.ticket.bean.User;
import com.online.ticket.comm.Pagination;

public interface UserDAO {
	//����student,������������������ݣ����û���������������
	public void save(User user);
	
	//ɾ��һ��studentʵ��
	public void delete(User user);
	
	//��������ɾ��һ��studentʵ��
	public void deleteById(Integer id);
	
	//���������õ�studentʵ��
	public User getById(Integer id);
	
	//����ѧ������ģ����ѯ�������ҳ
	public List<User> queryByName(String name,Pagination pagination);
	
	public List<User> queryByAddress(String address);
	
	public List<User> queryByCardId(String cardId);

	public void update(User user);
	
	public List<User> findAlL();
	
	public List<User> queryByNameandPassword(String name,String password);
	
	public User queryByName(String name);
	
	public List<User> query(String name,String cardid);
	
	
}
