package com.senforage_ejb.dao;


import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.senforage_ejb.entities.User;

@Stateless
public class UserRepository implements IUserLocal, IUserRemote{

	@PersistenceContext(unitName = "senforage_ejb_UP")
	private EntityManager em;
	
	@Override
	public int add(User o) {
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
	public User get(int id) {
		User User = em.find(User.class, id);
		return User;
	}

	
	@Override
	public List<User> findAll() {
		Query query = em.createQuery("select u from User u");
		return  query.getResultList();
	}
	
	@Override
	public User getUserByLog(String email, String password) {
		
		try {
			String select = "SELECT u FROM User u WHERE u.email=:email and u.password=:password";
			Query query = em.createQuery(select);
			
			query.setParameter("email", email);
			query.setParameter("password", password);
			return (User) query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
		
	}

}
