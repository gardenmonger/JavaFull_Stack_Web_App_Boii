package com.springwebtemp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.springwebtemp.Daoi.UserServDaoi;
import com.springwebtemp.entities.Admin;
import com.springwebtemp.entities.Student;
import com.springwebtemp.entities.Users;
import com.springwebtemp.services.UserServices;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.User;

@SessionAttributes({ "susers" })
@Controller
public class IndexController {
	/* -----Session User------ */
//	@ModelAttribute("susers")
//	public Users setUsers() {
//		return new Users();
//	}

	@RequestMapping(value = { "/", "/index" })
	public ModelAndView showIndex() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	/* -----LOGIN------- */
	@RequestMapping("/getUser")
	public ModelAndView getUser(
//			@ModelAttribute("susers") Users users, 

			@RequestParam("FirstName") String FirstName, @RequestParam("password") String password) {
		boolean result = false;
		UserServices userServ = new UserServices();
		Users returnUser = userServ.checkUser(password, FirstName);

		Users here = userServ.updateSesh(FirstName);
		String message = result ? FirstName : "Not Here!!";
		ModelAndView mav = new ModelAndView();
		System.out.println(here);
//		mav.addObject("susers", users);
//		mav.addObject("namex", users.getFirstName());///   here.getFirstName()   this is the one  I have to fix ... i needs it to get the first name from the data base....thru the UserServ class
		mav.addObject("message", message);
		System.out.println("Olduser:" + FirstName);
		System.out.println("userPass:" + password);
		if (returnUser != null) // if the returned user is not null -- Gary's solution
		{
			mav.addObject("susers", returnUser);
			mav.addObject("namex", returnUser.getFirstName());
			mav.setViewName("welcome");// sets exactly which 'view' to use
		} else {
			mav.setViewName("index");
		}

		return mav;
	}

	/* -------Register-------- */
	@RequestMapping("/signup")
	public ModelAndView registerUser() {
		return new ModelAndView("registration");
	}

	/*--------Calendar------*/
	@RequestMapping("/todo")
	public ModelAndView calenderTodo(@SessionAttribute("susers") Users users) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("susers", users);
		return new ModelAndView("calendertodo");
	}

	/*-------My Feed--------*/
	@RequestMapping("/feed")
	public ModelAndView toMyfeed(@SessionAttribute("susers") Users users) {

		// UserServices userServ = new UserServices();
		// Users here = userServ.updateSesh(susers.getFirstName());
		ModelAndView mav = new ModelAndView();
		mav.addObject("namex", users.getFirstName());/// this is the one I have to fix ... i needs it to get the first
														/// name from the data base....thru the UserServ class
		mav.setViewName("welcome");
		return mav;
	}

	/*---Goes Back To Calendar---*/
	@RequestMapping("/redirectCal")
	public ModelAndView redirectCalender(@RequestParam("todo") String todo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("eventdate", todo);
		mav.setViewName("calendertodo");
		return mav;
	}

	/*--this grabs the input message--*/
	@RequestMapping("/send")
	public ModelAndView messageUser(@SessionAttribute("susers") Users users,
			@RequestParam("textfield") String message) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", message);
		mav.setViewName("messages");
		return mav;
	}

	/*-------Forgot Password-----------*/
	@RequestMapping("/forgotpass")
	public ModelAndView forgotPassUser() {
		return new ModelAndView("forgotpass");
	}

	/*----Goes to the Blog page----*/
	@RequestMapping("/blog")
	public ModelAndView blogUser(@SessionAttribute("susers") Users users) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("susers", users);
		return new ModelAndView("blog");
	}

	/*-----This is to update the current user------*/

	/*----This Is the Register Page-----*/
	@RequestMapping("/justregister")
	public ModelAndView justRegisteredUser(
			@RequestParam("firstName") String firstName, 
			@RequestParam("lastName") String lastName,
			@RequestParam("Email") String Email, 
			@RequestParam("pswd") String pswd,
			@RequestParam("pswd2") String pswd2) {

		UserServices userServ = new UserServices();
		Users users = new Users();
		boolean addUsers;
		users.setId(100);
		users.setFirstName(firstName);
		users.setLastName(lastName);
		users.setEmail(Email);

		ModelAndView mav = new ModelAndView();
		mav.addObject("firstName", firstName);
		mav.addObject("lastName", lastName);
		mav.addObject("Email", Email);
		mav.addObject("pswd", pswd);
		mav.addObject("pswd2", pswd2);

		if (pswd.equals(pswd2)) {
			System.out.println("Its A Match");
			users.setPassword(pswd);


			mav.addObject("susers", users);	
			
			mav.addObject("namex", users.getFirstName());
			userServ.addUser(users);
			mav.setViewName("welcome");
		} else {
			System.out.println("Dose not Match ~('3')~");
			mav.setViewName("index");
		}
		
		//the ID need a default value in oder for it to work

//		boolean addUsers = userServ.addUser(users) != null ;
		return mav;
	}

	@RequestMapping("/addfriend")
	public ModelAndView addafriendUser() {
		ModelAndView mav = new ModelAndView();
		
		return new ModelAndView("addbyqrcode");
	}

	/*--This is the study zone page---*/
	@RequestMapping("/study")
	public ModelAndView studyzoneUser() {
		ModelAndView mav = new ModelAndView();

		return new ModelAndView("studyzone");

	}

	/*---Messages page----*/
	@RequestMapping("/message")
	public ModelAndView messageUser(@SessionAttribute("susers") Users users) {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("messages");
		return mav;
	}

	/*--Starting with a drop down list--*/
	@RequestMapping("/profile")
	public ModelAndView profileUser(@SessionAttribute("susers") Users users) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("namex", users.getFirstName());
		mav.setViewName("profile");
		return mav;
	}

	/*---this is the settings part----*/
	@RequestMapping("/settings")
	public ModelAndView settingsUser(@SessionAttribute("susers") Users users) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("namex", users.getFirstName());
		mav.setViewName("settings");
		return mav;
	}

	/*--the part for the delete user--*/
	@RequestMapping("/removeUsers")
	public ModelAndView delUser(@SessionAttribute("susers") Users users) {
		UserServices userServ = new UserServices();

		ModelAndView mav = new ModelAndView();
		mav.addObject("namex", users.getFirstName());
		mav.setViewName("index");
		if (users.getFirstName().equals(users.getFirstName())) {
			// find the user
			Users foundU = userServ.getUser(users);
			System.out.println(foundU);

			boolean del = userServ.delUsers(foundU);
		}
		return mav;
	}

	/*--the part for the update user--*/

	/*--this is the logout part--*/
	@RequestMapping("/logout")
	public ModelAndView logoutUser(HttpServletRequest request, SessionStatus status) {

		HttpSession session = request.getSession(false);

		if (session != null) {
			session.invalidate();

		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("susers", null);
		mav.setViewName("index");
		return mav;
	}
	
	
	
	/*---searches for other users at the index---*/
	@RequestMapping("/index")
	public ModelAndView searchUser(@RequestParam("searchname") String searchword) {

		ModelAndView mav = new ModelAndView();
		mav.addObject("", searchword);

		return mav;
	}

}
