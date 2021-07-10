package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.UserDao;
import com.poly.entity.Student;
import com.poly.entity.User;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
public class LoginController {
	
	@Autowired
	CookieService cookie;
	@Autowired
	SessionService session;
	@Autowired
	ParamService param;
	@Autowired
	UserDao dao;
	
	@GetMapping("login")
	public String login(Model model) {
		String user = cookie.getCookie("username");
		String pass = cookie.getCookie("password");
		
		model.addAttribute("username",user);
		model.addAttribute("password",pass);
		return "login";
	}
	
	@PostMapping("login")
	public String doLogin(Model model) {
		String username = param.getString("username", "");
		String pass = param.getString("password", "");
		boolean remember = param.getBoolean("remember", false);
		User user = null;
		try {
			user = dao.findById(username).orElse(new User());
		}
		catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		if(user.getUsername()==null) {
			model.addAttribute("message", "username is not exist");
			return "login";
		}
		else {
			if(!pass.equals(user.getPassword())) {
				model.addAttribute("message", "wrong pass");
				return "login";
			}
			else {
				int day = remember?1:0;
				cookie.creatCookie("username", username, day);
				cookie.creatCookie("password", pass, day);
				session.set("username"	, username); 
				model.addAttribute("student", new Student());
				return "student";
			}
		}	
	}
}
