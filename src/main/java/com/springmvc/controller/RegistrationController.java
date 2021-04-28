package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class RegistrationController {
  @Autowired
  public UserService userService;

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public String showRegister() {
    
	  

    return "register";
  }

  @RequestMapping(path = "/registerProcess", method = RequestMethod.POST)
  public String addUser(@ModelAttribute("user") User user, Model model) {
	  
	  
    userService.register(user);
    model.addAttribute("firstname", user.getFirstname());

    return "welcome";
  }
  
  @ExceptionHandler(value=DataIntegrityViolationException.class)
  public String exceptionHandler(Model m) {
	  
	  m.addAttribute("message", "Already Registered User");
	  
	  return "register";
  }
}
