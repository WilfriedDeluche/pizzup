package com.inge.pizza.controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

import com.inge.pizza.model.Ingredient;
import com.inge.pizza.model.Pizza;
import com.inge.pizza.util.HibernateUtil;

public class IngredientManager {
	public Ingredient add(Ingredient ingredient) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(ingredient);
		session.getTransaction().commit();
		return ingredient;
	}
	public Ingredient delete(Long id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Ingredient ingredient = (Ingredient) session.load(Ingredient.class, id);
		if(null != ingredient) {
			session.delete(ingredient);
		}
		session.getTransaction().commit();
		return ingredient;
	}

	public List<Ingredient> list() {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Ingredient> ingredients = null;
		try {
			
			ingredients = (List<Ingredient>)session.createQuery("from Ingredient").list();
			
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		session.getTransaction().commit();
		return ingredients;
	}
	
	public List<Pizza> listPizza() {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Pizza> pizzas = null;
		try {

				
			pizzas = (List<Pizza>)session.createQuery("from Pizza as p" +
					 " join p.ingredient1Class" + //).list(); // +
					 " join p.ingredient2Class" +
					 " join p.ingredient3Class").list();
			
		} catch (HibernateException e) {
			System.out.println("bad");
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		System.out.println("ok");
		session.getTransaction().commit();
		return pizzas;
	}
}
