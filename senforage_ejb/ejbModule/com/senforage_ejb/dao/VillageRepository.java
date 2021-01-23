package com.senforage_ejb.dao;


import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.senforage_ejb.entities.Village;

@Stateless
public class VillageRepository implements IVillageLocal, IVillageRemote{

	@PersistenceContext(unitName = "senforage_ejb_UP")
	private EntityManager em;
	
	@Override
	public int add(Village o) {
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
	public Village get(int id) {
		Village village = em.find(Village.class, id);
		return village;
	}

	
	@Override
	public List<Village> findAll() {
		Query query = em.createQuery("select v from Village v");
		return  query.getResultList();
	}

	

}
