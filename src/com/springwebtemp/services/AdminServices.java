package com.springwebtemp.services;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

import com.springwebtemp.entities.Admin;
import com.springwebtemp.entities.Users;

public class AdminServices {
	
	
	

/*      create a bunch of methods HERE!! then compare with in the controller logic       */
	public Admin getAdminByEmail(String sEmail) {
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
        
		Admin foundAdmin = entitymanager.find(Admin.class, sEmail);
        
//        if (foundStudent !=null) {
            entitymanager.close();
//            return foundStudent;
//        }
        
        return foundAdmin;

        
    }





	public Admin getAdminByfirstName(String firstName) {
		Admin foundAdmin = new Admin();
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		try {
			foundAdmin = entityManager.find(Admin.class, firstName);
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
		entityManager.close();
		entityManagerFactory.close();
		return foundAdmin;
	}

	public boolean checkAdmin(String password, String email) {
		boolean result = false;
		
		EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("SpringWebTemplate");
		EntityManager entitymanager = entitymanagerfactory.createEntityManager();
		
		try 
		{
			Query query = entitymanager.createNamedQuery("Admin.email");// For Different Type of users

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

	
	
	

}
