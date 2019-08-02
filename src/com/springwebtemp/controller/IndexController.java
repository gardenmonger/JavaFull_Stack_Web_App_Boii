package com.springwebtemp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.springwebtemp.entities.Admin;
import com.springwebtemp.entities.Student;
import com.springwebtemp.entities.Users;
import com.springwebtemp.services.UserServices;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.User;




@SessionAttributes({"susers"})
@Controller
public class IndexController {
	/*   -----Session User------   */	
	@ModelAttribute("susers")
	public Users setUsers() {
		return new Users();
	}
	@RequestMapping(value= {"/","/index"})
	public ModelAndView showIndex(@ModelAttribute("susers") Users users) {
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("susers",users);
		return mav;
	}
	/*     -----LOGIN-------    */
	@RequestMapping("/getUser")
	public ModelAndView getUser(@SessionAttribute("susers") Users users, @RequestParam("FirstName") String FirstName, @RequestParam("password") String password) {
		boolean result = false;
		UserServices userServ = new UserServices();
		result = userServ.checkUser(password,FirstName);
		Users here = userServ.updateSesh(FirstName);
		String message = result?FirstName:"Not Here!!";
		ModelAndView mav = new ModelAndView();
		System.out.println(here);
		mav.addObject("susers", here);
//		mav.addObject("namex", users.getFirstName());///   here.getFirstName()   this is the one  I have to fix ... i needs it to get the first name from the data base....thru the UserServ class
		mav.addObject("message", message);
		System.out.println("Olduser:" + FirstName);
		System.out.println("user:" + password);
		if (result) 
		{
			mav.addObject("namex", users.getFirstName());
			mav.setViewName("welcome");// sets exactly which 'view' to use 
		}
		else
		{
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
		return new ModelAndView("calendertodo");
	}	
	/*-------My Feed--------*/
	@RequestMapping("/feed")
	public ModelAndView toMyfeed(@SessionAttribute("susers") Users users ) {

		//UserServices userServ = new UserServices();
		//Users here = userServ.updateSesh(susers.getFirstName());		
		ModelAndView mav = new ModelAndView();
		mav.addObject("namex", users.getFirstName());/// this is the one  I have to fix ... i needs it to get the first name from the data base....thru the UserServ class
		mav.setViewName("welcome");
		return mav;
	}
	/*---Goes Back To Calendar---*/
	@RequestMapping("/redirectCal")
	public ModelAndView redirectCalender(@SessionAttribute("susers") Users users, @RequestParam("todo") String todo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("eventdate", todo);
		mav.setViewName("calendertodo");
		return mav;
	}
	/*-------Forgot Password-----------*/
	@RequestMapping("/forgotpass")
	public ModelAndView forgotPassUser() {
		return new ModelAndView("forgotpass");
	}
	/*----Goes to the Blog page----*/
	@RequestMapping("/blog")
	public ModelAndView blogUser() {
		return new ModelAndView("blog");
	}
	
	

}

