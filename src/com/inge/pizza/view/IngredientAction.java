package com.inge.pizza.view;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import com.inge.pizza.controller.IngredientManager;
import com.inge.pizza.controller.PizzaManager;
import com.inge.pizza.model.Ingredient;
import com.inge.pizza.model.Pizza;
import com.opensymphony.xwork2.ActionSupport;


public class IngredientAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 9149826260758390091L;
	private Ingredient ingredient;
	private List<Ingredient> ingredientList;
	private HashMap<String, String> ingredientsList;
	private Long id;
	private List<Pizza> pizzaList;

	private IngredientManager linkController;

	public IngredientAction() {
		linkController = new IngredientManager();
	}

	public String execute() {
		this.ingredientList = linkController.list();
		this.pizzaList = linkController.listPizza();
		
		ingredientsList = new HashMap<String, String>();
		for(int i=0; i<ingredientList.size();i++){
			ingredientsList.put(String.valueOf(ingredientList.get(i).getId()), ingredientList.get(i).getName() + " - " + String.valueOf(ingredientList.get(i).getPrice()) + " �");
		}
		return SUCCESS;
	}
	
	public String populate(){	
		this.ingredientList = linkController.list();
		this.pizzaList = linkController.listPizza();
		ingredientsList = new HashMap<String, String>();
		for(int i=0; i<ingredientList.size();i++){
			ingredientsList.put(String.valueOf(ingredientList.get(i).getId()), ingredientList.get(i).getName() + " - " + String.valueOf(ingredientList.get(i).getPrice()) + " �");
		}
		return "populate";
	}

	public String add() {
		System.out.println(getIngredient());
		try {
			linkController.add(getIngredient());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.ingredientList = linkController.list();
		return SUCCESS;
	}

	public String delete() {
		linkController.delete(getId());
		return SUCCESS;
	}
	
	public String display() {
		return NONE;
	}

	public Ingredient getIngredient() {
		return ingredient;
	}

	public List<Ingredient> getIngredientList() {
		return ingredientList;
	}

	public List<Pizza> getPizzaList() {
		return pizzaList;
	}
	
	public void setIngredient(Ingredient ingredient) {
		this.ingredient = ingredient;
	}

	public void setIngredientList(List<Ingredient> ingredientList) {
		this.ingredientList = ingredientList;
	}
	
	public void setPizzaList(List<Pizza> pizzaList) {
		this.pizzaList = pizzaList;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public HashMap<String, String> getIngredientsList() {
		return ingredientsList;
	}


	public void setIngredientsList(HashMap<String, String> ingredientsList) {
		this.ingredientsList = ingredientsList;
	}
}
