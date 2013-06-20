package com.inge.pizza.view;

import java.util.List;


import com.inge.pizza.controller.PizzaManager;
import com.inge.pizza.model.Ingredient;
import com.inge.pizza.model.Pizza;
import com.opensymphony.xwork2.ActionSupport;


public class PizzaAction extends ActionSupport {

	private static final long serialVersionUID = 9149826260758390091L;
	private Pizza pizza;
	private List<Pizza> pizzaList;
	private Long id;

	private PizzaManager linkController;

	public PizzaAction() {
		linkController = new PizzaManager();
	}

	public String execute() {
		this.pizzaList = linkController.list();
		return SUCCESS;
	}

	public String add() {
		System.out.println("ajoutDePizza");
		System.out.println(getPizza());
		System.out.println("ajoutDePizza");
		
		try {
			linkController.add(getPizza());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.pizzaList = linkController.list();
		return SUCCESS;
	}

	public String delete() {
		linkController.delete(getId());
		return SUCCESS;
	}

	public Pizza getPizza() {
		return pizza;
	}

	public List<Pizza> getPizzaList() {
		return pizzaList;
	}
	

	public void setPizza(Pizza pizza) {
		this.pizza = pizza;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String viderPanier() {
		linkController.deletePanier();
		return SUCCESS;
	}
}
