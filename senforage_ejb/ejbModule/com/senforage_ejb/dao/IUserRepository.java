package com.senforage_ejb.dao;

import java.util.List;

import com.senforage_ejb.entities.User;

public interface IUserRepository {

	public int add(User o);
	public User get(int id);
	public int update(User o);
	public int delete(int id);
	public List<User> findAll();
}
