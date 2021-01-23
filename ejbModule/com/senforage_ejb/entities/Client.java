package com.senforage_ejb.entities;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Entity
@NoArgsConstructor
@Data
public class Client implements Serializable{


	private static final long serialVersionUID = -8836990073301962903L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "nom",length = 50)
	@NonNull
	private String nomFamille;
	
	
	@Column(name = "adresse",length = 150)
	@NonNull
	private String adresse;
	
	@Column(name = "telephone",length = 150)
	@NonNull
	private String telephone;
	
	@ManyToOne
    @JoinColumn(name="village_id")
    private Village village;
}
