package com.springwebtemp.entities;






import java.sql.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import com.springwebtemp.entities.Users;



import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@NamedQueries({
	@NamedQuery(query = "SELECT e FROM Messages e WHERE e.id = :id",name = "Messages.id"),
	
	})


@Table(name="Messages")
public class Messages {

//	@ManyToOne
	
	

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	@Basic
	@Column(unique = true)
	
	private String message;
	
	private Users userid;
	@Basic
	@Column
	@NotNull
	private Date date;
	
	
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public Users getUserid() {
		return userid;
	}


	public void setUserid(Users userid) {
		this.userid = userid;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	
	public Messages(int id, String message, Users userid, Date date) {
		super();
		this.id = id;
		this.message = message;
		this.userid = userid;
		this.date = date;
	}


	public Messages() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Messages [id=" + id + ", message=" + message + ", userid=" + userid + ", date=" + date + "]";
	}
	
	
	
	
	
	
}
