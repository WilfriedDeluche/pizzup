package com.inge.pizza.view;

import java.util.List;


import com.inge.pizza.controller.ContactManager;
import com.inge.pizza.model.Contact;
import com.opensymphony.xwork2.ActionSupport;


public class ContactAction extends ActionSupport {

	private static final long serialVersionUID = 9149826260758390091L;
	private Contact contact;
	private List<Contact> contactList;
	private Long id;

	private ContactManager linkController;

	public ContactAction() {
		System.out.println("ok");
		linkController = new ContactManager();
	}

	public String execute() {
		this.contactList = linkController.list();
		System.out.println("ok");
		return SUCCESS;
	}

	public String add() {
		System.out.println("toto");
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
}
