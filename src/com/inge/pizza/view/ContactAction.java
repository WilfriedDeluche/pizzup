package com.inge.pizza.view;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.inge.pizza.controller.ContactManager;
import com.inge.pizza.controller.IngredientManager;
import com.inge.pizza.model.Contact;
import com.inge.pizza.model.Ingredient;
import com.inge.pizza.model.Pizza;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class ContactAction extends ActionSupport {

	private static final long serialVersionUID = 9149826260758390091L;
	private Contact contact;
	private List<Contact> contactList;
	private Long id;
	private List<Ingredient> ingredientList;
	
	private IngredientManager linkController2;
	
	public List<Ingredient> getIngredientList() {
		return ingredientList;
	}

	public void setIngredientList(List<Ingredient> ingredientList) {
		this.ingredientList = ingredientList;
	}

	private HashMap<String, String> ingredientsList;
	private List<Pizza> pizzaList;
	
	

	public HashMap<String, String> getIngredientsList() {
		return ingredientsList;
	}

	public void setIngredientsList(HashMap<String, String> ingredientsList) {
		this.ingredientsList = ingredientsList;
	}

	public List<Pizza> getPizzaList() {
		return pizzaList;
	}

	public void setPizzaList(List<Pizza> pizzaList) {
		this.pizzaList = pizzaList;
	}

	private boolean identificationUtilisateur;

	private ContactManager linkController;

	public ContactAction() {
		System.out.println("ok");
		linkController = new ContactManager();
		linkController2 = new IngredientManager();
	}

	public String execute() {
		this.contactList = linkController.list();
		this.pizzaList = linkController.listPizza();
		
		ingredientsList = new HashMap<String, String>();
		for(int i=0; i<ingredientList.size();i++){
			ingredientsList.put(String.valueOf(ingredientList.get(i).getId()), ingredientList.get(i).getName() + " - " + String.valueOf(ingredientList.get(i).getPrice()) + " �");
		}
		System.out.println("ok");
		return SUCCESS;
	}

	public String add() {
		System.out.println("contact créer");
		System.out.println(getContact());
		try {
			linkController.add(getContact());
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.contactList = linkController.list();
		return SUCCESS;
	}

	public String delete() {
		linkController.delete(getId());
		return SUCCESS;
	}

	public Contact getContact() {
		return contact;
	}

	public List<Contact> getContactList() {
		return contactList;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public void setContactList(List<Contact> contactsList) {
		this.contactList = contactsList;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String identifierUtilisateurs(){
		
		ActionContext.getContext().getParameters();
		
		//On recupere les donnees du formulaire
		String emailId = contact.getEmailId();
		String password = contact.getPassword();

		
		// On interroge le model
		identificationUtilisateur = linkController.isIdentifier(emailId, password);
		
		// Test metier si l'identification est OK
		if (identificationUtilisateur == true) {
			 
			// on recupere la session courante
			Map session = ActionContext.getContext().getSession();
			
			// on renseigne la session
			session.put("authentification","true");
			session.put("nomUtilisateur",contact.getEmailId());
			session.put("erreur", "noErreur");
			System.out.println("Vous etes loggue avec succes, enjoy :)");
 
			this.pizzaList = linkController.listPizza();
			this.ingredientList = linkController2.list();
			
			ingredientsList = new HashMap<String, String>();
			for(int i=0; i<ingredientList.size();i++){
				ingredientsList.put(String.valueOf(ingredientList.get(i).getId()), ingredientList.get(i).getName() + " - " + String.valueOf(ingredientList.get(i).getPrice()) + " �");
			}
			
			return SUCCESS;
		}
		return ERROR;	
	}
	
	public String deleteSession() {
		Map session = ActionContext.getContext().getSession();
        session = ActionContext.getContext().getSession();
        session.clear();
        return SUCCESS;
    }
	 
}
