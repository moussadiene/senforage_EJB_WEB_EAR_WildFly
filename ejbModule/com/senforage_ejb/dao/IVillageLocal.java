package com.senforage_ejb.dao;

import java.util.List;

import javax.ejb.Local;

import  com.senforage_ejb.entities.Village;

@Local
public interface IVillageLocal {

	public int add(Village o);
	public Village get(int id);
	
	public List<Village> findAll();
}
