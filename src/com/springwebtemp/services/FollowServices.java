package com.springwebtemp.services;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import com.springwebtemp.entities.Users;

public class FollowServices {

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
 
	
	
	
	
	
	
	
	
	
}
