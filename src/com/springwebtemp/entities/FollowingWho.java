package com.springwebtemp.entities;

import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Followers")

public class FollowingWho {
	
	
	@Id
	private int pkId;
	@Basic
	@Column
	private int following;
	@Basic
	@Column
	private int follower;
	@ManyToOne(targetEntity = Users.class)
	List<Users> follow;
	
	
	public int getFollowing() {
		return following;
	}
	public void setFollowing(int following) {
		this.following = following;
	}
	public int getFollower() {
		return follower;
	}
	public void setFollower(int follower) {
		this.follower = follower;
	}
	public FollowingWho() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FollowingWho(int following, int follower) {
		super();
		this.following = following;
		this.follower = follower;
	}
	
	
	

}
