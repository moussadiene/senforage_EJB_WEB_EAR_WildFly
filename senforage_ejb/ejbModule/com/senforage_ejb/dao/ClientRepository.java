package com.senforage_ejb.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.senforage_ejb.entities.Client;

@Stateless
public class ClientRepository implements IClientLocal, IClientRemote{

	@PersistenceContext(unitName = "senforage_ejb_UP")
	private EntityManager em;
	
	@Override
	public int add(Client o) {
		try {
			em.getTransaction().begin();
			em.persist(o);
			em.getTransaction().commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Client get(int id) {
		Client client = em.find(Client.class, id);
		return client;
	}

	@Override
	public List<Client> findAll() {
		Query query = em.createQuery("select c from Client c");
		return  query.getResultList();
	}


}
