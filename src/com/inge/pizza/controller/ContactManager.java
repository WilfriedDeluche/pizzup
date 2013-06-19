package com.inge.pizza.controller;


import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

import com.inge.pizza.model.Contact;
import com.inge.pizza.model.Pizza;
import com.inge.pizza.util.HibernateUtil;


public class ContactManager extends HibernateUtil {

	public Contact add(Contact contact) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(contact);
		session.getTransaction().commit();
		return contact;
	}
	public Contact delete(Long id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Contact contact = (Contact) session.load(Contact.class, id);
		if(null != contact) {
			session.delete(contact);
		}
		session.getTransaction().commit();
		return contact;
	}

	public List<Contact> list() {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Contact> contacts = null;
		try {
			
			contacts = (List<Contact>)session.createQuery("from Contact").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return contacts;
	}
	
	public boolean isIdentifier(String emailId, String password){
		
		// on recupere la liste des contacts		
		List<Contact> contacts = list(); 
		
		// On parcours la liste et on teste les entrees du formulaire
		for (int i = 0; i < contacts.size(); i++) {
			if(emailId.equalsIgnoreCase(contacts.get(i).getEmailId()) & password.equalsIgnoreCase(contacts.get(i).getPassword())) {
				return true;
			}
		}
		
		
		return false;
	}
}
