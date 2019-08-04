package com.springwebtemp.Daoi;

import com.springwebtemp.entities.Users;

public interface UserServDaoi {

	Users findUsers(Users users);

	Users updateSesh(String sEmail);

	boolean addUser(Users users);

}
