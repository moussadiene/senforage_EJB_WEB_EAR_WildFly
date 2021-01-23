package com.senforage_ejb.dao;

import java.util.List;

import javax.ejb.Local;

import com.senforage_ejb.entities.User;

@Local
public interface IUserLocal {

	public int add(User o);
	public User get(int id);
	
	public List<User> findAll();
	public User getUserByLog(String email, String password);
}
