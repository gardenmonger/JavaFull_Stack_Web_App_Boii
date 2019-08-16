package com.springwebtemp.entities;

import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@NamedQueries({
	@NamedQuery(query = "SELECT e FROM Users e WHERE e.Email = :Email",name = "User.email"),
	@NamedQuery(query = "SELECT e FROM Users e ",name = "Users.all"),
	@NamedQuery(query = "SELECT e FROM Users e WHERE e.firstName = :FirstName",name = "User.FirstName"),
	@NamedQuery(query = "SELECT e FROM Users e WHERE e.Email = :Email AND e.password = :epass",name = "Users.Vali")
	})


@Table(name="Users")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int Id;
	@Basic
	@Column(unique = true)
	@NotNull
	private String Email;
	@Basic
	@Column
	@NotNull
	@Size
	private String firstName;
	@Basic
	@Column
	@NotNull
	private String LastName;
	@Basic
	@Column
	@NotNull
	@Size
	private String password;
	@ManyToMany(targetEntity = FollowingWho.class)
	List<FollowingWho> follow;
	
	@OneToMany(targetEntity = Messages.class)
	List<Messages> chat;
	
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
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String passowrd) {
		this.password = passowrd;
	}
	

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Users(int id, String email, String firstName, String lastName, String password) {
		super();
		this.Id = id;
		this.Email = email;
		this.firstName = firstName;
		this.LastName = lastName;
		this.password = password;
	
		
	
	}
	@Override
	public String toString() {
		return "User [Id=" + Id + ", Email=" + Email + ", FirstName=" + firstName + ", LastName=" + LastName
				+ ", passowrd=" + password  +  "]";
	}
	
	
	
	
	
	
	
	
}
