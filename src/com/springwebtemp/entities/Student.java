package com.springwebtemp.entities;




import javax.persistence.*;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
	@NamedQuery(query = "SELECT e FROM Student e WHERE e.Email = :Email",name = "Student.email"),
	@NamedQuery(query = "SELECT e FROM Student e ",name = "Student.all"),
	@NamedQuery(query = "SELECT e FROM Student e WHERE e.Email = :Email AND e.password = :epass",name = "Student.Vali")
	})


@Table(name="Student")



public class Student {

	

		@Id
		private int Id;
		@Basic
		@Column
		private String Email;
		@Basic
		@Column
		private String FirstName;
		@Basic
		@Column
		private String LastName;
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
			return FirstName;
		}
		public void setFirstName(String firstName) {
			FirstName = firstName;
		}
		public String getLastName() {
			return LastName;
		}
		public void setLastName(String lastName) {
			LastName = lastName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		
		public Student() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Student(int id, String email, String firstName, String lastName, String password) {
			super();
			this.Id = id;
			this.Email = email;
			this.FirstName = firstName;
			this.LastName = lastName;
			this.password = password;
			
		
		}
		@Override
		public String toString() {
			return "User [Id=" + Id + ", Email=" + Email + ", FirstName=" + FirstName + ", LastName=" + LastName
					+ ", passowrd=" + password + ", HomeCity=" +  "]";
		}
		
		
		
		
		
		
		
		
		
	}
