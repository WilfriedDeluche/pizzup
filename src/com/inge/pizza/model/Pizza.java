package com.inge.pizza.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Pizza")
public class Pizza {
	
	private Long id;
	private int ingredient1;
	private int ingredient2;
	private int ingredient3;
	private String name;
	private Ingredient ingredient1Class;
	private Ingredient ingredient2Class;
	private Ingredient ingredient3Class;
	private int basePrice;

	@Id
	@GeneratedValue
	@Column(name="id")
	public Long getId() {
		return id;
	}
	@Column(name="ingredient1")
	public int getIngredient1() {
		return ingredient1;
	}
	@Column(name="ingredient2")
	public int getIngredient2() {
		return ingredient2;
	}
	@Column(name="ingredient3")
	public int getIngredient3() {
		return ingredient3;
	}
	@Column(name="name")
	public String getName() {
		return name;
	}
	@ManyToOne
	@JoinColumn(name="ingredient1",referencedColumnName="id", insertable = false, updatable = false)
	public Ingredient getIngredient1Class() {
		return ingredient1Class;
	}

	@ManyToOne
	@JoinColumn(name="ingredient2",referencedColumnName="id", insertable = false, updatable = false)
	public Ingredient getIngredient2Class() {
		return ingredient2Class;
	}

	@ManyToOne
	@JoinColumn(name="ingredient3",referencedColumnName="id", insertable = false, updatable = false)
	public Ingredient getIngredient3Class() {
		return ingredient3Class;
	}
	@Column(name="basePrice")
	public int getBasePrice() {
		return basePrice;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setIngredient1(int ingredient1) {
		this.ingredient1 = ingredient1;
	}
	public void setIngredient2(int ingredient2) {
		this.ingredient2 = ingredient2;
	}
	public void setIngredient3(int ingredient3) {
		this.ingredient3 = ingredient3;
	}

	public void setIngredient1Class(Ingredient ingredient1Class) {
		this.ingredient1Class = ingredient1Class;
	}
	public void setIngredient2Class(Ingredient ingredient2Class) {
		this.ingredient2Class = ingredient2Class;
	}
	public void setIngredient3Class(Ingredient ingredient3Class) {
		this.ingredient3Class = ingredient3Class;
	}
	public void setBasePrice(int basePrice) {
		this.basePrice = basePrice;
	}
}
