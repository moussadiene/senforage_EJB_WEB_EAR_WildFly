package com.senforage_ejb.dao;

import java.util.List;

import javax.ejb.Local;

import com.senforage_ejb.entities.Client;

@Local
public interface IClientLocal {

	public int add(Client o);
	public Client get(int id);
	
	public List<Client> findAll();
}
