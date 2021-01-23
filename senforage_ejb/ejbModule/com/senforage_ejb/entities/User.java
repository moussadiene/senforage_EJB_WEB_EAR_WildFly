package com.senforage_ejb.entities;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Entity
@NoArgsConstructor
@Data
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nom",length = 50)
	@NonNull
	private String nom;
	
	@Column(name = "prenom",length = 150)
	@NonNull
	private String prenom;
	
	@Column(name = "email",length = 150)
	@NonNull
	private String email;
	
	@Column(name = "password",length = 150)
	@NonNull
	private String password;
	
	@Column(name = "etat",length = 11)
	private int etat;

}
