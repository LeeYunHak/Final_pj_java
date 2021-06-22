package com.myapp.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userMainBefore")
public class UserController {
	
	@Autowired
	UserService userService;
	
	//회원가입 입력창
	@GetMapping("/joinUser")
	public String showJoinUser() {
		return "joinUserPage";
	}
	@PostMapping("/joinUser")
	public String joinUser(Model model, User user) {
		User joinUser = userService.joinUserInsert(user);
		
		model.addAttribute("joinUser",joinUser);
		
		return "userMain";
	}
	
}
