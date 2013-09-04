package com.online.ticket.dao;

import java.util.List;

import com.online.ticket.bean.User;
import com.online.ticket.comm.Pagination;

public interface UserDAO {
	//保存student,如果有主键，更新数据；如果没有主键，添加数据
	public void save(User user);
	
	//删除一个student实例
	public void delete(User user);
	
	//根据主键删除一个student实例
	public void deleteById(Integer id);
	
	//根据主键得到student实例
	public User getById(Integer id);
	
	//根据学生姓名模糊查询，结果分页
	public List<User> queryByName(String name,Pagination pagination);
	
	public List<User> queryByAddress(String address);
	
	public List<User> queryByCardId(String cardId);

	public void update(User user);
	
	public List<User> findAlL();
	
	public List<User> queryByNameandPassword(String name,String password);
	
	public User queryByName(String name);
	
	public List<User> query(String name,String cardid);
	
	
}
