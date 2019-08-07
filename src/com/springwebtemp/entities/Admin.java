package com.springwebtemp.entities;


import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
	@NamedQuery(query = "SELECT e FROM Admin e WHERE e.Email = :Email",name = "Admin.email"),
	@NamedQuery(query = "SELECT e FROM Admin e ",name = "Admin.all"),
	@NamedQuery(query = "SELECT e FROM Admin e WHERE e.Email = :Email AND e.password = :epass",name = "Admin.Vali")
	})


@Table(name="Admin")

public class Admin {
	
	
	    @Id
		private int Id;
		@Basic
		@Column
		private String Email;
		@Basic
		@Column
		private String firstName;
		@Basic
		@Column
		private String lastName;
		@Basic
		@Column
		private String password;
			
		
		
		
		public int getId() {
			return Id;
		}
		public void setId(int id) {
			Id = id;
		}
		public String getEmail() {
			return Email;
		}
		public void setEmail(String email) {
			Email = email;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String passowrd) {
			this.password = passowrd;
		}
		

		public Admin() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Admin(int id, String email, String firstName, String lastName, String password) {
			super();
			this.Id = id;
			this.Email = email;
			this.firstName = firstName;
			this.lastName = lastName;
			this.password = password;
		
			
		
		}
		@Override
		public String toString() {
			return "User [Id=" + Id + ", Email=" + Email + ", FirstName=" + firstName + ", LastName=" + lastName
					+ ", passowrd=" + password +  "]";
		}
		
		
		
		
	
	
	
	
	
	

}
