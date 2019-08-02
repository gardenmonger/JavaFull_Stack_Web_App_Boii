package com.springwebtemp.services;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;


import com.springwebtemp.entities.Users;

public class UserServices {


/*      create a bunch of methods HERE!! then compare with in the controller logic       */
	public String getAUser(Users sEmail) {
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
        
		Users foundStudent = entitymanager.find(Users.class, sEmail.getId());
        
            entitymanager.close();
        
        return foundStudent.getFirstName();

        
    }
	
	
	
	
	
	
	
	
	
	
	
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public Users getAUserInt(String sEmail) {
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
        
		Users foundStudent = entitymanager.find(Users.class, sEmail);
        
            entitymanager.close();
        
        return foundStudent;

        
    }
  
	
	
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
	
	
	public boolean checkUser(String password, String email) {
		boolean result = false;
		
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
		
		try 
		{
			Query query = entitymanager.createNamedQuery("User.email");// For Different Type of users
			query.setParameter("Email", email);
//			query.setParameter("epass", password);
			Users match = (Users) query.getSingleResult();
	
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

		return result;
		
	}


	public boolean checkUser2(String password, String email) {// pass in the user object 
		boolean result = false;
//		String checkUserspass = users.getPassword();
//		String checkUsersemail = users.getEmail();
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
		
		try 
		{
			Query query = entitymanager.createNamedQuery("Users.Vali");// For Different Type of users
		
			Users match = (Users) query.getSingleResult();
	
			if (match != null && match.getPassword().equals(password) && match.getEmail().equals(email)) 
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

		return result;
		
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


	