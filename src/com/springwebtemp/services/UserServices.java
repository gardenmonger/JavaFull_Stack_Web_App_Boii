package com.springwebtemp.services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import com.springwebtemp.Daoi.UserServDaoi;
import com.springwebtemp.entities.Admin;
import com.springwebtemp.entities.Users;

public class UserServices implements UserServDaoi {


/*      create a bunch of methods HERE!! then compare with in the controller logic       */
//	public String getAUser(Users sEmail) {
//		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
//		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
//        
//		Users foundStudent = entitymanager.find(Users.class, sEmail.getId());
//        
//            entitymanager.close();
//        
//        return foundStudent.getFirstName();
//
//        
//    }
	
	
	
	
	
	
	
	
	
	/*--This finds the user--*/
//  @Override
	public Users findUsers(Users users) {
		Users foundUsers = null;
		
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();

		try
		{
			foundUsers = entitymanager.find(Users.class, users.getId());
		}
		catch(PersistenceException e)
		{
			e.getMessage();
		}
		finally
		{
			entitymanager.close();
			entitymanagerfactory.close();
		}

		return foundUsers;
	}
	
	/*--This helps with grabbing the current user name --*/
//	@Override
	public Users updateSesh(String sEmail) {
		
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
        String message = new String("Nope");
		try 
		{
			Query query = entitymanager.createNamedQuery("User.email");
			query.setParameter("Email", sEmail);
			Users match = (Users) query.getSingleResult();
			if (match!=null) {
				return match;
			}

		}
		catch (Exception e) 
		{
			e.getStackTrace();
			System.out.println("THIS DOES NOT WORK ~('-')~ ");
		}

		return null;
	}
	
	
	/*------------Check user that Login-------------------*/
	public Users checkUser(String password, String email) {
		boolean result = false;
		Users match = null;
		
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
		
		try 
		{
			Query query = entitymanager.createNamedQuery("User.email");// For Different Type of users
			query.setParameter("Email", email);
//			query.setParameter("epass", password);
			match = (Users) query.getSingleResult();
			if (match != null && match.getPassword().equals(password)) 
			{
				result = true;
			}
			else 
			{
				result = false;
			}	
		}
		catch (Exception e) 
		{
			e.getStackTrace();
			System.out.println("This person DOES NOT EXIST!...... BUT IT WORKS ~('-')~ ");
		}
		return match;
	}
	/*--This is backup for the check Admin login --*/
	public Admin checkAdmin(String password, String email) {// pass in the user object 
		boolean result = false;
		Admin matchAdmin = null;
		
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
		
		try 
		{
			Query query = entitymanager.createNamedQuery("Admin.Vali");// For Different Type of users
			query.setParameter("Email", email);
		    matchAdmin = (Admin) query.getSingleResult();
			if (matchAdmin != null && matchAdmin.getPassword().equals(password)) 
			{
				result = true;
			}
			else 
			{
				result = false;
			}	
		}
		catch (Exception e) 
		{
			e.getStackTrace();
			System.out.println("This person DOES NOT EXIST!...... BUT IT WORKS ~('-')~ ");
		}
		return matchAdmin;
	}

	/*---This Right Here adds the newly registered User ------*/
//	@Override
	public boolean addUser(Users users) {
		boolean result = true;
		Users addU = null;

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		
		
		if (result&& users!=null) {
			
		try
		{
			entityManager.getTransaction().begin();
			entityManager.persist(users);
			entityManager.getTransaction().commit();
		}
		catch(PersistenceException e)
		{
			e.getMessage();
			result = false;
		}
		finally
		{
			entityManager.close();
			entityManagerFactory.close();
		}
		
		
		}
		
		
		

		return result;
		
	}
	
	
	
	/*---this is to delete the user----*/
	
//	@Override
	public boolean delUsers(Users users) {
		boolean result = true;
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
		try {
			entitymanager.getTransaction().begin();
			Users delD = entitymanager.find(Users.class,users.getId());
			entitymanager.remove(delD);
			entitymanager.getTransaction().commit();
			//		entitymanager.close();
			//		entitymanagerfactory.close();
		}
		catch(PersistenceException e) {
			e.getMessage();
			System.out.println("Here is where it breakes");
			result = false;
		}
		finally {
			entitymanager.close();
			entitymanagerfactory.close();
		}
		return result;
	}


	public Users getUser(Users users) {
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
        
        Users foundStudent = entitymanager.find(Users.class, users.getId());
        
//        if (foundStudent !=null) {
            entitymanager.close();
//            return foundStudent;
//        }
        
        return foundStudent;

        
    }
	
	
	
	
	
	
	
	
	
	
}
	
	
	
	
		
		
		
		
		
		
	
	/*
	 * First Return user object
	 * 
	 * 
	 * 
	 * 1. Get Login Email
	 * 
	 * 
	 * 2. Get Login Password
	 * 
	 * 3. compare 
	 *
	 * 
	 * */


	