package com.senforage_ejb.dao;

import java.util.List;

import com.senforage_ejb.entities.Client;

public interface IClientRepository {

	public int add(Client o);
	public Client get(int id);
	public int update(Client o);
	public int delete(int id);
	public List<Client> findAll();
}
