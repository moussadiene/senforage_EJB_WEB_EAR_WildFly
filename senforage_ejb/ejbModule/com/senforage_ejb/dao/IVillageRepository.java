package com.senforage_ejb.dao;

import java.util.List;

import  com.senforage_ejb.entities.Village;

public interface IVillageRepository {

	public int add(Village o);
	public Village get(int id);
	public int update(Village o);
	public int delete(int id);
	public List<Village> findAll();
}
