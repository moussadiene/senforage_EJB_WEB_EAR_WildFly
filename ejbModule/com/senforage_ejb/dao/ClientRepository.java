package com.senforage_ejb.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.senforage_ejb.entities.Client;

public class ClientRepository implements IClientLocal, IClientRemote{

	@Override
	public int add(Client o) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Client get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Client> findAll() {
		// TODO Auto-generated method stub
		return null;
	}


}
