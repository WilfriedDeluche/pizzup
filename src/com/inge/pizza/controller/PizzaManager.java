package com.inge.pizza.controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

import com.inge.pizza.model.Contact;
import com.inge.pizza.model.Ingredient;
import com.inge.pizza.model.Pizza;
import com.inge.pizza.util.HibernateUtil;

public class PizzaManager {
	
	public Pizza add(Pizza pizza) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(pizza);
		session.getTransaction().commit();
		return pizza;
	}
	
	public Pizza delete(Long id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Pizza pizza = (Pizza) session.load(Pizza.class, id);
		if(null != pizza) {
			session.delete(pizza);
		}
		session.getTransaction().commit();
		return pizza;
	}
	
	

	public List<Pizza> list() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Pizza> pizzas = null;
		try {				
			pizzas = (List<Pizza>)session.createQuery("from Pizza as p" +
					 " join p.ingredient1Class" + //).list(); // +
					 " join p.ingredient2Class" +
					 " join p.ingredient3Class").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		System.out.println("ok");
		session.getTransaction().commit();
		return pizzas;
	}
	
	public void deletePanier() {
		
		// on recupere la liste des contacts
		
						
			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
			session.beginTransaction();
			session.delete("from Pizza");
			session.getTransaction().commit();
	}
}
